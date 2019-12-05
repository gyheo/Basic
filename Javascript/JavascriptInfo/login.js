// gyheo 2019.11.30 Logical Operators Tasks #9, Check the login
let admin = prompt('Who\'s there?', '');

if (admin.toLowerCase() == 'admin') {
    let password = prompt('password?', '');

    if (password == 'qwerty') {
        alert('Welcome!');
    } else if (password == '') {
        alert('Canceled');
    } else {
        alert('Wrong password');
    }
} else if (admin == '') {
    alert('canceled');
} else {
    alert('I don\'t know who you are');
}