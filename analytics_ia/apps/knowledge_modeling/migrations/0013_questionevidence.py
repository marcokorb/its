# Generated by Django 2.2.2 on 2019-10-02 19:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('knowledge_modeling', '0012_auto_20191002_1833'),
    ]

    operations = [
        migrations.CreateModel(
            name='QuestionEvidence',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, verbose_name='Nome')),
                ('evidence', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='evidences', to='knowledge_modeling.Evidence')),
                ('question', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='quetsions', to='knowledge_modeling.Question')),
            ],
        ),
    ]
