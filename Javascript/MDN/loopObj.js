function init() {
  let canvas = document.getElementById("canvas");
  var ctx = canvas.getContext("2d");
  ctx.strokeStyle = "rgba(0, 0, 200, 0.5)";

  for (let i = 1; i <= 10; i++) {
    ctx.beginPath();
    ctx.arc(250, 250, 10 * i, 0, Math.PI * 2, false);
    ctx.stroke();
  }
}
