let button = document.querySelector("button");
let item = document.querySelector("#item");
let shoppingList = document.querySelector("#shoppingList");

function init() {
  item.focus();

  item.addEventListener("keyup", function (event) {
    if (event.keyCode == 13) {
      AddItems();
    }
  });

  button.addEventListener("click", AddItems);
}

function AddItems() {
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
}

init();
