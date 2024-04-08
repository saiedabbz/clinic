from django.contrib import admin
from .models import Home
from django.utils.html import format_html


# class HomeAdmin(admin.ModelAdmin):
#     list_display = ('id', 'slug','description',)


@admin.register(Home)
class HomeAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'title',
        'slug',
        'image_tag',
    ]


    def image_tag(self, obj):
            if obj.image != '':
                return format_html('<img src="{}" style="width: 100px; height: 100px;" />'.format(obj.image.url))
            return ''
