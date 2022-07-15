# nopycln: file
import os
foo = os.getenv('FOO')

def a_really_really_extremely_long_function_name_that_should_go_over_100_lines():
    print('yo')
def print_env(env_name):
    print(os.getenv(env_name))
print(foo)