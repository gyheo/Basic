import random
import time

sentence = ["해와 바람과 별과 시", "동해물과 백두산이 마르고 닳도록", "학교 종이 땡땡땡", "반짝반짝 작은 별"]
start = time.time()
opportunity = 5
count = 1

print("--- 타자 연습 게임 ---")
while True:
    question = random.choice(sentence)
    print("다음과 같이 입력하세요 : {}".format(question))
    userAnswer = input()
    if userAnswer == question:
        print("GOOD!")
        if count == 5:
            print("YOU WIN!")
            break    
        count += 1
    else:
        print("BAD.. 남은 기회 : {}".format(opportunity))
        if opportunity == 0:
            print("YOU LOSE!")
            break
        opportunity -= 1
    
    question = random.choice(sentence)

end = time.time()
total_time = end - start
print("타자 시간 : {}".format(total_time))