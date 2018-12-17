from core.models import Book
from api.serializers import BookSerializer
from django.shortcuts import render, redirect
import json


def index(request):
    if request.user.is_authenticated:
        return render(request, "core/index.html", {})
    else:
        return render(request, "core/not_logged_in.html")
