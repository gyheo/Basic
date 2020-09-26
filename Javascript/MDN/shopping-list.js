let button = document.querySelector("button");
let item = document.querySelector("#item");
let shoppingList = document.querySelector("#shoppingList");
let order = [];
let index = 0;

function init() {
  item.focus();

  console.log(localStorage);

  for (let i = 0; i < localStorage.length; i++) {
    order.push(localStorage.key(i));
  }

  // 순서 정렬
  order.sort();

  for (let i = 0; i < order.length; i++) {
    let li = document.createElement("li");
    li.setAttribute("id", order[i].toString());

    let deleteButton = document.createElement("button");

    deleteButton.innerHTML = "Delete";
    deleteButton.addEventListener("click", function () {
      let id = deleteButton.parentElement.getAttribute("id");
      localStorage.removeItem(id.toString());
      deleteButton.parentElement.remove();
    });

    li.innerHTML = localStorage.getItem(order[i]);
    li.appendChild(deleteButton);

    index = index + 1;

    shoppingList.appendChild(li);
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

  let deleteButton = document.createElement("button");

  deleteButton.innerHTML = "Delete";
  deleteButton.addEventListener("click", function () {
    let id = deleteButton.parentElement.getAttribute("id");
    localStorage.removeItem(id.toString());
    deleteButton.parentElement.remove();
  });

  li.innerHTML = item.value;
  li.appendChild(deleteButton);

  if (item.value.trim() == "") {
    return;
  }

  shoppingList.appendChild(li);
  localStorage.setItem(index.toString(), item.value);
  index = index + 1;

  item.value = "";
  item.focus();
}

init();
