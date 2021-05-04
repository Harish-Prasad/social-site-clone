package com.hpk.instagram.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hpk.instagram.dao.InstagramDAO;
import com.hpk.instagram.dao.InstagramDAOInterface;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		String id = session.getAttribute("uid").toString();
		
		InstagramDAOInterface fd = new InstagramDAO();
		int i = fd.deleteProfile(id);
		String str = "Profile cannot be Deleted";
		if(i > 0) {
			str = "Profile deleted Successfully";
		}
		request.setAttribute("edit_profile_result",str);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

}
