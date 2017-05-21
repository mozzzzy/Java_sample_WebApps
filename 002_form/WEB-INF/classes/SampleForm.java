import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet("/SampleForm")
public class SampleForm extends HttpServlet{
        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

                String value1 = request.getParameter("val1");


                response.setContentType("text/html;charset=UTF-8");
                PrintWriter pw = response.getWriter();
                pw.println("<html><head><title>Sample Servlet</title></head><body>");
                pw.println("<h1>welcome to Sample Form Servlet.</h1>");
                pw.println("<h1>value is "+value1+".</h1>");
                pw.println("</body></html>");

        }
}
