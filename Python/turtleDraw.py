import turtle as t


def clear():
    t.clear()


t.speed(0)
t.pensize(5)
t.color("green")
t.hideturtle()
t.onscreenclick(t.goto)
t.onkeypress(clear, "Escape")
t.listen()
t.mainloop()
