function add(x, y) {
    return x + y;
}
alert(add(10, 5));

let addFunction = function (x, y) { return x + y; };
alert(addFunction(10, -3));

function addFunc(x, y, z) {
    if (z)
        return x + y + z;
    else
        return x + y;
}

alert("2 + 4 + 8 = " + addFunc(2, 4, 8));
alert("2 + 4 = " + addFunc(2, 4));
