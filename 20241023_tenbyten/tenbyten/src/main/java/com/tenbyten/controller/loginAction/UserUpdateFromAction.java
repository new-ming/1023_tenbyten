package com.tenbyten.controller.loginAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.MemberDAO;
import com.tenbyten.dto.MemberVO;

public class UserUpdateFromAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int user_no = Integer.parseInt(request.getParameter("num"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(user_no);
		
		request.setAttribute("mVo", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Views/member/userUpdateForm.jsp");
		dispatcher.forward(request, response);

	}

}
