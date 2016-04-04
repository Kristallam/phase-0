//9.2.2

//Pseudocode - FizzBuzz Super Edition JavaScript
//Input: takes an array of integers
//Output: if it's multples of 3, it will be "Fizz", if it is multiples of 5, it will be "Buzz", if it is Multiples of 15 it will be "FizzBuzz", other than that it will be a number
//Steps:
  //Create a Variable super_fizzbuzz
  //give that variable an empty array
  //within the empty array write an IF statement that. IF multples of 3 RETURN "fizz" and push it to the end of the array.
  //IF multiples of 5 RETURN "Buzz" and push it to the ne dof the array
  //IF multiples of 15 RETURN "FizzBuzz" and push it to the ne dof the array

//Inital solution


function superFizzbuzz(array){
    var newArray = [];

    for(var i in array){
      if(array[i] % 15 == 0)
        newArray.push("FizzBuzz");
      else if(array[i] % 5 == 0)
       newArray.push("Buzz");
      else if(array[i] % 3 == 0)
        newArray.push("Fizz");
      else
        newArray.push(array[i]);
    }
    return newArray
}



console.log(superFizzbuzz([13,10,5,9,25,]));

/*
Reflection
What concepts did you solidify in working on this challenge?
  The beginning of this challenge was hard because I kept writing the IF statments like I would in ruby and for some reason it wasn't working. Then I finally realized that I was writing the statement wrong. I think just JS in general was more soldifing
What was the most difficult part of this challenge?
  The most difficult part of this chllenge was getting my code to run, there is something wrong with it but I don't know what it is yet.
Did you solve the problem in a new way this time?
  I solved it similar to the way I did in Ruby, I did however use the for...in loop for JS.
Was your pseudocode different from the Ruby version? What was the same and what was different?
  My pesudocode was pretty much the same from the Ruby verison, there wasn't much difference there.
*/

//9.2.1 JavaScript Grocery List

//Release 1: User Stories
// I want to create a new list that has at least three items
// I want to add an item and its quantity to the list
// I want to remove an item from the list
// I want to update quanities for items that are in my list
// I want to print the list

//Release 2: pesudocode
// I want to create an OBJECT groceryList that will take the item and the quanity
// add an item with its quanity to the object groceryList
// Delete an item from the OBJECT
// UPDATE quanities of items in my list
// RETURN the list

//Release 3: Inital Solution
//creating the object with the items and their quanities
var groceryList = {
  water: 2,
  apples: 5,
  pasta: 2,
}

//adding banana to the grocery list
groceryList.banana = 3;

console.log(groceryList);

//delete an item from the grocery list
delete groceryList.water;

console.log(groceryList);


//Update the quanities of items in the list
groceryList.apples = 10;
groceryList.pasta = 5;

console.log(groceryList);

//return the list
var newList = '';
for (var property in groceryList) {
  newList += property + ': ' + groceryList[property] + '; ';
}

console.log(newList);

/* Reflection

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  What was solidifying for me in this challnege was learning how to use objects more and also I learned how to display it into a list which was really helpful as well.
What was the most difficult part of this challenge?
  The most difficult part of this challenge was when I had to put the onkect and it's property into a new list
Did an array or object make more sense to use and why?
  An object made more sense because I was able to assign the item a quanity and was able to add, delete, and update the object very easily
*/