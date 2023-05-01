<%
	response.setContentType("text/event-stream"); 
	response.setCharacterEncoding("UTF-8");

	java.util.Random rand = new java.util.Random();

	try{
		while(true){
			out.print("data: {\"stock1\": \"Value of stock1 at " + new java.util.Date() + " is : " + rand.nextInt(10000) + "\", \"stock2\": \"Value of stock2 at " + new java.util.Date() + " is : " + rand.nextInt(10000) + "\"}");
			out.print("\n\n");
			out.flush();
			Thread.sleep(3000);
		}
	} 
	catch(Exception ex) {
		out.println(ex); 
	}
%>