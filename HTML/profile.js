let todayStandard = document.querySelector('.todayStandard');
let footer = document.querySelector('footer');
let h1 = document.createElement('h1');

todayStandard.appendChild(h1);
let span = document.getElementById("todayYear");

let today = new Date();

let year = today.getFullYear();
let month = today.getMonth() + 1;
let day = today.getDay();

h1.style.textAlign = "center";
h1.innerHTML = `${year}년 ${month}월 ${day}일 기준`;

span.innerHTML = `${year}`;