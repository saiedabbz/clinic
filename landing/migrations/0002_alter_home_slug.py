# Generated by Django 4.2.11 on 2024-04-03 12:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('landing', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='home',
            name='slug',
            field=models.SlugField(allow_unicode=True, blank=True, max_length=100, verbose_name='slug'),
        ),
    ]