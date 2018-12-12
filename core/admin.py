from django.contrib import admin
from core.models import Book, Author, BookNote, User, Follow

# Register your models here.


class BookNoteInline(admin.StackedInline):
    model = BookNote
    fields = ("body", "page_number")
    extra = 1


class BookAdmin(admin.ModelAdmin):
    list_display = ["title", "author_string"]
    inlines = [BookNoteInline]
    autocomplete_fields = ("authors",)


class FollowersInline(admin.StackedInline):
    model = Follow
    fk_name = "followed_user"
    fields = ("following_user",)
    extra = 1


class UserAdmin(admin.ModelAdmin):
    fields = ("username", "email", "is_superuser", "is_staff", "is_active")
    inlines = [FollowersInline]


class AuthorAdmin(admin.ModelAdmin):
    search_fields = ("name",)


admin.site.register(User, UserAdmin)
admin.site.register(Book, BookAdmin)
admin.site.register(Author, AuthorAdmin)
