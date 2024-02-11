from django.shortcuts import render, HttpResponse, redirect
from django.urls import reverse, reverse_lazy
from django.views.generic import CreateView, DeleteView
from . import models
from KYAU_Student_Info import forms 
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator

# Create your views here.
@login_required
def index(request):
    clubs = models.Clubs.objects.all()
    club_details = {}
    for club in clubs:
        club_details[club] = models.Applications.objects.filter(club__id=club.id).filter(accept_membership=True).count()
    dict = {'clubs': clubs, 'club_details': club_details }
    return render(request, 'general\index.html', dict)

@login_required
def general_database(request):
    all_clubs = models.Clubs.objects.all()
    all_students = models.General_Database.objects.all()

    students_with_clubs = []

    # Iterate over each student
    for student in all_students:
        clubs_for_student = student.club.all()  # Access clubs associated with the student
        students_with_clubs.append({'student': student, 'clubs': clubs_for_student})

    context = {'students_with_clubs': students_with_clubs, 'all_clubs': all_clubs}
    return render(request, 'general/general_database.html', context)

@method_decorator(login_required, name='dispatch')
class add_in_general_database(CreateView):
    form_class = forms.General_Database_Form
    success_url = reverse_lazy('general:general_database')
    # fields = ['std_dept','std_batch','std_name','std_id', 'std_email']
    template_name = 'general/add_in_general_database.html'
    context_object_name = 'form'

@login_required
def club_details(request, pk):
    club = models.Clubs.objects.get(pk=pk)
    no_of_application = models.Applications.objects.filter(club__id=pk).filter(accept_membership=False).count()
    club_members = models.Applications.objects.filter(club__id=pk).filter(accept_membership=True)
    no_of_members = club_members.count()
    dict = { 'club' : club , 'no_of_application' : no_of_application ,
             'club_members' : club_members , 'no_of_members': no_of_members}
    return render(request, 'general/club_details.html', dict )

@login_required
def application_list(request, pk):
    application_list = models.Applications.objects.filter(club__id=pk).filter(accept_membership=False)
    club_name = models.Clubs.objects.get(pk=pk)
    dict = {'application_list' : application_list, 'club_name' : club_name }
    return render(request, 'general/application_list.html', dict)


@login_required
def application(request, pk):
    application = models.Applications.objects.get(pk=pk)
    dict = {'application': application}
    return render(request, 'general/application.html', dict)

@login_required
def accept_application(request,pk):
    application = models.Applications.objects.get(pk=pk)
    application.accept_membership = True
    application.save()
    std = models.General_Database.objects.filter(std_dept=application.std_dept,
                                                  std_batch=application.std_batch, std_id=application.std_id).first()
    std.club.add(application.club.id)
    std.save()
    return redirect(reverse('general:application_list', kwargs={'pk': application.club.id }))

@login_required
def delete_application(request,pk):
    application = models.Applications.objects.get(pk=pk)
    club_id =  application.club.id
    application.delete()
    return redirect(reverse('general:application_list', kwargs={'pk': club_id }))


@method_decorator(login_required, name='dispatch')
class Create_Std_Info(CreateView):
    success_url = '/'
    model = models.General_Database
    fields = "__all__"
    template_name = 'general/create_std_info.html'