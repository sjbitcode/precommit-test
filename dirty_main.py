from typing import List
greetings: List = [
    'Hello', 'Howdy', 'Sup', 'Good day'
]
def greet(greeting, name):
    return f'{greeting}, {name}!'

if __name__ == '__main__':
    for greeting in greetings:
        print(greet(greeting, 'Sangeeta'))