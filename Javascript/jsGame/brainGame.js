while(true) {
    let num1 = Math.floor(Math.random() * 9 + 1);
    let num2 = Math.floor(Math.random() * 9 + 1);
    let answer = num1 * num2;

    let userAnswer = prompt(`${num1} X ${num2} = ? (0 is quit)`);

    if(parseInt(userAnswer) == answer) {
        alert('PASS!');
    } else if(parseInt(userAnswer) == 0) {
        break;
    } else {
        alert('NOPE!');
    }
}