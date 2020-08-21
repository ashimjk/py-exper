# Python program to illustrate functions
# can be passed as arguments to other functions
def shout(text):
    return text.upper()


def whisper(text):
    return text.lower()


def greet(func):
    # storing the function in a variable
    print("Greeting")
    greeting = func("Hi, I am created by a function passed as an argument.")
    print(greeting)


greet(shout)
greet(whisper)

# def trace(level: str = 'D'):
#     def decorator(func):
#         def wrapper(*args, **kwargs):

# @trace('D')
# def main(module_args: list) -> int:

# zx.zmaven.main(extra_args)
