# -*- coding: utf-8 -*-

from django.urls import re_path

from . import views

app_name = 'conceptual_map'

urlpatterns = [
    re_path(
        r'^concepts_form/$',
        views.concept_form,
        name='concepts_form'
    ),
    re_path(
        r'^concepts/$',
        views.concepts_view,
        name='concepts'
    ),
    re_path(
        r'^users_concepts/$',
        views.concepts_from_users,
        name='users_concepts'
    ),
    re_path(
        r'^users_from_concepts/$',
        views.users_from_concepts,
        name='users_from_concepts'
    )
]
