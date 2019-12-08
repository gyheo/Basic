const powerButton = document.querySelector('button');
const status = document.querySelector('p');

powerButton.addEventListener('click', changeStatus);

function changeStatus() {
    if(powerButton.textContent === 'ON') {
        powerButton.textContent = 'OFF';
        status.textContent = 'The machine has started!';
    } else {
        powerButton.textContent = 'ON';
        status.textContent = 'The machine is stopped';
    }
}