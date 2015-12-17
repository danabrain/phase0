// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body');
h1 = $('h1');
img = $('img');
div = $('div');
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('.cohortname').css({"color":'red', "border":'solid',"visibility":'visible'});

$('.cohortname').html("cohort chorus frogs");

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.adoptapond.info/guide_images/Chorus%20Frog.jpg').css({border: '0 solid black'}).animate({
  borderWidth: 4}, 500);
  });

$('img').on('mouseleave', function(e) {
  e.preventDefault()
  $(this).attr('src', 'devbootcamp-logo-new.png').animate({
    borderWidth: 0}, 500);
});

// RELEASE 5: Experiment on your own
// $('img').on('mouseover', function(e) {
//   // e.preventDefault()
//   $('this').animate({
//   opacity: .5,
//   height: "50%"
// })
// });





});  // end of the document.ready function: do not remove or write DOM manipulation below this.

Reflection:


// What is jQuery?

// JQuery is a lightweight Javascript library that allows you to manipulte the DOM with ease.

// What does jQuery do for you?

// All kinds of things!  Cool things like animations, or changing html or css elements when a mouse rolls over an element.  JQuery makes pages interactive and brings them to life.

// What did you learn about the DOM while working on this challenge?

// I learned that I can select elements and manipulate them without changing the code for good (e.g. animate function.)