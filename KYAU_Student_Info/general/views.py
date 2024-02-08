from django.shortcuts import render, HttpResponse
from django.urls import reverse, reverse_lazy
from django.views.generic import CreateView
from . import models
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator

# Create your views here.
@login_required
def index(request):
    clubs = models.Clubs.objects.all()
    club_details = {}
    for club in clubs:
        club_details[club] = club.members.count()
    dict = {'clubs': clubs, 'club_details': club_details }
    return render(request, 'general\index.html', dict)


@login_required
def club_details(request, pk):
    club = models.Clubs.objects.get(pk=pk)
    dict = { 'club' : club }
    return render(request, 'general/club_details.html', dict )

@login_required
def application_list(request, pk):
    return render(request, 'general/application_list.html', {})


@method_decorator(login_required, name='dispatch')
class Create_Std_Info(CreateView):
    success_url = '/'
    model = models.General_Database
    fields = "__all__"
    template_name = 'general/create_std_info.html'