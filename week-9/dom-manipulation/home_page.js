// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").classList.add("done");

// Release 1:
document.getElementById("release-1").style.display = "none";


// Release 2:
document.getElementsByTagName('h1')[0].textContent = "I completed release 2.";



// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 4:
var newFont = document.querySelectorAll(".release-4");
for (var i = 0; i < newFont.length; i++) {
    newFont[i].style.fontSize = "2em";
}


// Release 5:
var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

/* REFLECTION:
What did you learn about the DOM?
  I learned that you can use the DOM and use JavaScript to manuiplate content on a webpage pretty easily.
What are some useful methods to use to manipulate the DOM?
  First you always have to delcare the document and then you can use methods to change background color, text size, and also display other content that may not be on the page
*/