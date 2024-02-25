package Com.Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.ConnectDB.DBConnect;
import Com.dao.jobDAO;
import Com.entity.Jobs;
@WebServlet("/Addjob")
public class Addpostservlet extends HttpServlet 
{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		try
		{
			String title=req.getParameter("title");
			String Location=req.getParameter("Location");
			String category=req.getParameter("category");
			String status=req.getParameter("status");
			String desc=req.getParameter("desc");
			
			Jobs j=new Jobs();
			j.setTitle(title);
			j.setLocation(Location);
			j.setCategory(category);
			j.setStatus(status);
			j.setDescription(desc);
			
			HttpSession session=req.getSession();
			jobDAO dao=new jobDAO(DBConnect.getconn());
			boolean f=dao.Addjob(j);
			
			if(f)
			{
				session.setAttribute("msg", "Job post Sucessfully");
				res.sendRedirect("Addjob.jsp");
				
			}
			else
			{
				session.setAttribute("msg", "Something Wrong on server");
				res.sendRedirect("Addjob.jsp");
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	

}
