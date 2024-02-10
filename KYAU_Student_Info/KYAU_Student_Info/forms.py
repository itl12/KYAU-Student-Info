from django import forms
from general import models 

class General_Database_Form(forms.ModelForm):
    class Meta:
        model = models.General_Database
        fields = "__all__"
        exclude = ['club']
        widgets = {
            'std_name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter your name'}),
            'std_batch': forms.NumberInput(attrs={'class': 'form-control'}),
            'std_id': forms.NumberInput(attrs={'class': 'form-control'}),
            'std_email': forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Enter your email'}),
        }


class ApplyForm(forms.ModelForm):
    class Meta:
        model = models.Applications
        fields = "__all__"
        exclude = ['club', 'accept_membership']
        widgets = {
            'std_name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter your name'}),
            'std_batch': forms.NumberInput(attrs={'class': 'form-control'}),
            'std_id': forms.NumberInput(attrs={'class': 'form-control'}),
            'std_email': forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Enter your email'}),
        }

class Application(forms.ModelForm):
    class Meta:
        model = models.Applications
        fields = "__all__"
        exclude = ['club']
        