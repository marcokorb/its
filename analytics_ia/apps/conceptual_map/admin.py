# -*- coding: utf-8 -*-

__all__ = []

from django.contrib import admin
from .models import (
    Concept,
    Context,
    Map,
    UserConcept
)


class ConceptAdmin(admin.ModelAdmin):
    pass


class ContextAdmin(admin.ModelAdmin):
    pass


class MapAdmin(admin.ModelAdmin):
    pass


class UserConceptAdmin(admin.ModelAdmin):
    pass


admin.site.register(Concept, ConceptAdmin)
admin.site.register(Context, ContextAdmin)
admin.site.register(Map, MapAdmin)
admin.site.register(UserConcept, UserConceptAdmin)
