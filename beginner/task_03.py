# 3. Напишите функцию, которая будет преобразовывать цену к формату,
#    отображающему до двух знаков после точки, например:
# 22.32131 -> 22.32
# 58.60125 -> 58.6
# 34.0 -> 34

def to_price_format(price):
    return round(price, 2)


price_samples = [22.32131, 58.60125, 34.0]

for price in price_samples:
    print(f"{price} -> {to_price_format(price)}")
