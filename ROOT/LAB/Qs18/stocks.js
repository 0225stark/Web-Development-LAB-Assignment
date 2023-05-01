if(window.EventSource){	
	var evtSource  = new EventSource("./stocks.jsp");
	evtSource.onmessage = function(e) {
		var data=JSON.parse(e.data);
		document.getElementById("stock1").innerHTML = data.stock1;
		document.getElementById("stock2").innerHTML = data.stock2;
	  }
}else
{
	console.log("SSE not supported")
}