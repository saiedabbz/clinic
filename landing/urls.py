from django.urls import path
from . import views

app_name = 'landing'

urlpatterns = [
    path('', views.HomePage, name="homepage"),
    path('contact/', views.ContactPage, name="contact"),
    path('<slug:slug>/', views.detail, name="detail"),
    
]