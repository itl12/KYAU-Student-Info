from django.urls import path 
from . import views
from django.contrib.auth.views import LoginView, LogoutView

app_name = 'general'

urlpatterns = [
    path('login_page/', LoginView.as_view(template_name='general/login.html'), name='login_page'),
    path('logout/', LogoutView.as_view(), name='logout'),

    path('', views.index, name='index'),
    path('general_database/', views.general_database, name='general_database'),
    path('add_in_general_database/', views.add_in_general_database.as_view(), name='add_in_general_database'),

    path('club_details/<int:pk>', views.club_details, name='club_details'),
    path('application_list/<int:pk>', views.application_list, name='application_list'),
    path('application/<int:pk>/', views.application, name='application'),
    path('accept_application/<int:pk>/', views.accept_application, name='accept_application'),
    path('delete_application/<int:pk>/', views.delete_application, name='delete_application'),
]
