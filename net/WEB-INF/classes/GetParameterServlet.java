import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class GetParameterServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("<html><head><title>Hello World Servlet</title></head>");
		out.println("<body>");
		String login = req.getParameter("login");
		String password = req.getParameter("password");
		out.println("<h2> login:" + login + "<br>password:" + password + "</h2>");
		out.println("</body></html>");
    }
}
