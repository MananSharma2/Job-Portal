package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBconnect;
import com.dao.JobDAO;
@WebServlet("/delete")
public class deletejobservlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		int id=Integer.parseInt(req.getParameter("id"));
		
		JobDAO dao=new JobDAO(DBconnect.getConn());
		boolean f=dao.deletejobs(id);
		
		
	HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succmsg", "job delete sucessfully..");
				resp.sendRedirect("viewjob.jsp");
			}else {
				session.setAttribute("succmsg", "Something wrong on server..");
				resp.sendRedirect("viewjob.jsp");
			}
			
		
	}catch (Exception e) {
		e.printStackTrace();
	}
	}
	
}
