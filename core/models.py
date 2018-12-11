from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    pass


class Book(models.Model):
    owner = models.ForeignKey(to=User, on_delete=models.CASCADE, related_name="books")
    title = models.CharField(max_length=255)
    authors = models.CharField(max_length=255, null=True, blank=True)
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

    def __str__(self):
        return self.title


class BookNote(models.Model):
    book = models.ForeignKey(to=Book, on_delete=models.CASCADE, related_name="notes")
    body = models.TextField()
    page_number = models.PositiveIntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

