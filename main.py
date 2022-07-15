# nopycln: file
from typing import List
from keep_dirty.dirty_foo import a_really_really_extremely_long_function_name_that_should_go_over_100_lines
from constants import (
    A_VERY_LONG_VARIABLE_NAME,
    ANOTHER_EXTREMELY_LONG_NAME_OMG_WAT,
    WOW_THESE_LONG_NAMES_JUST_DONT_STOP_HUH,
    OK_JUST_ONE_MORE_KINDA_LONG_NAME,
)
import csv

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


if __name__ == "__main__":
    for greeting in greetings:
        print(greet(greeting, "Sangeeta"))
