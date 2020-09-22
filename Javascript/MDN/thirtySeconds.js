let status = true;
const timeBoard = document.querySelector(".time-board");
const duration = document.createElement("h2");
const triggerButton = document.querySelector(".trigger");

function init() {
  // Date date = new Date();
  let date;
  let startTime = 0,
    endTime = 0;

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
      // 초 단위를 60으로 계속 표현하게 되면서 계산에 오류가 생겨 방식 변경
      let resultSeconds = timeDiff / 1000;
      duration.innerHTML = `${resultSeconds}초 입니다.`;
      timeBoard.appendChild(duration);
      status = true;
    }

    // console.log(seconds);
  });
}

init();
