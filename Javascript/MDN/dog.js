const dogs = ["jindo", "gold", "pungsan"];
let info = "My dog name is ";
const para = document.querySelector('p');

for (let i = 0; i < dogs.length; i++) {
    info += dogs[i] + ", ";
}

para.textContent = info;