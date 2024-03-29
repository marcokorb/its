# Generated by Django 2.2.2 on 2019-07-05 02:44

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('knowledge_modeling', '0003_auto_20190704_0226'),
    ]

    operations = [
        migrations.AddField(
            model_name='subject',
            name='guess_value',
            field=models.DecimalField(decimal_places=10, default=0, max_digits=10, verbose_name='Valor Guess'),
        ),
        migrations.AddField(
            model_name='subject',
            name='slip_value',
            field=models.DecimalField(decimal_places=10, default=0, max_digits=10, verbose_name='Valor Slip'),
        ),
        migrations.AddField(
            model_name='subject',
            name='transition_value',
            field=models.DecimalField(decimal_places=10, default=0, max_digits=10, verbose_name='Valor Transição'),
        ),
        migrations.AddField(
            model_name='usersubject',
            name='time_index',
            field=models.IntegerField(default=1, verbose_name='Índice de Tempo'),
        ),
        migrations.AlterField(
            model_name='subject',
            name='value',
            field=models.DecimalField(decimal_places=10, default=0, max_digits=10, verbose_name='Probabilidade'),
        ),
        migrations.CreateModel(
            name='UserQuestionHistory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.BooleanField(default=True, verbose_name='Status')),
                ('question', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_questions_history', to='knowledge_modeling.Question')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='question_history', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
