// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: It's sunrise at burning man and you want to find your friends!
// Goals: Find your friends so you can watch the sunrise and avoid the hippie traps (cuddle puddles, interactive art, mimosas) that are EVERYWHERE.
// Characters: Burnie the burner; friendGroup, hippieTraps
// Objects: Burnie(playa_location, energy, time); hippieTraps (energy_suck, time_suck);
// Functions: deepPlaya, shortRange, longRange

// Pseudocode
//1.  Declare burner object (Burnie) that will have the properties playa_location, energy, and time.
//2.  Write a method that will move Burnie around the playa according in different ways, and will detract from his energy and time.
//3.  Declare one or more hippie-trap objects that will suck additional energy and time from Burnie if he encounters them
//4.  Declare friend object (friendGroup) with a fixed location.
//5.  When Burnie moves around the playa, the hippieTraps will also change location (since he will be in a different place with different traps)  Maybe some hippieTraps will increase his energy by giving him coffee and snacks.
//6.  If he gets to his friends with time and energy to spare, he wins.  If he runs out of energy or time before finding his friends, he loses.

// Initial Code
var burnie = {
    time_left: 300,
    posX: 0,
    posY: 0,
    foundFriends: false,

// How to move burnie
wander: function(where) {
    if (where === 'deepPlaya') {
      burnie.time_left -= 100;
      burnie.posX += 50;
      burnie.posY += 50;
      burnie.position = ''
      burnie.advice = ''
    }
    if (where ==='artCar') {
      burnie.time_left -= 75;
      burnie.posX += Math.floor((Math.random()*40)+1);
      burnie.posY -= Math.floor((Math.random()*40)+1);
      burnie.position = ''
      burnie.advice = ''
    }
    if (where ==='shortRange') {
      burnie.time_left -= 25;
      burnie.posX -= Math.floor((Math.random()*20)+1);
      burnie.posY -= Math.floor((Math.random()*20)+1);
      burnie.position = ''
      burnie.advice = ''
    }
    if (where ==='longRange') {
      burnie.time_left -= 50;
      burnie.posX -= Math.floor((Math.random()*30)+50);
      burnie.posY += Math.floor((Math.random()*30)+50);
      burnie.position = ''
      burnie.advice = ''
    }

    // Position status
    if (burnie.posX >= 40 && burnie.posY >= 40) {
      burnie.position = 'deep playa'
    } else if (burnie.posX >= 30 || burnie.posY >= 30) {
      burnie.position = 'wandering through art'
    } else if (burnie.posX >= 10 || burnie.posY >= 10) {
      burnie.position = 'in the neighborhood'
    } else {
      burnie.position = 'at camp'
    }

    // Time status
    if (burnie.time_left >= 400 ) {
      burnie.advice = 'Man, you should explore!'
    } else if (burnie.time_left >= 300) {
      burnie.advice = 'Maybe you should look at art awhile!'
    } else if (burnie.time_left >= 200) {
      burnie.advice = 'Go find them!'
    } else if (burnie.time_left >= 1) {
      burnie.advice = 'Hurry!'
    } else {
      burnie.advice = 'Maybe you should go to sleep, hippie.'
      console.log("You did not find your friends in time.");
    }

    // Hippie Trap Locations
    cuddlePuddle.posX = Math.floor((Math.random()*50)+1);
    cuddlePuddle.posY = Math.floor((Math.random()*50)+1);
    console.log("Cuddle puddle at " + cuddlePuddle.posX + " and " + cuddlePuddle.posY + ". Don't get stuck!");

    mimosaBar.posX = Math.floor((Math.random()*50)+1);
    mimosaBar.posY = Math.floor((Math.random()*50)+1);
    console.log("Mimosa bar at " + mimosaBar.posX + " and " + mimosaBar.posY + ". Should you get a drink??");

    sickDjDanceParty.posX = Math.floor((Math.random()*50)+1);
    sickDjDanceParty.posY = Math.floor((Math.random()*50)+1);
    console.log("Sick DJ dance party at " + sickDjDanceParty.posX + " and " + sickDjDanceParty.posY + ". You're running out of time but it feels so good to dance!");

    // Time lost if he hits a Hippie Trap
    if(burnie.posX === cuddlePuddle.posX && burnie.posY === cuddlePuddle.posY){
      burnie.time_left -= 200
      console.log("You got stuck in a cuddle puddle! You have " + burnie.time_left + " minutes left.");
    }
    if(burnie.posX === mimosaBar.posX && burnie.posY === mimosaBar.posY){
      burnie.time_left -= 100
      console.log("You stopped for a drink! You have " + burnie.time_left + " minutes left.");
    }
    if(burnie.posX === sickDjDanceParty.posX && burnie.posY === sickDjDanceParty.posY){
      burnie.time_left -= 50
      console.log("You just wanna dance! You have " + burnie.time_left + " minutes left.");
    }

    // How to WIN!
    if(burnie.posX === friends.posX && burnie.posY === friends.posY){
      burnie.foundFriends = true;
      console.log("You found them!!!  Now enjoy the sunrise!");
    }

    // How to LOSE
    if(burnie.time_left <= 0) {
      burnie.time_left = 0
      console.log("The sun is up!!  You didn't find them...go to sleep!")
    }

    // Burnie's current status
    console.log("Burnie is in " + burnie.position + " and he has " + burnie.time_left + " minutes left! " + burnie.advice + " posX: " + burnie.posX + " posY: " + burnie.posY + "time: " + burnie.time_left)
    }
};

