import turtle as t

screen = t.Screen()


def changeBgRed():
    t.bgcolor("red")


def changeBgGreen():
    t.bgcolor("green")


def changeBgBlue():
    t.bgcolor("blue")


def turnRight():
    t.setheading(0)
    t.forward(20)


def turnLeft():
    t.setheading(180)
    t.forward(20)


def turnUp():
    t.setheading(90)
    t.forward(20)


def turnDown():
    t.setheading(270)
    t.forward(10)


t.shape("turtle")
t.speed(0)

screen.onkeypress(changeBgRed, "r")
screen.onkeypress(changeBgGreen, "g")
screen.onkeypress(changeBgBlue, "b")

screen.onkeypress(turnRight, "Right")
screen.onkeypress(turnLeft, "Left")
screen.onkeypress(turnUp, "Up")
screen.onkeypress(turnDown, "Down")
t.listen()
t.mainloop()
