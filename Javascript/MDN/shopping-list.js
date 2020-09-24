let button = document.querySelector("button");
let item = document.querySelector("#item");
let shoppingList = document.querySelector("#shoppingList");
let index = 0;

function init() {
  item.focus();

  if (localStorage.length > 0) {
    for (let key = 0; key < localStorage.length; key++) {
      let li = document.createElement("li");
      li.setAttribute("id", key);

      let deleteButton = document.createElement("button");

      deleteButton.innerHTML = "Delete";
      deleteButton.addEventListener("click", function () {
        localStorage.removeItem(key.toString());
        deleteButton.parentElement.remove();
      });

      li.innerHTML = localStorage.getItem(key);
      li.appendChild(deleteButton);

      shoppingList.appendChild(li);
    }
  }

  item.addEventListener("keyup", function (event) {
    if (event.keyCode == 13) {
      AddItems();
    }
  });

  button.addEventListener("click", AddItems);
}

function AddItems() {
  let li = document.createElement("li");
  li.setAttribute("id", index);
  index = index + 1;
  let deleteButton = document.createElement("button");

  deleteButton.innerHTML = "Delete";
  deleteButton.addEventListener("click", function () {
    localStorage.removeItem(index.toString());
    index = index - 1;
    deleteButton.parentElement.remove();
  });

  li.innerHTML = item.value;
  li.appendChild(deleteButton);

  if (item.value.trim() == "") {
    return;
  }

  shoppingList.appendChild(li);
  localStorage.setItem(index.toString(), item.value);

  item.value = "";
  item.focus();
}

init();
