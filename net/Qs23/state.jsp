<%@ page import="java.sql.*" %>
<% 
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
        Statement st = con.createStatement();
        String query = "select distinct state from cities_040 order by state ASC";
        ResultSet rs = st.executeQuery(query);
        
        out.println("<option>State</option>");
        while(rs.next()){
            out.println("<option>"+rs.getString("state")+"</option>");
        }
        
        st.close();
        con.close();
    }
    catch(Exception e){
        out.println(e);
    }
%>