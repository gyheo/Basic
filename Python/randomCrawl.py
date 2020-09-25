import turtle as t
import random

t.shape("turtle")
t.speed(0)

for count in range(500):
    angle = random.randint(1, 180)
    t.setheading(angle)

    distance = random.randint(1, 60)
    t.forward(distance)
