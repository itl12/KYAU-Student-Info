# Generated by Django 4.2.7 on 2024-02-07 14:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('general', '0004_clubs_club_desc'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clubs',
            name='club_desc',
            field=models.TextField(default='', max_length=5000),
        ),
        migrations.AlterField(
            model_name='general_database',
            name='std_batch',
            field=models.IntegerField(),
        ),
    ]
