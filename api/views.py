from core.models import Follow, User, Book, BookNote
from api.serializers import BookSerializer, FollowSerializer, UserSerializer, BookNoteSerializer
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
    serializer_class = BookSerializer

    def get_queryset(self):
        return self.request.user.books


class BookNotesCreateView(generics.CreateAPIView):
    serializer_class = BookNoteSerializer

    def perform_create(self, serializer):
        book = get_object_or_404(Book, pk=self.kwargs['book_pk'])
        serializer.save(book=book)


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


# Example: explicitly writing this without a generic CBV
# class BookListCreateView(APIView):
#     def get(self, request):
#         books = Book.objects.filter(owner=request.user)
#         serializer = BookSerializer(books, many=True)
#         return Response(serializer.data)

#     def post(self, request):
#         serializer = BookSerializer(data=request.data)
#         if serializer.is_valid():
#             serializer.save(owner=request.user)
#             return Response(serializer.data, status=201)

#         return Response(serializer.errors, status=400)
