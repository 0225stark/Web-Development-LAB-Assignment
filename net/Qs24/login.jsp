<%@ page import="java.sql.*" %>
<% 
    String l = request.getParameter("login");
    String p = request.getParameter("pass");
    if(l==null && p==null){
        out.println("Enter login and Password");
    }
    else{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
            Statement st = con.createStatement();
    
            String query = "select secret_question from logininfo_040 where login_id like '" + l +"' and password like '" + p +"'";
            ResultSet rs = st.executeQuery(query);
            int flag=0;
            while(rs.next()){
                flag=1;
                out.println("<p>Logged in successfully!!!</p><p>Information: "+rs.getString("secret_question")+"</p>");
            }
            if(flag==0){
                out.println("<p>Login Failed!!! Please Enter Correct Login-Id and Password</p>");
            }
    
            st.close();
            con.close();
        } 
        catch(Exception e){
            out.println(e);
        }
    }
%>
