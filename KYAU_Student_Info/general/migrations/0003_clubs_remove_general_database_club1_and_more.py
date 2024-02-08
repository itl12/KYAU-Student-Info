# Generated by Django 4.2.7 on 2024-02-07 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('general', '0002_alter_general_database_options_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Clubs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('club_name', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name_plural': 'All Clubs',
                'ordering': ['club_name'],
            },
        ),
        migrations.RemoveField(
            model_name='general_database',
            name='club1',
        ),
        migrations.RemoveField(
            model_name='general_database',
            name='club2',
        ),
        migrations.RemoveField(
            model_name='general_database',
            name='club3',
        ),
        migrations.AddField(
            model_name='general_database',
            name='club',
            field=models.ManyToManyField(blank=True, related_name='members', to='general.clubs'),
        ),
    ]
