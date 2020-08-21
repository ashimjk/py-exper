def tracing(level: str = "debug"):
    def dec(func):
        def wrapper(args):
            print('wrapper start')
            print(level)
            func(args)
            print('wrapper end')

        return wrapper

    return dec


@tracing('info')
def maven_main(name: str):
    print(name)


maven_main('mvn')
