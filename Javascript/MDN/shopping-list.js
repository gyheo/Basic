let button = document.getElementsByTagName("button");
let item = document.getElementById("item");
let shoppingList = document.getElementById("shoppingList");

button[0].addEventListener("click", function(){
    let li = document.createElement('li');
    li.innerHTML = item.value;
    shoppingList.appendChild(li);

    item.value = "";
    item.focus();
});