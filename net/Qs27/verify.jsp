<%@ page import="java.sql.*" %>
<%
    try{
        String p=request.getParameter("oldpass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
        Statement st = con.createStatement();
        String query="select PASSWORD from logininfo_040 where PASSWORD like '"+p+"'";
        ResultSet rs = st.executeQuery(query);
        int flag=0;
        while(rs.next()){
            flag=1;
        }
        if(flag==1){
            out.println("<h4>Password is Correct.<br>To change the current Password, Write New Password in the box!!</h4>");
        }else{
            out.println("<h4>Password is Invalid!!!<br>Enter Correct Password</h4>");
        }
        st.close();
        con.close();
    } 
    catch(Exception e){
        out.println(e); 
    }

%>
 