const bgBtn = document.querySelector("#bgBtn");

bgBtn.onclick = function() {
    const color = "rgb(" + (Math.random() * 255 + 1) + "," + (Math.random() * 255 + 1) + "," + (Math.random() * 255 + 1) + ")";
    document.body.style.backgroundColor = color;
}