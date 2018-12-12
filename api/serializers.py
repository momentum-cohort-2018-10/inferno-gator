from rest_framework import serializers
from core.models import Book, BookNote


class BookNoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookNote
        fields = ("id", "body", "page_number", "created_at")


class BookSerializer(serializers.ModelSerializer):
    notes = BookNoteSerializer(many=True)
    owner = serializers.StringRelatedField()

    class Meta:
        model = Book
        fields = ("id", "title", "authors", "status", "owner", "notes")

