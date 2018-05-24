var choices = ["rock", "paper", "scissors"];
var playerAnswer = document.getElementById('choice');
var computerAnswer = choices[Math.floor(Math.random() * choices.length)];
var playerScore = 0;
var computerScore = 0;

var compare = function(playerAnswer, computerAnswer){
  if (playerAnswer===computerAnswer{
    return "Tie!"
  }
  if (playerAnswer==="rock") {
    if (computerAnswer==="scissors") {
      return "You score";
    }
    else {
      return "Computer scores";
    }
  }
  if (playerAnswer==="paper") {
    if (computerAnswer==="rock") {
      return "You score";
    }
    else {
      return "Computer scores";
    }
  }
  if (playerAnswer==="scissors") {
    if (computerAnswer==="rock") {
      return "Computer scores";
    }
    else {
      return "You score";
    }
  }
};
var result = compare(playerAnswer,computerAnswer);
document.write(result);



//
// if (true) {
//
// } else {
//
// }
//
//
// do {
//   $('#rock').click(function() {
//     $('#rock').fadeTo(250, 0.25);
//
//     });
//
// } while ("playerScore" < 5 && "computerScore < 5");






  // // Using the $ is the same as typing jQuery
  // // here's an example of using a function without a name:
  // $('.circle').click(function() {
  //  alert('Clicked!');
  // });
  // // // calling a function called .click and passing it a function
  //
//
// $('.circle').hover(function() {
//   $('img').attr('src', 'gomez.jpg');
//   });
