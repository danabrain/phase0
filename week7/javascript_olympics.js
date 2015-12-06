 // JavaScript Olympics

// I paired [by myself] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
// Input: array of athletes with name and event property
// Output: Add a win property to each athlete and print name, winning status, and event to the screen
// 1. Iterate through athletes array using loop
  // 2. For each athlete object, create a new property "outcome" and set it equal to "win"
  // 3. Print a string containing all three properties for each element in the athletes array

var win = function(athletes_array) {
  for (var index = 0; index < athletes_array.length; index++) {
     athletes_array[index].outcome = "won";
     console.log(athletes_array[index].name + " has " + athletes_array[index].outcome + " the " + athletes_array[index].oly_event + "." );
    }
}

athletes = [
  sarah = {
    name: "Sarah",
    oly_event: "discus"
  },

  jason = {
    name: "Jason",
    oly_event: "pole vault"
  }
]

win(athletes);
// Jumble your words
// Input: string
// Output: reversed string
// 1. Split string into array
// 2. Reverse array
// 3. Join array back into string

var reverse_string = function(a_string) {
  new_string = a_string.split('').reverse().join('');
  console.log(new_string);
}

var my_string = "I love JavaScript!";
reverse_string(my_string);


// 2,4,6,8
// Input: array of numbers
// Output: array containing even numbers from initial array
// 1. Iterate through each element in the array
// 2. Create a holding array
// 3. If the value is even, push into holding array
// 4. Print holding array

var evens = function(num_array) {
  answer_array = []
  for (var index = 0; index < num_array.length; index++) {
    if (num_array[index] % 2 === 0) {
      answer_array.push(num_array[index]);
    }
  }
  return answer_array;
}


var my_array = [1,2,3,4,5,6,7,8];
console.log(evens(my_array));

// "We built this city"
// Input: variable Athlete
// Output: string with properties of athlete
// 1. Create a function that accepts Athlete as an argument
// 2.

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// Feeling stronger about iterating through arrays and looking up methods in JS.

// What are constructor functions?

// They seem to operate similar to classes in Ruby--they are a blueprint for a new instance of an object that we will likely make more than once.

// How are constructors different from Ruby classes (in your research)?

// Seems like in a Ruby class you can create methods that are available to all the instances of the class, but in a javascript constructor, you can only create the object and functions specific to that object.
