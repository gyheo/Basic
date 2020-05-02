const table = document.querySelector('table');
let XO = document.getElementsByName("XO");
let tableRows = document.querySelectorAll('tr');
let tableArrays = [];
function init() {
    // const form = document.querySelector("form");
    let turn = true;
    let player = XO[0].value; // player 처음은 X, computer는 O
    let computer = XO[1].value;
    for (let i = 0; i < 2; i++) {
        XO[i].addEventListener('change', function (event) {
            // 말 바꾸기
            if (XO[0].checked) {
                player = XO[0].value;
                computer = XO[1].value;
            }
            else {
                player = XO[1].value;
                computer = XO[0].value;
            }
        });
    }
    for (let i = 0; i < tableRows.length; i++) {
        tableArrays.push(tableRows[i].querySelectorAll('td'));
    }
    for (let i = 0; i < tableRows.length; i++) {
        for (let j = 0; j < tableArrays.length; j++) {
            tableArrays[i][j].addEventListener('click', function () {
                // 행, 열 표시
                // console.log(`${i}, ${j}`);
                XO[0].disabled = true;
                XO[1].disabled = true;
                // 빈 칸일 경우에만 X, O 입력 허용
                if (tableArrays[i][j].textContent === "") {
                    if (turn) {
                        tableArrays[i][j].textContent = player;
                        turn = false;
                    }
                    else {
                        tableArrays[i][j].textContent = computer;
                        turn = true;
                    }
                    let playerWin = false;
                    let computerWin = false;
                    if ((tableArrays[i][0].textContent == player && tableArrays[i][1].textContent == player && tableArrays[i][2].textContent == player) ||
                        (tableArrays[0][j].textContent == player && tableArrays[1][j].textContent == player && tableArrays[2][j].textContent == player) ||
                        (tableArrays[0][0].textContent == player && tableArrays[1][1].textContent == player && tableArrays[2][2].textContent == player) ||
                        (tableArrays[0][2].textContent == player && tableArrays[1][1].textContent == player && tableArrays[2][0].textContent == player)) {
                        playerWin = true;
                    }
                    if ((tableArrays[i][0].textContent == computer && tableArrays[i][1].textContent == computer && tableArrays[i][2].textContent == computer) ||
                        (tableArrays[0][j].textContent == computer && tableArrays[1][j].textContent == computer && tableArrays[2][j].textContent == computer) ||
                        (tableArrays[0][0].textContent == computer && tableArrays[1][1].textContent == computer && tableArrays[2][2].textContent == computer) ||
                        (tableArrays[0][2].textContent == computer && tableArrays[1][1].textContent == computer && tableArrays[2][0].textContent == computer)) {
                        computerWin = true;
                    }
                    if (playerWin || computerWin) {
                        if (playerWin) {
                            alert(`${player} WIN!`);
                        }
                        else {
                            alert(`${computer} WIN!`);
                        }
                        for (let i = 0; i < tableRows.length; i++) {
                            for (let j = 0; j < tableArrays.length; j++) {
                                tableArrays[i][j].textContent = '';
                            }
                        }
                        XO[0].disabled = false;
                        XO[1].disabled = false;
                    }
                }
            });
        }
    }
}
init();
