# 2. Напишите template строки, который можно будет многократно переиспользовать, 
# вставляя в него имя и фамилию человека. Используйте метод строки "format".
#  
#print("2. Напишите template строки, который можно будет многократно переиспользовать, вставляя в него имя и фамилию человека. Используйте метод строки \"format\".")
format_str = "First name:{}, Last Name:{}"
lastName = "Hladchenko"
firstName = "Vadim"
print( format_str.format(firstName, lastName))