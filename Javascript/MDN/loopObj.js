window.addEventListener("onload", init());

function init() {
  setInterval(drawCircle, 1000);
}

function drawCircle() {
  let today = new Date();
  let seconds = today.getSeconds();

  let canvas = document.getElementById("canvas");
  let ctx = canvas.getContext("2d");
  let radius = 100;

  ctx.strokeStyle = "rgba(0, 110, 200, 0.5)";

  let circleX = 250 + Math.cos((Math.PI / 8) * seconds) * radius;
  let circleY = 250 + Math.sin((Math.PI / 8) * seconds) * radius;
  // ctx.arc(250, 250, 10 * i, 0, Math.PI * 2, false);
  ctx.beginPath();
  ctx.arc(circleX, circleY, radius, 0, Math.PI * 2, true);
  ctx.stroke();
}
