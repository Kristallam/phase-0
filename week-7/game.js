// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: The wizard must escape the ogre's layer. The wizard will be running out of the layer as the ogre is chasing him. To run faster the wizard must collect potions as he runs. If the ogre catches up to him he will eat him. If the wizard gets out of the layer without being eaten he will be free!
// Overall mission: The wizard must escape the ogre layer before the ogre catches up. To run faster the wizard must collect potions along the way to boost his speed. The potion will also allow the ogre to run faster as well. The potion will have half the effect on the ogre than the wizard.
// Goals: The goal is to escape the ogre's layer without being eaten.
// Characters: A wizard and a ogre
// Objects:
    // Wizard
    // Evil Ogre
// Functions:
    // IF the Wizard gets potion THEN speed +2, ELSE speed -2
    // IF the Ogre gets potion THEN speed +1, ELSE speed -1
    // IF speed EQUALS 0 then ogre will eat wizard, RETURNS "GAME OVER, YOU WERE EATEN!"
// Pseudocode
// create an object Wizar with these charateristics Postion, Weapon, Speed
// create an object Ogre with these charateristics Postion, Weapon, Speed
//IF Wizard obtains potion THEN speed +2 ELSE speed -2
//IF wizard speed > ogre speed, return "YOU HAVE ESCAPED!" ELSE IF wizard speed == ogre speed return "GAME OVER, YOU WERE EATEN!"

// Initial Code
var wizard = {
  weapon: "Wand",
  speed: 0,
  potion: 0,
  position: 0,
}
console.log(wizard);

var ogre = {
  weapon: "Hammer",
  speed: 0,
  potion: 0,
  position: 0,
}
console.log(ogre);


//function that allows the speed of the wizard/ogre to be faster or slower, depending if they get a potion or not
function escape(getPotion){
  if(getPotion > 0){
    wizard.speed += 2;
    ogre.speed += 1;
  }
  else if(getPotion == 0){
    wizard.speed -= 2;
    ogre.speed -= 1;
  }
}
escape(0); //This will say that you have escaped and won!

function move(playerSpeed){
  if(playerSpeed + 1){
    wizard.position +=5;
    ogre.position +=5;
  }
  else if(playerSpeed - 1){
    wizard.position +=5;
    ogre.positon +=5;
  }
}
move(1);


if (wizard.speed > ogre.speed){
    console.log("YOU WIN! YOU HAVE ESCAPED!");
}

else if (wizard.speed < ogre.speed){
    console.log("GAME OVER, YOU ARE EATEN!");
}


// Refactored Code



/* REFLECTION
What was the most difficult part of this challenge?
  I think what the most difficult part of this challenege was for me was how open ended it was. I honestly had a lot of ideas and a lot of things I wanted to do but I had no idea how to do it as I started to code. This kind of makde me realized how something may seem very simple in my mind but be really complicated when I want to put it in code.
What did you learn about creating objects and functions that interact with one another?
  I learned throughout this challenge that I can use the objects throughout my functions by calling the object.attribute. This is pretty cool because I didn't have to keep creating new variables. I also learned more about just braeking down what I'm thinking into code a lot more. I really wish I knew more so I could build more of what I was thinking more in detail
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  I kept my game pretty simple here, there wasn't much I felt like I needed to refactored nor did I have to use any built in methods. I think I could've made my code more complicated and used more built in method. I think that is what I really struggled with during this challenge. It was exceuting what I really wanted to do but not knowing the code to do it. So I ended up writing pretty basic funtions.
How can you access and manipulate properties of objects?
  By calling the object.attribute I was able to access the propties of the objects and I did IF statements to add more to the speed so you can see if the wizard was faster he would win and if the oger was as fast as the wizard then the oger would have eaten the wizard.
*/