const select = document.querySelector('select');
const html = document.querySelector('html');
document.body.style.padding = '10px';

function update(bgColor, text) {
    html.style.backgroundColor = bgColor;
    html.style.color = text;
}

select.onchange = function () {
    // (select.value === 'black') ? update('black', 'white') : update('white', 'black');

    if(select.value === 'black') {
        update('black', 'white');
    } else {
        update('white', 'black');
    }
}