from rest_framework import serializers
from core.models import Book, BookNote, User, Author


class CreatableSlugRelatedField(serializers.SlugRelatedField):
    def to_internal_value(self, data):
        try:
            value, _ = self.get_queryset().get_or_create(**{self.slug_field: data})
            return value
        except (TypeError, ValueError):
            self.fail("invalid")


class BookNoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookNote
        fields = ("id", "body", "page_number", "created_at")


class BookSerializer(serializers.ModelSerializer):
    notes = BookNoteSerializer(many=True, required=False)
    owner = serializers.SlugRelatedField(slug_field="username", read_only=True)
    authors = CreatableSlugRelatedField(
        slug_field="name", many=True, queryset=Author.objects.all()
    )

    class Meta:
        model = Book
        fields = ("id", "title", "authors", "status", "owner", "notes")

