let status = true;
const timeBoard = document.querySelector(".time-board");
const duration = document.createElement("h2");
const triggerButton = document.querySelector(".trigger");

function init() {
  // Date date = new Date();
  let date;
  let startTime = 0,
    endTime;

  triggerButton.addEventListener("click", function () {
    if (status) {
      startTime = new Date();
      triggerButton.innerHTML = "Stop";
      duration.remove();
      status = false;
    } else {
      endTime = new Date();
      triggerButton.innerHTML = "Start";

      // console.log(startTime);
      // console.log(endTime);

      let timeDiff = endTime - startTime;
      let resultSeconds = Math.floor((timeDiff % (1000 * 60)) / 1000);

      duration.innerHTML = `${resultSeconds}초 입니다.`;
      timeBoard.appendChild(duration);
      status = true;
    }

    // console.log(seconds);
  });
}

init();
