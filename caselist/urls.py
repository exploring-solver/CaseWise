from django.urls import path
from . import views

urlpatterns = [
    path('create/', views.create_case, name='create_case'),
    path('list/', views.list_cases, name='list_cases'),
    path('login/', views.login_view, name='login'),
    path('signup/', views.signup, name='signup'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('', views.home, name='home'),
]
