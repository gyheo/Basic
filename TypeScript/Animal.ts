class Animal {
    name: string;
    age: number;
    constructor(theName: string) {
        this.name = theName;
    }
    // Multiple constructor implementations are not allowed.
    // constructor(theName: string, theAge: number) {
    //     this.name = theName;
    //     this.age = theAge;
    // }
    move(distanceInMeters: number = 0) {
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
let dog2 = new Dog("Chiwawa", 4);
const koala = new Koala("KoKo");

alert(dog.name);
dog.bark();
dog.move();
dog.bark();

alert(koala.name);
koala.cry();
koala.move();
koala.cry();