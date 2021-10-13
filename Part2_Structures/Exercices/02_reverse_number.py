"""
Marche sur des entiers signés
"""
def reverse_number(num):
    assert num != 0
    # sign = -1 if num < 0 else 1
    sign = num // abs(num) # // division entière
    num = abs(num)

    return int( str(num)[::-1] ) * sign