import random

life = 3

for i in range(10):
    problem = random.randint(0, 3)
    symbol = '+'

    x = random.randint(1, 20)
    y = random.randint(1, 20)

    if problem == 0:
        result = x + y
        symbol = '+'
    elif problem == 1:
        result = x - y
        symbol = '-'
    elif problem == 2:
        result = x * y
        symbol = '*'
    else:
        result = x / y
        symbol = '/'

    # print(result)
    print("{} {} {} = ?".format(x, symbol, y))
    answer = input()

    if int(answer) == int(result):
        print("OK")
    else:
        print("life lose")
        life -= 1
        if life == 0:
            print("GAME OVER")
            break
