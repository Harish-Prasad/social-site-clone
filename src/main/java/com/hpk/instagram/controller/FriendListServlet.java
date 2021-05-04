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

public class FriendListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		String e = session.getAttribute("uid").toString();
		
		InstagramDAOInterface fd = new InstagramDAO();
		 ResultSet res = fd.viewFriendList(e);
	
		 request.setAttribute("flist", res);
		 RequestDispatcher rd = getServletContext().getRequestDispatcher("/view_friend_list.jsp");
		 rd.forward(request, response);
		 
		
	}

}
