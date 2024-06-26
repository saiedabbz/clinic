# Generated by Django 4.2.11 on 2024-04-09 17:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Config',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=64, verbose_name='title')),
                ('description', models.TextField(blank=True, max_length=120, null=True, verbose_name='description')),
                ('slug', models.SlugField(blank=True, null=True, verbose_name='slug')),
                ('value', models.IntegerField(blank=True, null=True, verbose_name='value')),
                ('image', models.ImageField(blank=True, null=True, upload_to='config_img/', verbose_name='image')),
            ],
            options={
                'verbose_name': 'Config',
                'verbose_name_plural': 'Configs',
            },
        ),
    ]
