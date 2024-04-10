# Generated by Django 4.2.11 on 2024-04-10 17:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('landing', '0004_alter_home_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='home',
            name='slug',
            field=models.SlugField(max_length=100, unique=True, verbose_name='slug'),
        ),
    ]