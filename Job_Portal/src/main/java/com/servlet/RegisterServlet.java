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

@WebServlet("/adduser")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("name");
			String qua=req.getParameter("qua");
			String email=req.getParameter("email");
			String ps=req.getParameter("ps");
			UserDAO dao=new UserDAO(DBconnect.getConn());
			
			user u=new user(name,email,ps,qua,"User");
			boolean f= dao.addUser(u);
			HttpSession session=req.getSession();
			
			if(f) {
				
				resp.sendRedirect("signup.jsp");
			}else {
				resp.sendRedirect("index.jsp");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
