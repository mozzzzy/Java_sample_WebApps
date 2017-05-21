import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet("/SetDataToScope")
public class SetDataToScope extends HttpServlet{
        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{


		//input to request scope
		request.setAttribute("data1", new Integer(1));
		request.setAttribute("data2", new Integer(2));
		request.setAttribute("data3", new Integer(3));

		//input to session scope
		HttpSession session = request.getSession();
		session.setAttribute("data4", new Integer(4));
		//session.invalidate();

		//input to application scope
		ServletContext application = getServletContext();
		application.setAttribute("data5", new Integer(5));


		//forward Request to other Servlet
		RequestDispatcher rd = request.getRequestDispatcher("/GetDataToScope");
		rd.forward(request,response);
        }
}
