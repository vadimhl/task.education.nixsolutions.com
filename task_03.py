# Написать свой декоратор, который будет отлавливать ошибки,
# полученные в ходе выполнения обёрнутой функции,
# логгировать их и делать raise отловленной ошибки
import datetime


def log_err(func):
    def wrap(*args, **kwargs):
        try:
            result = func(*args, **kwargs)
            return result
        except Exception as e:
            print(f'{datetime.datetime.now()} ',
                  f'Exception in function {func.__name__}: {e}')
            raise e
    return wrap


@log_err
def bad_func(a, b):
    return a / b


print(bad_func(2, 0))
