const btn = document.querySelector("#btn");

// btn.onclick = function() {
//     let name: string = prompt("What is your name?", "");
//     alert('Hello! ' + name + ' nice to meet you!');
// }

// Practice a eventListener
btn.addEventListener('click', function() {
    let name: string = prompt("What is your name", "");
    alert(`Hello ${name} nice to meet you!`);
})