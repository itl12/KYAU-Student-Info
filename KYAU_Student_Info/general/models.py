from django.db import models

# Create your models here.
class Department(models.Model):
    dept_name = models.CharField(max_length=50)
    class Meta():
        ordering = ['dept_name']
    def __str__(self):
        return self.dept_name

        
class Clubs(models.Model):
    club_name = models.CharField(max_length=50)
    club_desc = models.TextField(max_length=5000, default="")
    class Meta():
        ordering = ['club_name']
        verbose_name_plural = "All Clubs"
    def __str__(self):
        return self.club_name

class General_Database(models.Model):
    std_dept = models.ForeignKey(Department, on_delete=models.CASCADE)
    std_batch = models.IntegerField()
    std_name = models.CharField(max_length=50)
    std_id = models.BigIntegerField()
    std_email = models.EmailField(blank=True)
    club = models.ManyToManyField(Clubs, related_name='members', blank=True)

    class Meta():
        ordering = ['std_dept', 'std_batch', 'std_id']
        verbose_name_plural = "General_database"

    def __str__(self):
        return self.std_name




class Applications(models.Model):
    club = models.ForeignKey(Clubs, related_name='applications', on_delete=models.CASCADE)
    std_dept = models.ForeignKey(Department, on_delete=models.CASCADE)
    std_name = models.CharField(max_length=50)
    std_batch = models.IntegerField()
    std_id = models.CharField(max_length=50)
    std_email = models.EmailField()
    accept_membership = models.BooleanField(default=False)

    class Meta():
        ordering = ['club']
        verbose_name_plural = 'Applications'
    def __str__(self):
        return f"{self.club} Batch {self.std_batch} id:{self.std_id}"

