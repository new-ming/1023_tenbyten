package com.tenbyten.controller.loginAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.MemberDAO;

public class IdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		int result = mDao.confirmID(userid);
		
		request.setAttribute("result", result);
		request.setAttribute("userid", userid);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Views/member/idcheck.jsp");
		dispatcher.forward(request, response);
		
	}

}
