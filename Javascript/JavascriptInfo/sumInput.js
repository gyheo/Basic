// gyheo 2019.12.11 Arrays Task, sumInput
function sumInput() {
    let arr = [];
    let sum = 0;

    while (true) {
        let val = prompt("A number please?", 0);

        if (val === '' || val === null || !isFinite(val))
            break;

        arr.push(parseInt(val));
    }


    for (let i = 0; i < arr.length; i++) {
        sum += arr[i];
    }

    return sum;
}


alert(sumInput());