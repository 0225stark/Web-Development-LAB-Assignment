 import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AddServlet extends HttpServlet{
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
        
        int a = Integer.parseInt(req.getParameter("num1"));
        int b = Integer.parseInt(req.getParameter("num2"));

        int c = a + b;
        int d = a*b;
        PrintWriter out = res.getWriter();
        out.println("sum is "+ c +"\n product is "+ d);
        out.close();
    }
}
