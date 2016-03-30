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
// Go through each voter, go through each position, add number of times nominee shows up, push this value to voteCount
// Create a function that will count the voter's votes
  //Within the function we will set a counter that will go through each position and     count the vote
  //IF the nominees exist then you add a vote, if it does not it remains the same        number
  //ELSE it will create a new property with the value of 1

// Take the vote count results
// Created a function that went through each position
// Set winning value at zero
// Go through each nominee and compare their votes to the winning value
// __________________________________________
// Initial Solution

// var positions = ["president", "vicePresident", "secretary", "treasurer"];

// var counting = function() {
//   for (var voter in votes) {
//     for (var i=0; i<positions.length; i++) {
//       var nominees = positions[i];
//       if ((voteCount[nominees]).hasOwnProperty(votes[voter][nominees])) {
//         voteCount[nominees][votes[voter][nominees]]++;
//       }
//       else {
//         voteCount[nominees][votes[voter][nominees]] = 1;
//       }
//     }
//   }
// };

// counting();


// var winningOfficer = function() {
//     for (var position in voteCount) {
//         var winner_num = 0;
//         var winner = voteCount[position];

//     for (var nominee in winner){
//         if (winner_num < winner[nominee]){
//         winner_num = winner[nominee];
//         var newOfficer = nominee;
//         }
//     }
//       officers[position] = newOfficer
//     }

// };


// winningOfficer();

// __________________________________________
// Refactored Solution


var positions = ["president", "vicePresident", "secretary", "treasurer"];

var counting = function() {
  for (var voter in votes) {
    for (var i=0; i<positions.length; i++) {
      var nominees = positions[i];
      if ((voteCount[nominees]).hasOwnProperty(votes[voter][nominees])) {
        voteCount[nominees][votes[voter][nominees]]++;
      }
      else {
        voteCount[nominees][votes[voter][nominees]] = 1;
      }
    }
  }
};

counting();


var winningOfficer = function() {
    for (var position in voteCount) {
        var winner_num = 0;
        var winner = voteCount[position];

    for (var nominee in winner){
        if (winner_num < winner[nominee]){
        winner_num = winner[nominee];
        var newOfficer = nominee;
      }
    }

    officers[position] = newOfficer
  }

};


winningOfficer();

console.log(officers)

// __________________________________________
/*
Reflection
What did you learn about iterating over nested objects in JavaScript?
  We learned to really iterate over and over nested objects with the objects given. I have a better understanding with it now but there are still stuff that I am not too sure about.
Were you able to find useful methods to help you with this?
  yeah I found .hasOwnProperty which gives boolean, so this really worked because all our test codes were giving us true or false.
What concepts were solidified in the process of working through this challenge?
  I think the concept that was solidified during this challenege was using for .. in.. loop. now I understand more about it and how to use the loop over and over.
*/


// __________________________________________
// Test Code:  Do not alter code below this line.


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (voteCount.president["Bob"] === 3),
//   "Bob should receive three votes for President.",
//   "1. "
// )

// assert(
//   (voteCount.vicePresident["Bob"] === 2),
//   "Bob should receive two votes for Vice President.",
//   "2. "
// )

// assert(
//   (voteCount.secretary["Bob"] === 2),
//   "Bob should receive two votes for Secretary.",
//   "3. "
// )

// assert(
//   (voteCount.treasurer["Bob"] === 4),
//   "Bob should receive four votes for Treasurer.",
//   "4. "
// )

// assert(
//   (officers.president === "Louise"),
//   "Louise should be elected President.",
//   "5. "
// )

// assert(
//   (officers.vicePresident === "Hermann"),
//   "Hermann should be elected Vice President.",
//   "6. "
// )

// assert(
//   (officers.secretary === "Fred"),
//   "Fred should be elected Secretary.",
//   "7. "
// )

// assert(
//   (officers.treasurer === "Ivy"),
//   "Ivy should be elected Treasurer.",
//   "8. "
// )
