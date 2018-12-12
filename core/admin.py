from django.contrib import admin
from core.models import Book, BookNote, User

# Register your models here.


class BookNoteInline(admin.StackedInline):
    model = BookNote
    fields = ("body", "page_number")


class BookAdmin(admin.ModelAdmin):
    list_display = ["title", "author_string"]
    inlines = [BookNoteInline]


admin.site.register(User)
admin.site.register(Book, BookAdmin)
