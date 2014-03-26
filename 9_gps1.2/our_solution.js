// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1.Jon Pabico
//  2. Jake Persing


//  1. "YOU SIGNED... WHO?!"

  
  function Client(name, age, quote){
    this.name = name,
    this.age = age,
    this.quote = quote
  }

var beyonce = new Client("Beyonce", 50, "If you like it, you'd better put a ring on it.");
var karlUrban = new Client("Karl Urban", 50, "All she left me was my bones.");

// 2. "Here they Come!"
var adamSandler = new Client("Adam Sandler", 47, "That's your home! Are you too good for your home?!");
var kristenBell = new Client("Kristen Bell", 33, "Do you wanna build a snowman?");
var jimCarrey = new Client("Jim Carrey", 52, "...So you're telling me there's a chance? YEAH!");




//    3. "TIME IS MONEY!"

// YOUR CODE HERE!

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";



Client.prototype.display = function() {
  console.log("Introducing: " + this.name);
  console.log("This person is: " + this.age);
  console.log("Their quote is: " + this.quote);
}

//     4. "SHOW 'EM OFF!"
var celebArray = [beyonce, karlUrban, adamSandler, kristenBell, jimCarrey, shooterMcGavin];
  
for(var i = 0;i < celebArray.length;i++){
  celebArray[i].display();
}


//       ** BONUS **









