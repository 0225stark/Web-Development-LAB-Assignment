<%@ page import="java.sql.*" %>
<%  
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
        Statement st = con.createStatement();

        String l = request.getParameter("login");
        String p = request.getParameter("pass");                  

        String query = "select * from logininfo_040 where LOGIN_ID like  '" +l+ "'";
        ResultSet rs = st.executeQuery(query);
        int flag = 0;
        if(rs.next()){
            flag=1;
            if(flag==1){
                if(rs.getString("PASSWORD").equals(p)){
                    out.println("<h2>Successfully Logged in</h2>");
                }
                else{
                    out.println("<h2>incorrect Password</h2>");
                }
            }
        }
        else{
            out.println("<h2>incorrect Login-Id</h2>");
        }
        st.close();
        con.close();
    }
    catch(Exception e){
        out.println(e);
    }
%>
        

