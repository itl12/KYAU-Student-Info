from django.shortcuts import render, redirect
from general.models import Clubs
from . import forms

def index(request):
    if request.user.is_authenticated:
        return redirect('/general/')
    clubs = Clubs.objects.all()
    club_details = {}
    for club in clubs:
        club_details[club] = club.members.count()
    dict = {'clubs': clubs, 'club_details': club_details }
    return render(request, 'index.html', dict)

def view_club_details(request, pk):
    club = Clubs.objects.get(id=pk)
    no_of_members = club.members.count()
    dict = {'club' : club , 'no_of_members' : no_of_members }
    return render(request, 'view_club_details.html', dict)


def apply_for_registration(request, pk):
    club = Clubs.objects.get(pk=pk)
    if request.method == "POST":
        form = forms.ApplyForm(request.POST)
        if form.is_valid():
            application = form.save(commit=False)
            application.club = club
            application.save()
    else:
        form = forms.ApplyForm()

    dict = {'form': form, 'club': club }
    return  render(request, 'apply_page.html', dict)