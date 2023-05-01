<%@ page import="java.sql.*" %>
<%
    try{
        String oldpass = request.getParameter("oldpass");
        String newpass = request.getParameter("newpass");
        String retype = request.getParameter("retype");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
        Statement st = con.createStatement();

        if(newpass.equals(retype)){
            String update = "update logininfo_040 set PASSWORD = '" + retype +"' where PASSWORD like '"+oldpass+"'";
            st.executeUpdate(update);
            out.println("<h3 style=\"color: green\">Password updated sucessfully!</h3>");
        }
        else{
            out.println("<h3 style=\"color: red\">New Password does not match with the Re-type Password</h3>");
        }
        
        st.close();
        con.close();
    }
    catch(Exception e){
        out.println(e); 
    }
%>