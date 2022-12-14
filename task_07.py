#  7. Дан список из строк. Используя join, соедините строки так,
#     чтобы они были разделены через запятую. На выходе должна получиться
#     строка в виде "my_string1,my_string2,my_string3"

lst = ["apple", "banana", "cherry", "orange",
       "kiwi", "melon", "mango", "pear", "plum"]
str = ','.join(lst)
print(str)
