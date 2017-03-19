$(document).ready(function(){
  var play = 1;
  var rNum = 0;

  var enteredAnswer="";
  var correctAnswer="";
  var redSquares=[];
  var p1pos=14;
  var p2pos=74;
     

clickable = function(a){
      var clickables = [];
      if (a==11) {
        clickables = [12,21,22];
      }

      else if(a>11 && a<17){
        clickables = [a-1,a+1,a+9,a+10,a+11];
      }

      else if (a==17) {
        clickables = [16,26,27];
      }

      else if (a == 21 ||a == 31 ||a == 41 ||a == 51 ||a == 61 ) {
        clickables = [a-10,a-9,a+1,a+10,a+11];
      }

      else if (a == 27 ||a == 37 ||a == 47||a == 57 ||a == 67 ) {
        clickables = [a-11,a-10,a-1,a+9,a+10];
      }

      else if (a>21 && a<67){
        clickables = [a-11,a-10,a-9,a-1,a+1,a+9,a+10,a+11];
      }

      else if (a>71 && a<77) {
        clickables = [a-11,a-10,a-9,a-1,a+1];
      }

      else if (a == 71){
        clickables = [61,62,72];
      }

      else if (a== 77) {
        clickables =[66,67,76];
      }
      var idd1 = parseInt($('.box:contains("Player 1")').attr("id"));
      var idd2 = parseInt($('.box:contains("Player 2")').attr("id"));
      n = clickables.length;
      var j;
      var a1 = clickables.slice(0,n);
      for (var i = 0; i<n; i++) {
        if ($('#' + a1[i]).hasClass('dead') || a1[i] == idd2 || a1[i] == idd1) {
          j = clickables.indexOf(a1[i]);
          clickables.splice(j,1);

        }
      }
      return clickables;

    }

function colorify(tiles,p){                  // Function to colour the squares where the user can move.
  
  for(var k=0;k<tiles.length;k++){
    if(tiles[k]!=p)
      $('#'+tiles[k]).addClass('movable');
  }
}


function decolorify(tiles){                  // Function to undo the changes done by colorify
  for(var k=0;k<tiles.length;k++){
    $('#'+tiles[k]).removeClass('movable');
  }
} 
  
  
  
  var s=$('.box1:contains("Player 1")').attr('id');     // Block to colour the places where player 1 can move initially
  var t=parseInt(s);
  
 colorify(clickable(t),0);
  
  
function eatSpace(a){
  $("#" +  a).addClass('dead');
  
} 
  
function displayQuestion(num){
  var id = parseInt(num);
  var offset = id%10;
  var rowNum=(id-offset)/10;
  var qnum = ((rowNum-1)*7+offset+rNum)%50;
  var question = $('#prompt'+qnum).text();
  enteredAnswer = prompt(question);
  correctAnswer = $('#q'+qnum).html(); 
} 
  
function checkAnswer(){
  if(SHA1(enteredAnswer)==correctAnswer)
    return true;
  else
    return false;

}
  
//var s=$('.box:contains("Player 1")').attr('id');
//var s1 = parseInt(s);
$(".box").click(function(){
  
  if (play==4) {
    var pl1 = $('.box:contains("Player 1")').attr("id");
    var pl2 = $('.box:contains("Player 2")').attr("id");
    var id1 = $(this).attr("id");
    displayQuestion(id1);
    if (id1!=pl1 && id1!=pl2) {
     
      if (checkAnswer()) {
        eatSpace(id1);
        redSquares.push(id1);
        $(this).removeAttr("id");
      }
        play = 1;
      
      $(".alert").html('<h4 style="text-align: center;"><strong>Move ! Move ! </strong> <em>Player 1 </em> its time to move your Zombie.</h4>');
      
    }
  }



  if (play==3) {
    a= parseInt($(this).attr("id"));
    var b = $(this).attr("id");
    var s=$('.box1:contains("Player 2")').attr('id');
    var id = parseInt(s);
    var q =clickable(id);
    var content,new_box;
    if (q.length == 0) {
      //alert("Player2 Lost.");
      $('.alert').html('<h4 style="text-align: center;"><strong>Wohoo ! Hurray ! </strong> <em>Player 1 </em> Wins.</h4>');
    }

    

    if (q.indexOf(a) != -1) {
      if (confirm('Do you want to move here ?')) {
    content = $('.box:contains("Player 2")').html();
    p2pos = id;
    decolorify(clickable(id));   //Uncolour the coloured changes.
    
    $('#' + s).html(' ');
    $('#' + s).removeClass("btn-defualt");
    $('#' + s).addClass("btn-primary");
    $('#' + b).html(content);
    $('#' + b).removeClass("btn-primary");
    $('#' + b).addClass("btn-defualt");


    play = 4;
   // alert("Now it's player 2's time to eat up some space.");
   $(".alert").html('<h4 style="text-align: center;"><strong>Eat ! Eat ! </strong> <em>Player 2 </em> its time to Eat up.</h4>');
    }
  }
  }

  



  if (play==2) {
    var pl1 = $('.box:contains("Player 1")').attr("id");
    var pl2 = $('.box:contains("Player 2")').attr("id");
    //alert(pl1);
    var id1 = $(this).attr("id");
   

    if (id1!=pl1 && id1!=pl2) {
       displayQuestion(id1);

      if (checkAnswer()) {
        console.log("right");
        eatSpace(id1);                 
        redSquares.push(id1);
        $(this).removeAttr("id");
        }  
       
        colorify(clickable(parseInt(pl2)));  // Colour movable squares
        play = 3;        
        $(".alert").html('<h4 style="text-align: center;"><strong>Move ! Move ! </strong> <em>Player 2 </em> its time to move your Zombie.</h4>');
      

    

    }
  }



  if (play==1) {
    a= parseInt($(this).attr("id"));
    var b = $(this).attr("id");
    var s=$('.box1:contains("Player 1")').attr('id');
    var id = parseInt(s);
    var q =clickable(id);
    var content,new_box;
    if (q.length===0) {
      //alert("Player1 Lost.");
      $('.alert').html('<h4 style="text-align: center;"><strong>Wohoo ! Hurray ! </strong> <em>Player 2 </em> Wins.</h4>');
    }
    
    colorify(q);  // Colour movable squares
  
    if (q.indexOf(a) != -1) {
    if (confirm('Do you want to move here ?')) {
    content = $('.box:contains("Player 1")').html();
     p1pos = id;
     decolorify(q);  // Uncolor changes

    $('#' + s).html(' ');
    $('#' + s).removeClass("btn-defualt");
    $('#' + s).addClass("btn-primary");
    $('#' + b).html(content);
    $('#' + b).removeClass("btn-primary");
    $('#' + b).addClass("btn-defualt");

    play = 2;
   // alert("Now it's player 1's time to eat up some space.");
   $(".alert").html('<h4 style="text-align: center;"><strong>Eat ! Eat ! </strong> <em>Player 1 </em> its time to Eat up.</h4>');
    }
  }
  }

  
  });


});