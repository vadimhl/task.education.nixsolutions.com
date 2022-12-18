# Дан список из словарей в формате
# [{'name': 'Oleg', 'age': 23}, {'name': 'Vasya', 'age': 19}]
# Отсортируйте список по возрасту людей, чтобы получилось
# [{'name': 'Vasya', 'age': 19}, {'name': 'Oleg', 'age': 23}]
# Используйте sorted и lambda

lst = [
    {'name': 'Alex', 'age': 25},
    {'name': 'Oleg', 'age': 23},
    {'name': 'Anna', 'age': 32},
    {'name': 'Igor', 'age': 50},
    {'name': 'Anton', 'age': 17},
]

lst = sorted(lst, key=lambda x: x['age'])
print(lst)
