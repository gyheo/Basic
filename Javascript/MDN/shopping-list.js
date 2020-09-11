let button = document.getElementsByTagName("button");
let item = document.querySelector("#item");
let shoppingList = document.querySelector("#shoppingList");

function init() {
  button[0].addEventListener("click", function () {
    var num = 0;
    let li = document.createElement("li");
    let deleteButton = document.createElement("button");

    deleteButton.innerHTML = "Delete";
    deleteButton.addEventListener("click", function () {
      deleteButton.parentElement.remove();
    });

    li.innerHTML = item.value;
    li.appendChild(deleteButton);

    if (item.value.trim() == "") {
      return;
    }

    shoppingList.appendChild(li);

    item.value = "";
    item.focus();
  });
}

init();
