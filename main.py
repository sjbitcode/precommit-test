from typing import List

from constants import (
    A_VERY_LONG_VARIABLE_NAME,
    ANOTHER_EXTREMELY_LONG_NAME_OMG_WAT,
    OK_JUST_ONE_MORE_KINDA_LONG_NAME,
    WOW_THESE_LONG_NAMES_JUST_DONT_STOP_HUH,
)

from . import test_package

greetings: List = [
    "Hello",
    "Howdy",
    "Sup",
    "Good day",
    "Yo",
    "Welcome",
    "Most welcome",
    "Hola",
    "Bonjour",
    "Konnichiwa",
]

print(A_VERY_LONG_VARIABLE_NAME)
print(ANOTHER_EXTREMELY_LONG_NAME_OMG_WAT)
print(WOW_THESE_LONG_NAMES_JUST_DONT_STOP_HUH)
print(OK_JUST_ONE_MORE_KINDA_LONG_NAME)


def greet(greeting, name):
    return f"{greeting}, {name}!"


def serve_food(food):
    return f"here's your {food}"


if __name__ == "__main__":
    for greeting in greetings:
        print(greet(greeting, "Sangeeta"))

    print(test_package.a.a())
