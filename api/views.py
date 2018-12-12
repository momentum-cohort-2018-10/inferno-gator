from core.models import Book
from api.serializers import BookSerializer
from rest_framework.decorators import api_view
from rest_framework.response import Response

# Create your views here.


@api_view(["GET", "POST"])
def book_create_or_list(request):
    if request.method == "POST":
        return create_book(request)
    return book_list(request)


def book_list(request):
    books = Book.objects.filter(owner=request.user)
    serializer = BookSerializer(books, many=True)
    return Response(serializer.data)


def create_book(request):
    serializer = BookSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save(owner=request.user)
        return Response(serializer.data, status=201)

    return Response(serializer.errors, status=400)
