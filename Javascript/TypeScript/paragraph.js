const paragraphButton = document.querySelector('#addParagraph');

paragraphButton.onclick = function () {
    let p = document.createElement('p');
    p.textContent = "I'm a paragraph tag in HTML";
    document.body.appendChild(p);
};
