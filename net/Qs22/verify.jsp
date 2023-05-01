<%@ page import="java.sql.*" %>
<%
    String n = request.getParameter("login");
    if(n == null){
        out.println("Login-id is Required!!!"); 
    }
    else{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://172.16.4.50:3306/Namedb","root","123");
            Statement st = con.createStatement();   
            
            String query = "select login_id from logininfo_040 where login_id like '" + n + "'";
            ResultSet rs = st.executeQuery(query);
            int flag = 0; 
			while(rs.next()){
				flag = 1;
				out.println("Login-ID already in USE. Please use a different one!!!"); 
			}
			if(flag == 0){
                out.println("New and Valid Login-ID!!!");
            }
            st.close();
            con.close();
        }
        catch(Exception e){
            out.println(e);
        }
    }
%>

