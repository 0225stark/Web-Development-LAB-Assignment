import java.io.*;
import java.util.Enumeration;
import javax.servlet.*;
import javax.servlet.http.*;
public class RetriveName extends HttpServlet {
    protected void doGet(HttpServletRequest  req , HttpServletResponse  res ) throws ServletException, IOException {
        // Get all parameter names
        Enumeration<String> parameterNames = req.getParameterNames();
        
        // Iterate through all parameter names
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            // Get parameter values
            String[] paramValues = req .getParameterValues(paramName);
            // Print parameter name and values
            System.out.println("Parameter Name: " + paramName);
            for (int i = 0; i < paramValues.length; i++) {
                System.out.println("Parameter Value: " + paramValues[i]);
            }
        }
    }
}