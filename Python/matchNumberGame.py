import random

answer = random.randint(1, 100)
life = 10

print("* 숫자(정수) 맞추기 게임 *")
while True:
    try:
        userInput = int(input("컴퓨터의 숫자를 맞춰봐 : "))
    except ValueError:
        print("정수만 입력하세요.")
        continue

    if int(userInput) != answer:
        life -= 1
        print("땡")

        if int(userInput) > answer:
            print("정답보다 커요.")
        else:
            print("정답보다 작아요.")

        # 기회가 끝난 경우
        if life == 0:
            print("컴퓨터에게 졌어요. 아쉽네요. 정답은 {} 에요. 다음 기회를 노리세요.".format(answer))
            break
    else:
        print("컴퓨터를 이겼어요. 축하해요.")
        break
