// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var ten = 10;
console.log(ten * ten * ten);

prompt("What is your favorite food?");
"Chinese"
alert("Hey! That's my favorite too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

 for (var i=1; i <= 100; i++)
{
  if ((i % 3 == 0) && (i % 5 == 0))
    console.log("FizzBuzz");
  else if (i % 3 == 0)
    console.log("Fizz");
  else if (i % 5 == 0)
    console.log("Buzz");
  else
    console.log(i);
}

// Functions

// Complete the `minimum` exercise.

var min = function(x,y) {
  return (x <= y) ? x : y;
};

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Kristal",
  age: 23,
  favorite_food: ["Fish", "Noodles", "Salad"],
  quirk: "Only Child"
};

console.log(me.quirk);

