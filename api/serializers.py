from rest_framework import serializers
from core.models import Book, BookNote, User, Author, Follow


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = (
            "id",
            "username",
        )


class NestedAuthorSerializer(serializers.ModelSerializer):
    """
    Use this serializer when nesting authors under books. It removes the uniqueness
    constraint so that we can use existing authors when making books.
    """
    name = serializers.CharField()

    class Meta:
        model = Author
        fields = (
            'id',
            'name',
        )


class BookNoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookNote
        fields = ("id", "body", "page_number", "created_at")


class BookSerializer(serializers.HyperlinkedModelSerializer):
    status_text = serializers.CharField(
        source='get_status_display', read_only=True)
    owner = UserSerializer(read_only=True)
    authors = NestedAuthorSerializer(many=True, required=False)

    class Meta:
        model = Book
        fields = ("id", "url", "owner", "title", "authors", "author_string",
                  "status", 'status_text')

    def create(self, validated_data):
        authors = validated_data.pop('authors')

        book = Book.objects.create(**validated_data)

        for author_data in authors:
            if author_data.get('id'):
                author = Author.objects.get(id=author_data['id'])
                book.authors.add(author)
            elif author_data.get('name'):
                author, _ = Author.objects.get_or_create(
                    name=author_data['name'])
                book.authors.add(author)
        return book


class BookWithNotesSerializer(BookSerializer):
    notes = BookNoteSerializer(many=True, required=False)

    class Meta:
        model = Book
        fields = ("id", "url", "owner", "title", "authors", "author_string",
                  "status", 'status_text', "notes")


class FollowSerializer(serializers.ModelSerializer):
    followed_user = serializers.SlugRelatedField(
        slug_field="username", queryset=User.objects.all())

    class Meta:
        model = Follow
        fields = ("followed_user", )


class AuthorSerializer(serializers.ModelSerializer):
    books = BookSerializer(many=True, read_only=True)

    class Meta:
        model = Author
        fields = (
            'id',
            'name',
            'books',
        )
