import time

input("Enter를 입력하고 20초 세기")
start = time.time()


input("20초후 엔터 누르기")
end = time.time()

result = end - start
print("실제 시간 ", result , "초")
print("차이 : ", abs(result - 20), "초")