package com.tenbyten.controller.serviceAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dto.MemberVO;


public class ServiceBoardWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "Views/member/user.jsp";
		
		// 세션에 저장된 데이터 가져오기
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		request.setAttribute("mVo", mVo);
		request.setAttribute("page", "service_board_write_form");
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
