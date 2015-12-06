// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Take an integer as input and return integer separated by commas as output.

//   1. Convert integer to string
//   2. Reverse string so we iterate backwards
//   3. Convert string to array so we can use indices to count
//   4. Move through array and if index % 3 === 0 insert a comma
//   5.  Reverse the number and convert back into a string



// Initial Solution
// function numsCommas(some_num) {
//   some_num = some_num.toString();

//   var new_string = '';
//   for (var i=some_num.length -1; i>=0; i--)
//     new_string += some_num[i];

//   num_holder = [];
//   for (var i=0; i < new_string.length; i++)
//     num_holder.push(new_string[i]);

//   for (var i=0; i < num_holder.length; i++)
//     if (i%3===0) {
//       num_holder[i] = num_holder[i] + ",";
//     }

//    my_string = "";
//    for (var i=num_holder.length-1; i>=0; i--)
//     my_string += num_holder[i];

//    new_holder = my_string.split("");

//    if (new_holder[-1]===",") {
//    new_holder.pop();
//     }

//    final_string = "";
//    for (var i=0; i<=new_holder.length-1; i++)
//     final_string += new_holder[i];

//   console.log(final_string);

// }


// var myNumber = 100000000
// numsCommas(myNumber);
// Refactored Solution

function numsCommas(some_num) {
  var num_holder = some_num.toString().split("").reverse();
  var solution_array = [];
    for (var i=0; i<num_holder.length; i++) {
      if (i%3 == 0) {
        solution_array.unshift(",");
      }
      solution_array.unshift(num_holder[i]);
    }

    var solution_string = solution_array.join("");
    solution_string = solution_string.slice(0, solution_string.length-1);
    console.log(solution_string);
}

var myNumber = 10000000
numsCommas(myNumber);


// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// I felt like my solution was probably pretty similar to my Ruby solution, but OMG it took so much longer with JavaScript---I kept trying to use Ruby methods (like "reverse" on a string and figuring out I can only reverse an array in JS.)

// What did you learn about iterating over arrays in JavaScript?

// I learned that for loops are my best friends for moving through an array, and that once I had the syntax of the loop set up, it was much the same as Ruby.

// What was different about solving this problem in JavaScript?

// Getting used to the syntax and different class methods in JavaScript.  My initial solution is really bulky because I was trying to understand what JS did in each little piece.  I know I repeated myself several times--it felt good to refactor it.

// What built-in methods did you find to incorporate in your refactored solution?

// SLICE FOR THE WIN!  I spent an hour trying to figure out how to get the damn trailing "0" off the end of the string without it (I'm not sure I actually succeeded).  Then, glorious slice showed up and my prayers were answered.  I realized using unshift made more sense than replacing the value with a string equivalent to the value + ","....that eliminated an entire step with converting to string and splitting to array again.