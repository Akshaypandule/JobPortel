package Com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.entity.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		try
		{
			String em=request.getParameter("email");
			String pass=request.getParameter("password");
			User u=new User();
			HttpSession session=request.getSession();
			
			if("admin@gmail.com".equals(em) && "admin@123".equals(pass))
			{
				session.setAttribute("userobj", u);
				u.setrole("admin");
				response.sendRedirect("Admin.jsp");
			}
			else
			{
				
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

}
