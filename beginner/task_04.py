# 4. Дан список из строк. Создайте однострочное решение
# (при помощи list comprehension),
#    которое приведёт к верхнему регистру все строки, содержащие слово 'price')

# если строки не содержащие слово 'price' не нужны
def upper_price(list_price):
    return [x.upper() for x in list_price if 'price' in x]


# если строки не содержащие слово 'price' нужно сохранить
def upper_price2(list_price):
    return [x.upper() if 'price' in x else x for x in list_price]


sample_list = ['qwerty', 'first price', 'zxcvb', 'second price', 'price again']
print(upper_price(sample_list))
print(upper_price2(sample_list))
