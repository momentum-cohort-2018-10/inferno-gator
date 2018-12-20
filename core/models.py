from django.db import models
from django.contrib.auth.models import AbstractUser
from django.core.mail import send_mail, EmailMultiAlternatives


# Create your models here.
class User(AbstractUser):
    users_followed = models.ManyToManyField(
        to="User",
        through="Follow",
        through_fields=("following_user", "followed_user"),
        related_name="followers",
    )


class Follow(models.Model):
    following_user = models.ForeignKey(
        to=User, on_delete=models.CASCADE, related_name="follows_from")
    followed_user = models.ForeignKey(
        to=User, on_delete=models.CASCADE, related_name="follows_to")
    created_at = models.DateTimeField(auto_now_add=True, null=True)

    def save(self, *args, **kwargs):
        retval = super().save(*args, **kwargs)
        print(self.followed_user.email)
        send_mail(
            'You have a new follower!', f"""
You have a new follower! { self.following_user.username } just followed you.
            """, 'noreply@example.org', [self.followed_user.email])
        print("hi")
        return retval


class Author(models.Model):
    name = models.CharField(max_length=255, unique=True)

    def __str__(self):
        return self.name


class Book(models.Model):
    owner = models.ForeignKey(
        to=User, on_delete=models.CASCADE, related_name="books")
    title = models.CharField(max_length=255)
    authors = models.ManyToManyField(Author, related_name="books")
    status = models.CharField(
        max_length=20,
        choices=(
            ("want_to_read", "Want to Read"),
            ("reading", "Currently Reading"),
            ("read", "Have Read"),
        ),
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def author_string(self):
        return ", ".join(str(a) for a in self.authors.all())

    def __str__(self):
        return self.title


class BookNote(models.Model):
    book = models.ForeignKey(
        to=Book, on_delete=models.CASCADE, related_name="notes")
    body = models.TextField()
    page_number = models.PositiveIntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
