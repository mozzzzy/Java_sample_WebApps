import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet("/SampleServlet")
public class SampleServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.println("<html><head><meta charset = \"UTF-8\"></head><body>");
		pw.println("<h1>welcome to Sample Servlet.</h1>");
		pw.println("</body></html>");


	}
}
