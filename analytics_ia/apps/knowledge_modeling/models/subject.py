# -*- coding: utf-8 -*-

__all__ = [
    'Subject',
    'UserSubject'
]

from django.contrib.auth.models import User
from django.db import models
from django.utils.translation import gettext_lazy as _


class Subject(models.Model):

    name = models.CharField(
        _('Nome'),
        max_length=50
    )

    node_name = models.CharField(
        _('Chave'),
        max_length=50
    )

    level = models.IntegerField(
        _('Nivel'),
        null=True,
        default=1
    )

    value = models.DecimalField(
        _('Probabilidade'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    slip_value = models.DecimalField(
        _('Valor Slip'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    guess_value = models.DecimalField(
        _('Valor Guess'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    transition_value = models.DecimalField(
        _('Valor Transição'),
        default=0,
        decimal_places=10,
        max_digits=10
    )
    
    children = models.ManyToManyField(
        'self',
        symmetrical=False,
        blank=True
    )

    def __str__(self):
        return f'{self.name}({self.pk})'


class UserSubject(models.Model):

    subject = models.ForeignKey(
        Subject,
        on_delete=models.CASCADE,
        related_name='users'
    )

    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='subjects'
    )

    time_index = models.IntegerField(
        _('Índice de Tempo'),
        default=1
    )

    value = models.DecimalField(
        _('Probabilidade'),
        default=0,
        decimal_places=10,
        max_digits=10
    )

    def __str__(self):
        return f'{self.user.username} - {self.subject.name}(T: {self.time_index})'
