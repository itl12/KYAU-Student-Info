from django import forms
from general import models 

class ApplyForm(forms.ModelForm):
    class Meta:
        model = models.Applications
        fields = "__all__"
        exclude = ['club']