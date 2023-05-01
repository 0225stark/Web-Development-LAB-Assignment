onmessage = function(e) {
    if (isNaN(e.data)) {
      postMessage('Please write a number');
    }
    else if(e.data<0){
        postMessage('Please write a number greater than or equal to 0 to get the factorial');  
    }
     else {
      var result=1;
      var resString="<table><tr><th>Number</th><th>Factorial</th></tr>";
        for(var i=1;i<=e.data;i++){
          result=1;
          for(var j=1;j<=i;j++)
            result*=j;
          resString+="<tr><td>"+i+"</td><td>"+result+"</td></tr>";
        }
        resString+="</table>";
      postMessage(resString);
    }
  }