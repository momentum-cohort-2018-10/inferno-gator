from core.models import Follow, User, Book, BookNote, Author
from api.serializers import BookSerializer, BookWithNotesSerializer, FollowSerializer, UserSerializer, BookNoteSerializer, AuthorSerializer
# from rest_framework.views import APIView
from rest_framework import generics
from django.shortcuts import get_object_or_404


class BookListCreateView(generics.ListCreateAPIView):
    serializer_class = BookSerializer

    def get_queryset(self):
        return self.request.user.books

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class BookRetrieveUpdateDestroyView(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = BookWithNotesSerializer

    def get_queryset(self):
        return self.request.user.books


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
