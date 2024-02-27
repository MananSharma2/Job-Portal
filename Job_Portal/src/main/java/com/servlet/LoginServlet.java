package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBconnect;
import com.dao.UserDAO;
import com.entity.user;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String  em=req.getParameter("email");
			String  pw=req.getParameter("password");
			
			user u=new user();
			HttpSession session=req.getSession();
			
			if("manan@gmail.com".equals(em) && "12345".equals(pw)) {
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}
			else {
				UserDAO dao=new UserDAO(DBconnect.getConn());
				user user=dao.login(em, pw);
				
				if(user != null) {
					
					resp.sendRedirect("home.jsp");
				}else {
					resp.sendRedirect("login.jsp");
				}
			}
		}catch(Exception e) {
			
		}
	

	}
}
