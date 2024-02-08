from django.contrib import admin
from django.urls import path, include
from . import views 

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('view_club_details/<int:pk>', views.view_club_details, name='view_club_details'),
    path('apply_for_registration/<int:pk>', views.apply_for_registration, name='apply_for_registration'),
    path('general/', include('general.urls'))
]
