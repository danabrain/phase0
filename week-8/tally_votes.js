// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Tests 1-4:

// Input: votes object
// Output: completed voteCount object

// 1.  Move through each property in "votes"
// 2.  For each property (voter's name), move through each sub-property (their votes for each officer position)
// 3.  Create a property inside each officer property in "voteCount" to correspond with each name that is voted for (for example, if Bob receives a vote for president, create a "Bob" property inside the "president" object inside "voteCount")
// 4.  Tally the number of votes each person receives (perhaps check to see if the name property already exists inside an officer object, and if not, create it and set the value equal to one.  If it does already exist, add one to it when the name is voted for again.)

// Tests 5-8

// Input: voteCount object
// Output: complete officers object

// 1.   Move through each property in voteCount and find the highest value (highest number of votes)
    // a.  This may be done by sending key/value pairs to a nested array, and then sorting the array by the vote values
    // b.  Populate the "officers" object with the highest voted person by accessing the name with the highest number of votes from sorted nested array

// __________________________________________
// Initial Solution

// for(var voter in votes){
//   if (voteCount.president.hasOwnProperty(votes[voter].president)) {
//     voteCount.president[votes[voter].president] += 1;;
//   }
//   else {
//     voteCount.president[votes[voter].president] = 1;
//   }
// }

// for(var voter in votes){
//   if (voteCount.vicePresident.hasOwnProperty(votes[voter].vicePresident)) {
//     voteCount.vicePresident[votes[voter].vicePresident] += 1;;
//   }
//   else {
//     voteCount.vicePresident[votes[voter].vicePresident] = 1;
//   }
// }

// for(var voter in votes){
//   if (voteCount.secretary.hasOwnProperty(votes[voter].secretary)) {
//     voteCount.secretary[votes[voter].secretary] += 1;;
//   }
//   else {
//     voteCount.secretary[votes[voter].secretary] = 1;
//   }
// }

// for(var voter in votes){
//   if (voteCount.treasurer.hasOwnProperty(votes[voter].treasurer)) {
//     voteCount.treasurer[votes[voter].treasurer] += 1;;
//   }
//   else {
//     voteCount.treasurer[votes[voter].treasurer] = 1;
//   }
// }

// //Now, turn each officer property inside voteCount into an Array of names and number of votes for each name:

// function sortVotes(object) {
//   var sorting_array = [];
//   for (var student in object)
//     sorting_array.push([student, object[student]]);

//     sorting_array.sort(function(a, b) {return b[1]-a[1];});

//     return(sorting_array[0][0]);
// }

// officers.president = sortVotes(voteCount.president);
// officers.vicePresident = sortVotes(voteCount.vicePresident);
// officers.secretary = sortVotes(voteCount.secretary);
// officers.treasurer = sortVotes(voteCount.treasurer);

// console.log(officers);
// __________________________________________
// Refactored Solution

//loop through positions in officers object
for (officeName in officers) {
    //loop through voters in votes object
    for (var voterName in votes) {
      //increment by 1 in voteCount if the name property already exists
      if (voteCount[officeName].hasOwnProperty(votes[voterName][officeName])) {
      voteCount[officeName][votes[voterName][officeName]] += 1;;
    }
    else {
      //add the property and set the count equal to 1 if it does not
      voteCount[officeName][votes[voterName][officeName]] = 1;
    }
  }
}

console.log(voteCount);

//loop through the positions in officers object
for (officeName in officers) {
  //create an array to hold the names and corresponding vote counts for sorting
  var unsorted = [];
  //loop through each student who recieved votes for an office inside voteCount
  for (var student in voteCount[officeName])  {
    //create a nested array with student names and vote tallies for current office
    unsorted.push([student, voteCount[officeName][student]])
  }
    //sort the array using this function I found online :)
    sorted = unsorted.sort(function(a, b) {return b[1]-a[1];});
    //add the value of the student with the most votes to the corresponding office
    officers[officeName] = sorted[0][0];
}

console.log(officers);


// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?

// I learned that you can use the "for x in object" method, which was very helpful.  I also learned that you can loop iterations within iterations, which was tricky and required a lot of double testing and console.log's but ultimately made the refactore work nicely.

// Were you able to find useful methods to help you with this?

// Yes, the "for x in object" mentioned above.  I also searched and found the .sort() function.

// What concepts were solidified in the process of working through this challenge?

// I still feel a little rough with all of this, it was a lot of trial and error and researching things.  I'm hoping the review next week will help solidify a lot of these concepts for me.



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)