// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var my_num = 1

console.log(my_num + 4);

// Program to ask favorite food:

// myFood = String(prompt("What's your favorite food?"))
// alert(myFood + " is my favorite food too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var mySymbol = "#"
for (var number = 0; number < 8; number++) {
  console.log(mySymbol)
  mySymbol += "#"
}


// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
  if (num1 < num2)
    return num1;
  else
    return num2;
}

console.log(min(3,4));
console.log(min(9,15));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Dana",
  age: 36,
  favorite_foods: ["kale", "avocado", "cupcake"],
  quirk: "Write with both hands at once"
};

console.log(me);