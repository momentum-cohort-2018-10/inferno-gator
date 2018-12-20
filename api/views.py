from core.models import Follow, User, Book, BookNote, Author
from api.serializers import BookSerializer, BookWithNotesSerializer, FollowSerializer, UserSerializer, BookNoteSerializer, AuthorSerializer
# from rest_framework.views import APIView
from rest_framework.views import Response
from rest_framework import generics
from rest_framework.exceptions import PermissionDenied
from django.shortcuts import get_object_or_404


class BookListCreateView(generics.ListAPIView):
    serializer_class = BookSerializer

    def get_queryset(self):
        if self.kwargs.get('username'):
            username = self.kwargs['username']
            user = get_object_or_404(User, username=username)
            return user.books.all()

        return self.request.user.books.all()

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class BookRetrieveUpdateDestroyView(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = BookWithNotesSerializer
    queryset = Book.objects.all()

    def check_object_permissions(self, request, book):
        if request.method != "GET" and book.owner != request.user:
            raise PermissionDenied("You are not the book's owner.")

        return super().check_object_permissions(request, book)


class BookNotesCreateView(generics.CreateAPIView):
    serializer_class = BookNoteSerializer

    def perform_create(self, serializer):
        book = get_object_or_404(Book, pk=self.kwargs['book_pk'])
        serializer.save(book=book)


class AuthorListCreateView(generics.ListCreateAPIView):
    serializer_class = AuthorSerializer
    queryset = Author.objects.all()


class UserListView(generics.ListAPIView):
    serializer_class = UserSerializer
    queryset = User.objects.all()


class FollowListCreateView(generics.ListCreateAPIView):
    serializer_class = FollowSerializer

    def get_queryset(self):
        return self.request.user.follows_from

    def perform_create(self, serializer):
        serializer.save(following_user=self.request.user)


class FollowDestroyView(generics.DestroyAPIView):
    lookup_field = "followed_user__username"
    lookup_url_kwarg = "username"

    def get_queryset(self):
        return self.request.user.follows_from
