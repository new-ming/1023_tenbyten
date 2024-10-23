package com.tenbyten.controller.loginAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenbyten.controller.mainAction.Action;

public class PwdCheckFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "Views/member/pwdcheck.jsp";
		
		// 비밀번호 체크
		String check = request.getParameter("check");
		request.setAttribute("check", check);
		System.out.println("check : " + check);
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
