# 5. Напишите функцию, которая принимает список, и число.
#    Функция должна разбить список на N кусков,
#    переданных в функцию в качестве втрого аргумента.
#    Выполнить проверки по здравому смыслу (например,
#    нет смысла пытаться разбить список из 3 элементов на 4 элемента)

def razbiv(lst, n):
    length = len(lst)
    if (length >= n):
        rest = length // n
        mod = length % n
        res = []
        # print(f'{length=} {n=} {rest=} {mod=}')
        start = 0
        while start < length:
            if mod > 0:
                cnt = rest+1
                mod -= 1
            else:
                cnt = rest
            res.append(lst[start:start+cnt])
            start += cnt
        return res
    else:
        return lst


def razbiv2(lst, n):
    length = len(lst)
    if (length >= n):
        rest = length // n
        mod = length % n

        # print(f'{length=} {n=} {rest=} {mod=}')
        rest1 = rest + 1
        res = [lst[i * rest1: i * rest1+rest1] for i in range(0, mod)] \
            + [lst[mod*rest1+i*rest:mod*rest1+i*rest+rest]
               for i in range(0, n-mod)]
        return res
        # 1 4 7 9
        # 2 5 8 0
        # 3 6


lst = ["apple", "banana", "cherry", "orange", "kiwi",
       "melon", "mango", "pear", "plum"]
for i in range(2, len(lst)+1):
    res = razbiv2(lst, i)
    print(f'{i} -> {len(res)} {res}')
