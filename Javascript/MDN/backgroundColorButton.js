const backgroundColorButton = document.querySelector("#backgroundColorButton");

backgroundColorButton.onclick = function () {
    const randomColor = 'rgb(' + Math.random() * 255 + ',' + Math.random() * 255 + ',' + Math.random() * 255 + ')';
    document.body.style.backgroundColor = randomColor;
}