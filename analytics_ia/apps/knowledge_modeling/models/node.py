# -*- coding: utf-8 -*-

__all__ = [
    'Evidence',
]

from django.db import models
from django.utils.translation import gettext_lazy as _

from .difficulty import Difficulty
from .subject import Subject


class Node(models.Model):

    class Meta:
        abstract = True

    name = models.CharField(
        _('Nome'),
        max_length=50
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
