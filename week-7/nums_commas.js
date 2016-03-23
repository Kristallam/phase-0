// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Alex Wen

// Pseudocode
// Input: Integer, number
// Output: Input number with commas placed correctly throughout number
// Steps:
    // Take a number as the input
    // Create a FUNCTION called seperate_comma
      //Within the FUNCTION count every three REVERSED
      //Insert the comma after every three
      //PRINT the number

// Initial Solution
function seperate_comma(number){

  var reversed = number.toString().split("").reverse();

  var reversed_comma = [];
  var x = 0; //counter

  for(value of reversed){
    if (x < 3){
      x += 1;
      reversed_comma.push(value);
    }
    else {
      value = value + ",";
      x = 1;
      reversed_comma.push(value);
    }
  }

  var final_number = reversed_comma.reverse().join("");

  console.log(final_number);
}


// Refactored Solution
function seperate_comma(number){

  var reversed = number.toString().split("").reverse();

  var reversed_comma = [];
  var x = 0; //counter

  for(value of reversed){
    if (x < 3){
      x += 1;
      reversed_comma.push(value);
    }
    else {
      value = value + ",";
      x = 1;
      reversed_comma.push(value);
    }
  }

  var final_number = reversed_comma.reverse().join("");

  console.log(final_number);
}

// Your Own Tests (OPTIONAL)

seperate_comma(1);
seperate_comma(11);
seperate_comma(111);
seperate_comma(1111);
seperate_comma(11111111111111111);

/*
Reflections
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  I think we approached the same during the pesudocode but then when it got to the intital solution we had to google and research a lot to see what the interators/loops do and how to actually use it. So then the approcach changed a little but overall it was about the same.

What did you learn about iterating over arrays in JavaScript?
  We did a for (value of reserved), I thought this was pretty different from Ruby, which kind of surprised me. The JS way to interate seems more englishy than the Ruby way.

What was different about solving this problem in JavaScript?
  It harder to get going and had to research a lot when we were stuck but over all the logic was pretty similar.

What built-in methods did you find to incorporate in your refactored solution?
  We used .reverse .join .split .push. I saw that there were more complex built in methods but we didn't use those yet.
*/