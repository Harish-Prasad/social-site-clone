package com.hpk.instagram.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hpk.instagram.dao.InstagramDAO;
import com.hpk.instagram.dao.InstagramDAOInterface;

public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName=request.getParameter("fname");
		String lastName=request.getParameter("sname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String phoneNumber=request.getParameter("phone");
		
		InstagramDAOInterface ig = new InstagramDAO();
		int i = ig.editProfile(firstName,lastName,email,password,phoneNumber);
		
		if(i>0) {
			request.setAttribute("edit_profile_result", "Record updated successfully");
			
		}		
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/index.jsp");
			rd.forward(request, response); 
	}
		
	}


