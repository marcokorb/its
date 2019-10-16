# Generated by Django 2.2.2 on 2019-10-02 17:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('knowledge_modeling', '0006_difficulty_evidence'),
    ]

    operations = [
        migrations.AddField(
            model_name='subject',
            name='publications',
            field=models.ManyToManyField(related_name='_subject_publications_+', to='knowledge_modeling.Subject'),
        ),
    ]
