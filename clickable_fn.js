$(document).ready(function(){
clickable = function(a){
      var clickables = [];
      if (a==11) {
         return clickables = [12,21,22];
      }

      else if(a>11 && a<17){
       return clickables = [a-1,a+1,a+9,a+10,a+11];
      }

      else if (a==17) {
       return clickables = [16,26,27];
      }

      else if (a == 21 ||a == 31 ||a == 41 ||a == 51 ||a == 61 ) {
       return clickables = [a-10,a-9,a+1,a+10,a+11];
      }

      else if (a == 27 ||a == 37 ||a == 47||a == 57 ||a == 67 ) {
       return clickables = [a-11,a-10,a-1,a+9,a+10];
      }

      else if (a>21 && a>67){
       return clickables = [a-11,a-10,a-9,a-1,a+1,a+9,a+10,a+11];
      }

      else if (a>71 && a<77) {
       return clickables = [a-11,a-10,a-9,a-1,a+1];
      }

      else if (a == 71){
       return clickables = [61,62,72];
      }

      else if (a== 77) {
       return clickables =[66,67,76];
      }
    }
    $(".box").click(function(){
          var content = 'Player <br/>1<br/><span class="glyphicon glyphicon-bishop" aria-hidden="true"></span>';
          var s=$('.box:contains("Player 1")').attr('id');
          var s1 = parseInt(s);

          p = clickable(s1);
          alert(p);
        });
    });