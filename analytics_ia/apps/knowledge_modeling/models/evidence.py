# -*- coding: utf-8 -*-

__all__ = [
    'Evidence',
    'UserEvidence'
]

from django.contrib.auth.models import User

from django.db import models
from django.utils.translation import gettext_lazy as _

from .question import Question

from .difficulty import Difficulty
from .subject import Subject


class Evidence(models.Model):

    name = models.CharField(
        _('Nome'),
        max_length=50
    )

    subject = models.ForeignKey(
        Subject,
        on_delete=models.CASCADE,
        related_name='evidences'
    )

    difficulty = models.ForeignKey(
        Difficulty,
        on_delete=models.CASCADE,
        related_name='evidences'
    )

    correct_knowing = models.DecimalField(
        _('Acerta-Sabendo'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    correct_not_knowing = models.DecimalField(
        _('Acerta-Não-Sabendo'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    mistake_knowing = models.DecimalField(
        _('Erra-Sabendo'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    mistake_not_knowing = models.DecimalField(
        _('Erra-Não-Sabendo'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    def __str__(self):
        return f'{self.name}({self.pk})'


class QuestionEvidence(models.Model):

    name = models.CharField(
        _('Nome'),
        max_length=50
    )

    evidence = models.ForeignKey(
        Evidence,
        on_delete=models.CASCADE,
        related_name='questions'
    )
    question = models.ForeignKey(
        Question,
        on_delete=models.CASCADE,
        related_name='evidences'
    )

    def __str__(self):
        return f'({self.pk}){self.name}'



class UserEvidence(models.Model):

    evidence = models.ForeignKey(
        QuestionEvidence,
        on_delete=models.CASCADE,
        related_name='users'
    )

    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='evidences'
    )

    status = models.BooleanField(
        _('Status'),
        default=False
    )

    def __str__(self):
        return f'{self.user.username} - {self.evidence.name}'

