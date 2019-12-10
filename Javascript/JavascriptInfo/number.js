// gyheo 2019.12.10 Numbers Task #2, A random Integer min to max
function randomInteger(min, max){
    return Math.floor(min + Math.random() * (max + 1 - min));
}

alert(randomInteger(1, 5));
alert(randomInteger(1, 5));
alert(randomInteger(1, 5));