package com.hpk.instagram.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hpk.instagram.dao.InstagramDAO;
import com.hpk.instagram.dao.InstagramDAOInterface;

public class ViewProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String e = session.getAttribute("uid").toString();
		
		InstagramDAOInterface vp = new InstagramDAO();
		
		ResultSet res = vp.viewProfile(e);
		request.setAttribute("result", res);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view_profile.jsp");
		rd.forward(request, response);
		
	}

}
