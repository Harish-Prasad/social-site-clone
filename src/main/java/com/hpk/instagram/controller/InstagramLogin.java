package com.hpk.instagram.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hpk.instagram.dao.InstagramDAO;
import com.hpk.instagram.dao.InstagramDAOInterface;

public class InstagramLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		InstagramDAOInterface obj = new InstagramDAO();
		
		boolean v = obj.loginProfile(email,password);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.println("<html><body>");
		    if(v) {
//		    	what is session?
//				Session is the way to keep user on track  i.e by default for 30 min( by default) if user after login will not use website then website will discard and will ask for login again		
//				how to create session?
				HttpSession session=request.getSession(true);
//				how to set data inside session?
				session.setAttribute("uid", email);
//				how to set session time limit 
//				session.setMaxInactiveInterval(2);
//				how will the servlet call other jsp or servlet or html ?
				ResultSet res = obj.viewProfile(email);
				request.setAttribute("vresult", res);
				RequestDispatcher rd=getServletContext().getRequestDispatcher("/user_home.jsp");
				rd.forward(request, response);
		    }
		    else {
		    	request.setAttribute("edit_profile_result", "Invalid id and Password");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
				rd.forward(request, response); 
		    }
			
		out.println("</body></html>");	
		
	}

}
