let someArray = [1, 'string', true];

for (let entry of someArray) {
    alert(entry);
}

let pets = new Set(["Cat", "Dog", "Horse"]);

pets["species"] = "mammals";

for (let pet in pets) {
    console.log(pet);
}

for (let pet of pets) {
    console.log(pet);
}
