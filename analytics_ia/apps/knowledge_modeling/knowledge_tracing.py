# -*- coding: utf-8 -*-

__all__ = ['update_skill']


def correct_answer(user_subject, subject):

    dividend = user_subject.value * (1 - subject.slip_value)
    divisor = (user_subject.value * (1 - subject.slip_value)) + \
              ((1 - user_subject.value) * subject.guess_value)

    return dividend / divisor


def wrong_answer(user_subject, subject):
    dividend = user_subject.value * subject.slip_value
    divisor = (user_subject.value * subject.slip_value) + \
              ((1 - user_subject.value) * (1 - subject.guess_value))

    return dividend / divisor


def update_skill(user_subject, subject, status):

    if status is True:

        new_value = correct_answer(user_subject, subject)

    else:

        new_value = wrong_answer(user_subject, subject)

    return new_value + (1 - new_value) * subject.transition_value
