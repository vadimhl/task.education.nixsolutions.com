# 9.  Создать функцию, которая принимает на вход два списка: первый — список, 
#     который нужно очистить от определённых значений, 
#     второй — список тех значений, от которых нужно очистить. 
#     Например, list1 = [1, 2, 3, 4, 5], list2 = [1, 3, 4], 
#     функция должна вернуть [2, 5]

def clear_list( lst, vals_to_del):
    return list(filter( lambda x: x not in vals_to_del, lst ))
print(clear_list([1, 2, 3, 4, 5], [1, 3, 4]))