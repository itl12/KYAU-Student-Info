from django.urls import path 
from . import views
from django.contrib.auth.views import LoginView, LogoutView

app_name = 'general'

urlpatterns = [
    path('login_page/', LoginView.as_view(template_name='general/login.html'), name='login_page'),
    path('logout/', LogoutView.as_view(), name='logout'),

    path('', views.index, name='index'),
    path('club_details/<int:pk>', views.club_details, name='club_details'),
    path('application_list/<int:pk>', views.application_list, name='application_list'),
]
