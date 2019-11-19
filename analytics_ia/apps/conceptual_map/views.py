# -*- coding: utf-8 -*-

__all__ = ['concept_form', 'concepts_from_users']

from django.contrib.auth.models import User
from rest_framework.decorators import api_view
from rest_framework.response import Response

from ..knowledge_modeling.models import Subject, UserSubject

from .models import (
    Concept,
    UserConcept
)
from .serializers import ConceptSerializer, UserSerializer


@api_view(['GET'])
def concept_form(request):

    concepts = Concept.objects.filter(level=1).all()

    return Response(ConceptSerializer(concepts, many=True).data)


@api_view(['GET'])
def concepts_view(request):

    concepts = Concept.objects.filter(level=2).all()

    return Response(ConceptSerializer(concepts, many=True).data)


@api_view(['GET'])
def concepts_from_users(request):

    user_concepts = UserConcept.objects.filter()

    concept_ids = {u.concept_id for u in user_concepts}

    concepts = Concept.objects.filter(pk__in=concept_ids)

    return Response(ConceptSerializer(concepts, many=True).data)


@api_view(['GET', 'POST'])
def users_from_concepts(request):

    concepts = request.data.get('concepts', [])

    # if not concepts:

    #     return Response([])

    # if concepts:
    #     user_concepts = UserConcept.objects.filter(concept_id__in=concepts)
    # else:
    #     user_concepts = UserConcept.objects.filter()

    # user_ids = {u.user_id for u in user_concepts}
    

    users = User.objects.filter()

    users_data = []
    subjects = Subject.objects.all()

    for user in users:

        user_subjects = []

        for subject in subjects:
            user_subject = UserSubject.objects.filter(
                subject=subject,
                user=user
            ).order_by('id').first()

            if user_subject:
                user_subjects.append({
                    'pk': subject.pk,
                    'name': subject.name,
                    'value': user_subject.value,
                    'time_index': user_subject.time_index
                })

        if user_subjects:

            user_data = {
                'pk': user.pk,
                'username': user.username,
                'subjects': user_subjects
            }

            users_data.append(user_data)

    return Response(users_data)

