from django.shortcuts import render, redirect
from django.core.exceptions import ValidationError
from general.models import Clubs, Applications, General_Database
from . import forms

def index(request):
    if request.user.is_authenticated:
        return redirect('/general/')
    clubs = Clubs.objects.all()
    club_details = {}
    for club in clubs:
        club_details[club] = Applications.objects.filter(club__id=club.id).filter(accept_membership=True).count()
    dict = {'clubs': clubs, 'club_details': club_details }
    return render(request, 'index.html', dict)

def view_club_details(request, pk):
    club = Clubs.objects.get(id=pk)
    members = Applications.objects.filter(club__id=club.id).filter(accept_membership=True)
    no_of_members = members.count()
    dict = {'club' : club , 'members':members, 'no_of_members' : no_of_members }
    return render(request, 'view_club_details.html', dict)


def apply_for_registration(request, pk):
    dict = {}
    club = Clubs.objects.get(pk=pk)
    if request.method == "POST":
        form = forms.ApplyForm(request.POST)
        
        if form.is_valid():
            application = form.save(commit=False)
            application.club = club
            
            print(f"{application.std_dept.id} {application.std_batch} {application.std_id}")
            student = General_Database.objects.filter(std_dept__id=application.std_dept.id, std_batch=application.std_batch,
                                                      std_id=application.std_id).first()
            if student is None:
                dict.update({'form': form, 'club': club, 'not_in_database' : True })
                return  render(request, 'apply_page.html', dict)
            else:
                application.save()
                return redirect('/')
    else:
        form = forms.ApplyForm()

    dict.update({'form': form, 'club': club })
    return  render(request, 'apply_page.html', dict)