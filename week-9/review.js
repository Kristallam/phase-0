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

  for(var i in newArray){
    if(i % 15 === 0) {
      newArray.push("FizzBuzz");
    } else if(i % 5 === 0) {
          newArray.push("Buzz");
      } else if(i % 3 === 0) {
              newArray.push("Fizz");
          } else {
                newArray.push(i);
            }
            return newArray;
            }
  };


console.log(superFizzbuzz([13,10,5,9]));

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