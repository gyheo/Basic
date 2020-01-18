class Animal {
    constructor(theName) {
        this.name = theName;
    }
    move(distanceInMeters = 0) {
        console.log(`Animal moved ${distanceInMeters}m.`);
    }
}

class Dog extends Animal {
    bark() {
        console.log('Woof! Woof!');
    }
    move(distanceInMeters = 5) {
        console.log('Slithering...');
        super.move(distanceInMeters);
    }
}

class Koala extends Animal {
    cry() {
        console.log('Quack!');
    }
    move(distanceInMeters = 3) {
        console.log('Azang Azang');
        super.move(distanceInMeters);
    }
}
const dog = new Dog("Choco");
const koala = new Koala("KoKo");

alert(dog.name);
dog.bark();
dog.move();
dog.bark();

alert(koala.name);
koala.cry();
koala.move();
koala.cry();