// Defining Hippie Traps and initial locations
var cuddlePuddle = {
  posX: Math.floor((Math.random()*25)+1),
  posY: Math.floor((Math.random()*25)+1)
};

var mimosaBar = {
  posX: Math.floor((Math.random()*50)+1),
  posY: Math.floor((Math.random()*50)+1)
};

var sickDjDanceParty = {
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};

// Defining friends and their location
var friends = {
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};


// Game Play:
burnie.wander('shortRange');
burnie.wander('artCar');
burnie.wander('longRange');
burnie.wander('deepPlaya');
burnie.wander('artCar');
burnie.wander('deepPlaya');





// Refactored Code

// I'll be honest, I worked on re-factoring this code for 3 hours and got nowhere.  I wanted to turn the hippieTraps into another function called "chill", but I kept running into error messages.  I learned that I made my game too complex at the outset.  In the interest of reality, I'm going to move on from this challenge--but I learned a lot!

// var burnie = {
//     time_left: 300,
//     posX: 0,
//     posY: 0,
//     foundFriends: false,

// // How to move burnie
// wander: function(where) {
//     if (where === 'deepPlaya') {
//       burnie.time_left -= 100;
//       burnie.posX += 50;
//       burnie.posY += 50;
//       burnie.position = ''
//       burnie.advice = ''
//     }
//     if (where ==='artCar') {
//       burnie.time_left -= 75;
//       burnie.posX += Math.floor((Math.random()*40)+1);
//       burnie.posY -= Math.floor((Math.random()*40)+1);
//       burnie.position = ''
//       burnie.advice = ''
//     }
//     if (where ==='shortRange') {
//       burnie.time_left -= 25;
//       burnie.posX -= Math.floor((Math.random()*20)+1);
//       burnie.posY -= Math.floor((Math.random()*20)+1);
//       burnie.position = ''
//       burnie.advice = ''
//     }
//     if (where ==='longRange') {
//       burnie.time_left -= 50;
//       burnie.posX -= Math.floor((Math.random()*30)+50);
//       burnie.posY += Math.floor((Math.random()*30)+50);
//       burnie.position = ''
//       burnie.advice = ''
//     }

//     // Position status
//     if (burnie.posX >= 40 && burnie.posY >= 40) {
//       burnie.position = 'deep playa'
//     } else if (burnie.posX >= 30 || burnie.posY >= 30) {
//       burnie.position = 'wandering through art'
//     } else if (burnie.posX >= 10 || burnie.posY >= 10) {
//       burnie.position = 'in the neighborhood'
//     } else {
//       burnie.position = 'at camp'
//     }

//     // Time status
//     if (burnie.time_left >= 200 ) {
//       burnie.advice = 'Man, you should explore!'
//     } else if (burnie.time_left >= 100) {
//       burnie.advice = 'Maybe you should look at art awhile!'
//     } else if (burnie.time_left >= 50) {
//       burnie.advice = 'Go find them!'
//     } else if (burnie.time_left >= 1) {
//       burnie.advice = 'Hurry!'
//     } else {
//       burnie.time_left = 0;
//       burnie.advice = 'Sun is up!  Maybe you should go to sleep, hippie. You did not find your friends in time.'
//     }

//     // How to WIN!
//     if(burnie.posX === friends.posX && burnie.posY === friends.posY){
//       burnie.foundFriends = true;
//       console.log("You found them!!!  Now enjoy the sunrise!");
//     }

//     // Burnie's current status
//     console.log("Burnie is in " + burnie.position + " and he has " + burnie.time_left + " minutes left! " + burnie.advice);
//     }
// };


// chill: function(hippieTrap) {
//     // Time lost if he hits a Hippie Trap
//     if(hippieTrap === cuddlePuddle){
//       burnie.time_left -= 200
//       console.log("You got stuck in a cuddle puddle! You have " + burnie.time_left + " minutes left.");
//     }
//     if(hippieTrap === mimosaBar){
//       burnie.time_left -= 100
//       console.log("You stopped for a drink! You have " + burnie.time_left + " minutes left.");
//     }
//     if(hippieTrap === sickDjDanceParty){
//       burnie.time_left -= 50
//       console.log("You just wanna dance! You have " + burnie.time_left + " minutes left.");
//     }
// };


// // Defining friends and their location
// var friends = {
//   posX: Math.floor((Math.random()*100)+1),
//   posY: Math.floor((Math.random()*100)+1)
// };


// // Game Play:
// // burnie.wander('shortRange');
// burnie.chill('mimosaBar');
// // burnie.wander('longRange');
// // burnie.chill('sickDjDanceParty');
// // burnie.wander('artCar');
// // burnie.chill('cuddlePuddle');


// Reflection
//What was the most difficult part of this challenge?

Setting the game up well at the outset--I definitely failed at that!

What did you learn about creating objects and functions that interact with one another?

Honestly, I'm not sure I totally get it yet.  I wasn't able to make my objects interact in all the ways I wanted to, but I've spent so much time on this challenge I know I need to move on.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

N/a.

How can you access and manipulate properties of objects?

You can access them with the .property notation and manipulate them through methods inside the constructor.

//
//
//
//
//
//
//