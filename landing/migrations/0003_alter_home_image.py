# Generated by Django 4.2.11 on 2024-04-03 13:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('landing', '0002_alter_home_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='home',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='images/', verbose_name='image'),
        ),
    ]
