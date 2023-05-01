<%@ page import="java.sql.*" %>
<% 
    try{
        String s = request.getParameter("state");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
        Statement st = con.createStatement();
        String query = "select distinct city_name from cities_040 where state like '" + s + "'order by city_name ASC";
        ResultSet rs = st.executeQuery(query);
        
        out.println("<option>City</option>");
        while(rs.next()){
            out.println("<option>"+rs.getString("city_name")+"</option>");
        }
        
        st.close();
        con.close();
    }
    catch(Exception e){
        out.println(e);
    }
%>