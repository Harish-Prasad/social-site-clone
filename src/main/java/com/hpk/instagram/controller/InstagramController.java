package com.hpk.instagram.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hpk.instagram.dao.InstagramDAO;
import com.hpk.instagram.dao.InstagramDAOInterface;

public class InstagramController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String secondName = request.getParameter("sname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		
		InstagramDAOInterface ig = new InstagramDAO();
		
		int i= ig.createProfile(firstName,secondName,email,password,phone);
		
		String str = "Registration Fail";
		
		    if(i > 0) 
		    {
		    	str = "Registration Successfull";
		    }
		    request.setAttribute("edit_profile_result",str);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
			rd.forward(request, response); 	
	}

}
