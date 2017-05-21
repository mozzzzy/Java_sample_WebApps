import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet("/SetDataToScope")
public class SetDataToScope extends HttpServlet{
        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		//get data from request scope
		int data1 = request.getAttribute("data1");
		int data2 = request.getAttribute("data2");
		int data3 = request.getAttribute("data3");

		//get data from session scope
		HttpSession session = request.getSession();
		int data4 = session.getAttribute("data4");
		session.invalidate();	//delete Data

		//get data from application scope
		ServletContext application = getServletContext();
		int data5 = application.getAttribute("data5");

        }
}
