/*
User Stories by Person 1

*Test For Sum*
1. As a user, I want to create a function called sum

2. As a user, I want the function sum to determine the sum of all elments in a list, even if the list has an odd number of elements

3. As a user, I want the function sum to determine the sum of all elments in a list, even if the list has an even number of elements

*Test For Mean*
4. As a user, I want to create a function called mean

5. As a user, I want to have the function mean determine the average of all elements in the list, even if list has an odd number of elements

6. As a user, I want to have the function mean determine the average of all elements in the list, even if list has an even number of elements

*Test For Median*
7. As a user, I want to create a function called median

8. As a user, I want to have the function median determine the median value of all elements within the list, even if the list has an odd number of elements

9.  As a user, I want to have the function median determine the median value of all elements within the list, even if the list has an even number of elements

*/

/*
Pseudocode by Person 2 (Samantha Holmes)
*Test For Sum*
  - define a function "sum" that takes in one argument: an array
  - add all elements in the array (list)
    - set it equal to a variable "sum"
  - return variable "sum"
  - end function "sum"
*Test For Mean*
  - define a function "mean" that take in one argument: an array
  - add all elements in the array (list)
    - divide this value by the length of the array
    - set this equal to a variable "mean"
  - return variable "mean"
  - end function "mean"
*Test For Median*
  - define a function "median" that takes in one argument: an array
  - check if the length of the array is an odd number or an even number
    - IF the length is odd
      - take the element at the index equal to the length divided by 2 (using integer division)
        - return this equal to a variable "median"
    - ELSE
      - take the element at the index equal to the length divided by 2
        - add this value to the element at the index equal to (the length divided by 2) minus 1
        - divide the summed value by 2 (using float division)
        - return this equal to a variable "median"
    - end IF/ELSE statement
  -end function "median"
*/

// JavaScript from Pseudocode; Person 3 (John Colella and Elizabeth Brown)

var sum = function(array) {
  var sum = 0
  for (var index = 0; index < array.length; index++) {
    sum += array[index]
  };
  return sum
};

var mean = function(array) {
  var sum = 0
  for (var index = 0; index < array.length; index++) {
    sum += array[index]
  };
  var mean = sum / array.length
  return mean
};

var median = function(array) {
  if (array.length % 2 != 0)
    var median = array[(array.length - 1) / 2];
  else
    var median = (array[array.length / 2] + array[array.length / 2 - 1]) / 2.0;
  console.log(median);
  return median;
};