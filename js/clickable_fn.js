<<<<<<< HEAD
$(document).ready(function(){
  var play = 1;
  var rNum = parseInt($('#rNum').html());
  var pattern = /\d{2}/g;

function createBoard(){
  p1pos = parseInt($('#p1pos').html());
  p2pos = parseInt($('#p2pos').html());
  redSuares = $('#redBox').html();
  
  var newRedSquares = [];
  var content1 = $('.box:contains("Player 1")').html();
  var content2 = $('.box:contains("Player 2")').html();
<<<<<<< HEAD
  $('#14').html()='';
  $('#74').html()='';
  $('#'+p1pos).html()=content1;
  $('#'+p2pos).html()=content2;

=======
  $('#14').html('');
  $('#74').html('');
  $('#'+p1pos).html(content1);
  $('#'+p2pos).html(content2);
  
>>>>>>> 91d8d00a5ec3442b9b10270454644a71b6652f8e
  redSuares.forEach(function(entry){
    newRedSquares.push(parseInt(entry));
  });

 newRedSquares.forEach(function(entry){
  $('#'+entry).addClass('dead');
  });

}
  
   

  createBoard();
  

  var enteredAnswer="";
  var correctAnswer="";
  var redSquares=[];  // Stores the squares which are blocked.
  var p1pos=14;       // Stores current position of player 1
  var p2pos=74;       // Stores current position of player 2
  var p1score=0;
  var p2score=0;


=======
>>>>>>> 454dd0683693eb6f6cb25918874a758536a3501f
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
        if ($('.'+a1[i]).hasClass('dead') || a1[i] == idd2 || a1[i] == idd1) {
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
  
  


$(document).ready(function(){
  var play = 1;
  var rNum = parseInt($('#rNum').html());
  var pattern = /\d{2}/g;
  play = parseInt($('#turn').html());
  var p1pos=14;
  var p2pos=74;
  console.log(play);

function ajaxcallturn(data){
  console.log("data"+data);
  var ajaxrequest = $.ajax({
  type: 'post',
  url: 'gameboarddetails.php',
  data: {turn:data}
  });
}

function ajaxcallred(data){
  //console.log("data"+data);
  var ajaxrequest = $.ajax({
  type: 'post',
  url: 'gameboarddetails.php',
  data: {redbox:data}
  });
}
function ajaxcallpl1pos(data){
  //console.log("data"+data);
  var ajaxrequest = $.ajax({
  type: 'post',
  url: 'gameboarddetails.php',
  data: {pl1pos:data}
  });
}
function ajaxcallpl2pos(data){
  //console.log("data"+data);
  var ajaxrequest = $.ajax({
  type: 'post',
  url: 'gameboarddetails.php',
  data: {pl2pos:data}
  });
}

var redSquares=[];



function createBoard(){
  p1pos = parseInt($('#p1pos').html());
  p2pos = parseInt($('#p2pos').html());
  redSquares = ($('#redBox').html()).match(pattern);
  console.log("red from db :-"+redSquares);
  if(redSquares==null){
    redSquares=[];
  }
  
  var newRedSquares = [];
  var content1 = $('.box:contains("Player 1")').html();
  var content2 = $('.box:contains("Player 2")').html();
  $('#14').html('');

  $('#74').html('');
  $('#14').removeClass('btn-default');
  $('#74').removeClass('btn-default');
  $('#14').addClass('btn-primary');
  $('#74').addClass('btn-primary');
  $('#'+p1pos).html(content1);
  $('#'+p2pos).html(content2);
  $('#'+p1pos).removeClass('btn-primary');
  $('#'+p2pos).removeClass('btn-primary');
  $('#'+p1pos).addClass('btn-default');
  $('#'+p2pos).addClass('btn-default');
    

  redSquares.forEach(function(entry){
    newRedSquares.push(parseInt(entry));
  });

 newRedSquares.forEach(function(entry){
  $('#'+entry).addClass('dead');
  });

  //$('.box').click();
   if(play==1 ){
    colorify(clickable(p1pos));
 $(".alert").html('<h4 style="text-align: center;"><strong>Move ! Move ! </strong> <em>Player 1 </em> its time to move your Zombie.</h4>');
  }
  else if(play==3 ){
   colorify(clickable(p2pos));
 $(".alert").html('<h4 style="text-align: center;"><strong>Move ! Move ! </strong> <em>Player 2 </em> its time to move your Zombie.</h4>');
  }
  
   
   if(play==2){
    
    $(".alert").html('<h4 style="text-align: center;"><strong>Eat ! Eat ! </strong> <em>Player 1 </em> its time to Eat up.</h4>');

  }
 
  else if(play==4){
  
    $(".alert").html('<h4 style="text-align: center;"><strong>Eat ! Eat ! </strong> <em>Player 2 </em> its time to Eat up.</h4>');
  }

 }
  
  createBoard();
    

  var enteredAnswer="";
  var correctAnswer="";
    // Stores the squares which are blocked.
        
  var p1score=0;
  var p2score=0;




  
  var s=$('.box1:contains("Player 1")').attr('id');     // Block to colour the places where player 1 can move initially
  var t=parseInt(s);
  
 //colorify(clickable(t),0);
  
  
function eatSpace(a){
  $("#" +  a).addClass('dead');

  
} 

  
function displayQuestion(num){
  var id = parseInt(num);
  var offset = id%10;
  var rowNum=(id-offset)/10;
  var qnum = ((rowNum-1)*7+offset+rNum)%49;
  if(qnum==0)
    qnum++;
  console.log(qnum);
  var question = $('#prompt'+qnum).text();
  enteredAnswer = prompt(question); 
  correctAnswer = $('#q'+qnum).html(); 
  if(enteredAnswer==null){
    enteredAnswer="";
  }

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
  
  //console.log(redSquares);
  if($(this).hasClass('dead')){
    return;
   }
 
  if (play==4) {
    var pl1 = $('.box:contains("Player 1")').attr("id");
    var pl2 = $('.box:contains("Player 2")').attr("id");
    var id1 = $(this).attr("id");
    

    if($(this).hasClass("playerPos")){
      return;
    }   

    displayQuestion(id1);
    if (id1!=pl1 && id1!=pl2) {
     
      if (checkAnswer()) {
        eatSpace(id1);
        redSquares.push(id1);
        
         var stringredsquares=redSquares.toString();
          console.log("string :-"+stringredsquares); 
         ajaxcallred(stringredsquares);

        //ADD AJAX CALL
       // $(this).removeAttr("id");
      }
       var q =clickable(parseInt(pl1));
       var q2= clickable(parseInt(pl2));
        console.log(q);
        play = 1;
        ajaxcallturn(1);
      colorify(clickable(parseInt(pl1)));
       if (q.length==0) {
      //alert("Player1 Lost.");
      $('.alert').html('<h4 style="text-align: center;"><strong>Wohoo ! Hurray ! </strong> <em>Player 2 </em> Wins.</h4>');
    }else{
        if (q2.length==0) {
          $('.alert').html('<h4 style="text-align: center;"><strong>Wohoo ! Hurray ! </strong> <em>Player 1 </em> Wins.</h4>');
        } 
        else {

      $(".alert").html('<h4 style="text-align: center;"><strong>Move ! Move ! </strong> <em>Player 1 </em> its time to move your Zombie.</h4>');
      return;
      }
    }
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
      $('.alert').html('<h4 style="text-align: center;"><stylerong>Wohoo ! Hurray ! </strong> <em>Player 1 </em> Wins.</h4>');
    }

         console.log(q);
    p2score++;
    if (q.indexOf(a) != -1) {
      if (confirm('Do you want to move here ?')) {
    content = $('.box:contains("Player 2")').html();
    ajaxcallpl2pos(b);
    p2pos = id;
    //ADD AJAX CALL

    decolorify(clickable(id));   //Uncolour the coloured changes.
    
    $('#' + s).html(' ');
    $('#' + s).removeClass("btn-defualt");
    $('#' + s).addClass("btn-primary");
    $('#' + s).removeClass("playerPos");
    $('#' + b).html(content);
    $('#' + b).removeClass("btn-primary");
    $('#' + b).addClass("btn-defualt");
    


    play = 4;
    ajaxcallturn(4);
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
    
    if($(this).hasClass("playerPos")){
      return;
    }
     
    if (id1!=pl1 && id1!=pl2) {
    
       displayQuestion(id1);

      if (checkAnswer()) {
        console.log("right");
        eatSpace(id1);                 
        redSquares.push(id1);
        var stringredsquares=redSquares.toString();  //ADD AJAX CALL
        ajaxcallred(stringredsquares);

       // $(this).removeAttr("id");
        }  
       var q2 =clickable(parseInt(pl2));
       var q =clickable(parseInt(pl1));
        colorify(clickable(parseInt(pl2)));  // Colour movable squares
        play = 3; 
        ajaxcallturn(3); 
        console.log(q);
        if (q.length===0) {
          
      //alert("Player1 Lost.");
      $('.alert').html('<h4 style="text-align: center;"><strong>Wohoo ! Hurray ! </strong> <em>Player 2 </em> Wins.</h4>');
    }
    else{
        if (q2.length==0) {
          $('.alert').html('<h4 style="text-align: center;"><strong>Wohoo ! Hurray ! </strong> <em>Player 1 </em> Wins.</h4>');
        } 
        else {
      
        $(".alert").html('<h4 style="text-align: center;"><strong>Move ! Move ! </strong> <em>Player 2 </em> its time to move your Zombie.</h4>');
     }
   }
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
         console.log(q);
    if (q.indexOf(a) != -1) {
    
    if (confirm('Do you want to move here ?')) {
     
    content = $('.box:contains("Player 1")').html();
     p1pos = id;
     //ADD AJAX CALL
     ajaxcallpl1pos(b);
     p1score++;
     decolorify(q);  // Uncolor changes

    $('#' + s).html(' ');
    $('#' + s).removeClass("btn-defualt");
    $('#' + s).addClass("btn-primary");
    $('#' + s).removeClass("playerPos");
    $('#' + b).html(content);
    $('#' + b).removeClass("btn-primary");
    $('#' + b).addClass("btn-defualt");
    $('#' + b).addClass("playerPos");

    play = 2;
    ajaxcallturn(2);
   // alert("Now it's player 1's time to eat up some space.");
   $(".alert").html('<h4 style="text-align: center;"><strong>Eat ! Eat ! </strong> <em>Player 1 </em> its time to Eat up.</h4>');
    }
  }
  
  }

  
  });


});