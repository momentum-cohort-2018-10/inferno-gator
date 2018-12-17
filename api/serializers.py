from rest_framework import serializers
from core.models import Book, BookNote, User, Author, Follow


class CreatableSlugRelatedField(serializers.SlugRelatedField):
    def to_internal_value(self, data):
        try:
            value, _ = self.get_queryset().get_or_create(
                **{self.slug_field: data})
            return value
        except (TypeError, ValueError):
            self.fail("invalid")


# An example of a more "concrete" version of this:
# class AuthorSlugRelatedField(serializers.SlugRelatedField):
#     def to_internal_value(self, name):
#         value, _ = Author.objects.all().get_or_create(name=name)
#         return value


class BookNoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookNote
        fields = ("id", "body", "page_number", "created_at")


class BookSerializer(serializers.ModelSerializer):
    notes = BookNoteSerializer(many=True, required=False)
    owner = serializers.SlugRelatedField(slug_field="username", read_only=True)
    authors = CreatableSlugRelatedField(
        slug_field="name", many=True, queryset=Author.objects.all())
    status_text = serializers.CharField(
        source='get_status_display', required=False)

    class Meta:
        model = Book
        fields = ("id", "title", "authors", "author_string", "status",
                  'status_text', "owner", "notes")


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ("username", )


class FollowSerializer(serializers.ModelSerializer):
    followed_user = serializers.SlugRelatedField(
        slug_field="username", queryset=User.objects.all())

    class Meta:
        model = Follow
        fields = ("followed_user", )
