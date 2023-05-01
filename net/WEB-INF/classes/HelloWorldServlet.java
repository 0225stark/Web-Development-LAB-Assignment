import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorldServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");

		PrintWriter out = res.getWriter();

		out.println("<html><head><title>Hello World Servlet</title></head>");
		out.println("<body>");
		out.println("<h1>Hello World!</h1>");
		out.println("</body></html>");
		
		out.close();
	}
}
