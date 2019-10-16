# -*- coding: utf-8 -*-

__all__ = ['Context']

from django.db import models
from django.utils.translation import gettext_lazy as _


class Context(models.Model):

    name = models.CharField(
        _('Nome'),
        max_length=50
    )
