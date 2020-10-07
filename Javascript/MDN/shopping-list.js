let button = document.querySelector("button");
let item = document.querySelector("#item");
let shoppingList = document.querySelector("#shoppingList");
let hashMap = new Map();
let order = [];
let index = 0;

function init() {
  item.focus();

  for (let i = 0; i < localStorage.length; i++) {
    order.push(localStorage.key(i));
    hashMap.set(i, localStorage.getItem(order[i]));
  }

  // 순서 오름차순 정렬
  order = order.sort(function (a, b) {
    return a - b;
  });

  for (let i = 0; i < order.length; i++) {
    // console.log(localStorage.getItem(order[i]));
    // LocalStorage 에서 저장된 list 출력
    let li = MakeLi(localStorage.getItem(order[i]), order[i]);

    shoppingList.appendChild(li);
  }

  // li의 index 설정, 아무것도 없었을 경우 0부터 시작
  if (localStorage.length == 0) {
    index = 0;
  } else {
    index = parseInt(order[order.length - 1]) + 1;
  }

  item.addEventListener("keyup", function (event) {
    if (event.keyCode == 13) {
      AddItems();
    }
  });

  button.addEventListener("click", AddItems);
}

function MakeLi(liValue, liIndex) {
  let li = document.createElement("li");
  li.setAttribute("id", liIndex.toString());

  let deleteButton = document.createElement("button");

  deleteButton.innerHTML = "Delete";
  deleteButton.addEventListener("click", function () {
    let id = deleteButton.parentElement.getAttribute("id");
    localStorage.removeItem(id.toString());
    deleteButton.parentElement.remove();
  });

  li.innerHTML = liValue;
  li.appendChild(deleteButton);

  return li;
}

function AddItems() {
  let li = MakeLi(item.value, index);

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
