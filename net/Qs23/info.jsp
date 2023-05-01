<%@ page import="java.sql.*" %>
<% 
    try{
        String s = request.getParameter("state");
        String c = request.getParameter("city");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
        Statement st = con.createStatement();
        String query = "select city_id from cities_040 where state like '" + s + "' and city_name like '" + c + "'";
        ResultSet rs = st.executeQuery(query);
        
        rs.next();
        out.println(rs.getInt("city_id"));
        
        st.close();
        con.close();
    }
    catch(Exception e){
        out.println(e);
    }
%>