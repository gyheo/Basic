const table = document.querySelector('table');
let tableRows = document.querySelectorAll('tr');
let tableArrays = [];

function init() {
    
    for(let i:number = 0; i < tableRows.length; i++) {
        tableArrays.push(tableRows[i].querySelectorAll('td'));
    }
    
    for(let i:number = 0; i < tableRows.length; i++) {
        for(let j:number = 0; j < tableArrays.length; j++){
            tableArrays[i][j].addEventListener('click', function(){
                console.log(`${i}, ${j}`);
            });
        }
    }
}

init();