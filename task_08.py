# 8. Есть список из случайных чисел и строк. Создайте цикл, итерирующийся 
#    до тех пор, пока не встретится число "777". Если в течении 100 попыток 
#    число не будет найдено — остановить цикл и вызвать ошибку 
#    с соответсвующим сообщением.
import random, string
    
def random_elm():
    if random.randint(0,1) == 0:
        return random.randint(700, 800)
    else:
        return ''.join(random.choices(string.ascii_lowercase, k=random.randint(1, 10)))


lst  = [ random_elm()  for _ in range(0, random.randint(10,150)) ] 
print(lst)
cnt = 0
for elm in lst:
    if elm == 777:
        print(f'Found 777! {cnt=}')
        break
    cnt += 1
    if cnt > 100:
        print('NOT found 777 in 100 elements')
        break
else:
    print('NOT found 777!')
