package com.tenbyten.controller.loginAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.MemberDAO;

public class UserUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result;
		
		int user_no = Integer.parseInt( request.getParameter("user_no"));
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		if (pwd == "" || pwd == null) {
			result = mDao.memberUpdate(user_no,phone,username,email,birth);
		} else {
			result = mDao.memberUpdate(user_no, pwd, phone, username, email, birth);
		}
		
		System.out.println("member delete 결과 : " + result);
		
		request.setAttribute("num", user_no);
		request.setAttribute("result", result);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Views/member/userUpdateResult.jsp");
		dispatcher.forward(request, response);
	}

}
