<%@ page import="java.sql.*" %>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");                     
 
        String n = request.getParameter("login");
        String p = request.getParameter("pass"); 
        String i = request.getParameter("info");
                
        String insert = "insert into logininfo_040 values(?,?,?)";
        PreparedStatement ps = con.prepareStatement(insert);
        ps.setString(1,n);
        ps.setString(2,p);
        ps.setString(3,i);
        ps.executeUpdate();              
        out.println("<h3>Details are Inserted Successfully!!!</h3>"); 
        ps.close();     
        con.close();
    }
    catch(Exception e){
        out.println(e);
    }
%>



<!-- create table logininfo (LOGIN_ID varchar(100), PASSWORD varchar(100),SECRET_QUESTION varchar(200));
insert into logininfo values("acbd","abcd","hello"),
("mihir","123","kolkata"),
("chowdhury","456","plassey")
("sohan","it","code"),
("rafson","jani","it"); -->

<!-- Statement st = con.createStatement();  
String insert = "insert into logininfo values('"+n+"','"+p+"','"+i+"')";
st.executeUpdate(insert);  
st.close(); -->