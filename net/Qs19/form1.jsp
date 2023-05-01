<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Question 19.a</title>
    </head>
    <body>
        <form method="post">
            <label>Enter a name</label>
            <input type="text" name="name">
            <input type="submit" value="submit">
        </form>
            <% 
                try{
                    String n = request.getParameter("name");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Namedb","root","123");
                    Statement st = con.createStatement();

                    String query = "Select * from student where name like '%"+ n +"%'";
                    
                    ResultSet rs = st.executeQuery(query);
                    while(rs.next()){
                        out.println("Name: "+rs.getString("name")+ "<br>Roll no.: "+rs.getInt("roll_no")+ "<br>Department: "+rs.getString("department")+"<br><br><br>");
                    }
                    st.close();
                    con.close();
                }
                catch(Exception e){
                    out.println(e);
                }
            %>
    </body>
</html>

<!-- For a <form> element, the name attribute is  used as a reference when the data is submitted. -->
                    
<!-- 
CREATE TABLE student( NAME varchar(50), ROLL_NO INT, DEPARTMENT varchar(50) );
insert into student values ("MIHIR CHOWDHURY", 040,"IT"),
("SOHAN SINGHAMAPATRA",035,"IT"),
("ABHISHEK AGARWAL",033,"IT"),
("SOURAV JAISWAL",055,"PRODUCTION"),
("ADITYA MISHRA",060,"MECH"),
("ANKUSH SINGH",070,"PRODUCTION"),
("URVHA MOHAMAAD",020,"CSE"),
("KRISHNA MITTAL",010,"MECH"),
("SHREYA SINGH",021,"POWER"),
("MOHIT SHARMA",015,"CIVIL"),  
("ADITYA KUMAR",025,"CIVIL"), 
("PTITI AGARWAL",070,"PHARMACY"), 
("ANKUSH SHARMA",044,"IT");
-->