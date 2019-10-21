# -*- coding: utf-8 -*-

__all__ = [
    'Concept',
    'UserConcept'
]

from django.contrib.auth.models import User
from django.db import models
from django.utils.translation import gettext_lazy as _


class Concept(models.Model):

    content = models.CharField(
        _('Nome'),
        max_length=50
    )

    level = models.IntegerField(
        _('Level'),
        default=1
    )

    parent = models.ForeignKey(
        'self',
        on_delete=models.CASCADE,
        related_name='children',
        null=True,
        blank=True
    )

    def __str__(self):
        return f'{self.content}({self.pk}) - Level({self.level})'


class UserConcept(models.Model):

    concept = models.ForeignKey(
        Concept,
        on_delete=models.CASCADE,
        related_name='users'
    )

    user = models.ForeignKey(
        User,
        on_delete=not models.CASCADE,
        related_name='concepts'
    )
