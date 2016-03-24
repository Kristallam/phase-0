 // JavaScript Olympics

// I paired [by myself, with: Renan Martinez] on this challenge.

// This challenge took me [1] hours.


// Warm Up


// Bulk Up
var athlete1 = {
  name: 'Jack',
  event: 'Running'
};

var athlete2 = {
  name: 'Sarah',
  event: 'Jumping'
};

var athleteArray = [];
athleteArray.push(athlete1);
athleteArray.push(athlete2);

console.log(athleteArray);

function win(athletes){
  for (athlete of athletes){
    athlete.win = athlete.name + ' won the ' + athlete.event + ' event';
  }
}

win(athleteArray)
console.log(athlete1);

// Jumble your words

function reverseString(string) {
  //var reversedString = string.split("").reverse();
  //console.log(string);
  //return reversedString.join("");
  return string.split("").reverse().join("");
}

console.log(reverseString("Hello hello you!"));


// 2,4,6,8

function evenNumbers(numbers){
  function evenNumber(number){
    return number % 2 == 0;
  }
  return numbers.filter(evenNumber);
}

// var filtered = [ 12, 14, 15, 6, 18, 9].filter(evenNumbers);

var array_num = [ 1, 2, 4, 5, 8, 9];

console.log(evenNumbers(array_num));


// "We built this city"

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

function Athlete() {
  this.name = "Michael Phelps";
  this.age = 29;
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!";
};


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//   The knowledge that I solidify was working with funtions and just more knowledge with JS overall.
// What are constructor functions?
//   Constructor functions build objects, similar to Ruby    intalizing like the @.
// How are constructors different from Ruby classes (in your research)?
//   Constructor objects create is like Ruby intalize where you create an object. When you use constructors it is different from ruby because in ruby you use @ to set an instance variable.