// gyheo 2019.12.02 Functions Task #2, Function min(a, b) / Function pow(x, n)
function min(a, b) {
    return (a < b) ? a : b;
}

function pow(x, n) {
    let result = x;

    for(let i = 1; i < n; i++)
        result = result * x;
    
    return result;
}

console.log(min(3, 5));
console.log(min(4, 4));

console.log(pow(2, 10));
console.log(pow(5, 3));
