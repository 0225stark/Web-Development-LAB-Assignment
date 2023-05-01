<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Question 19.b</title>
    </head> 
    <body>
        <form method="post">
            <label for="dept">Choose a Department:</label>
            <select name="dept">
                <% 
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/Namedb?user=root&password=123";
                        Connection con = DriverManager.getConnection(url);
                        Statement st = con.createStatement();

                        String query1 = "Select distinct department from student";
                        ResultSet rs = st.executeQuery(query1);
                        while(rs.next()){
                            out.println("<option>" + rs.getString("department") + "</option>");
                        }
                        st.close();
                        con.close();
                    }
                    catch(Exception e){
                        out.println(e);
                    }
                %>
            </select><br><br>
            <input type="submit" value="submit"> 
        </form>    
        <%
            String d = request.getParameter("dept");
            if(d == null){
                out.println("<h2>Choose a Department from Drop-Box!!!</h2>");
            }
            else{
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/Namedb?user=root&password=123";
                    Connection con = DriverManager.getConnection(url);
                    Statement st = con.createStatement();
                    String query2 = "Select name from student where department like '%" + d + "%'";
                    ResultSet rs2 = st.executeQuery(query2);
                    out.println("<br><br>Name of Student of "+ d + " Department is/are: - <br><br>");
                    int i=1;
                    out.println("<table border=\"1\"><tr>");
                    out.println("<th>SL no.</th><th>Name</th></tr>");
                    while(rs2.next()){
                        out.println("<tr>");
                        out.println("<td>"+ i + "</td><td>" + rs2.getString("name") + "</td>");
                        i++;
                        out.println("</tr>");
                    }
                    out.println("</table>");
                    st.close();
                    con.close();
                }
                catch(Exception e){
                    out.println(e);
                }
            }
        %>    
    </body>
</html>



