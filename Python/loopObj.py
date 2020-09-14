import turtle as t

t.speed(-1)
t.bgcolor("black")
t.color("green")

for i in range(60):
    t.circle(100)
    t.left(6)

# t.clear()

t.color("yellow")

for i in range(350):
    t.forward(i + 10)
    t.left(89)