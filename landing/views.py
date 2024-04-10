from django.shortcuts import render
from .models import Home

def HomePage(request):
    posts = Home.objects.all()

    context = {
        "posts": posts
    }
    return render(request, 'home/home.html', context)

def ContactPage(request):
    context = {}
    return render(request, 'contact/contact.html', context)


def detail(request, slug):
    post = Home.objects.get(slug=slug)
    context = {
        "post": post
    }
    return render(request, 'home/detail.html', context)