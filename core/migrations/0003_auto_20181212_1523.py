# Generated by Django 2.1.4 on 2018-12-12 15:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_book_booknote'),
    ]

    operations = [
        migrations.RenameField(
            model_name='book',
            old_name='authors',
            new_name='author_string',
        ),
    ]