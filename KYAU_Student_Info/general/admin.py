from django.contrib import admin
from . import models

# Register your models here.
admin.site.register(models.General_Database)
admin.site.register(models.Clubs)
admin.site.register(models.Department)
admin.site.register(models.Applications)