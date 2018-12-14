from core.models import Book
from api.serializers import BookSerializer
from django.shortcuts import render, redirect
import json


def index(request, status=None):
    if request.user.is_authenticated:
        if status is None:
            return redirect("books-to-read")
        books = request.user.books.filter(status=status)
        return render(
            request, "core/index.html", {
                "status": status,
                "books_json": json.dumps(
                    BookSerializer(books, many=True).data)
            })
    else:
        return render(request, "core/not_logged_in.html")
