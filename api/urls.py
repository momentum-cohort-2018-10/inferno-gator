from django.urls import path
from api import views as api_views

urlpatterns = [
    path("books/", api_views.BookListCreateView.as_view(), name="book-list"),
    path(
        "books/<int:pk>/",
        api_views.BookRetrieveUpdateDestroyView.as_view(),
        name="book-detail",
    ),
    path(
        "books/<int:book_pk>/notes/",
        api_views.BookNotesCreateView.as_view(),
        name="book-notes"),
    path("users/", api_views.UserListView.as_view(), name="api_user_list"),
    path(
        "follows/",
        api_views.FollowListCreateView.as_view(),
        name="follow-list"),
    path(
        "follows/<str:username>/",
        api_views.FollowDestroyView.as_view(),
        name="follow-detail",
    ),
]
