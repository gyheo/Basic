// gyheo 2019.12.03 Object #1, Hello object

let user = {};

user.name = 'John';
user.surname = 'Smith';
user.name = 'Pete';
delete user.name;

console.log(user.name);
console.log(user.surname);
