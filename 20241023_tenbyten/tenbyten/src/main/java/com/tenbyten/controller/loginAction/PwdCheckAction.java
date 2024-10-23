package com.tenbyten.controller.loginAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.MemberDAO;
import com.tenbyten.dto.MemberVO;

public class PwdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 폼에서 가져온 데이터
		String check = request.getParameter("check");
		String pwd = request.getParameter("pwd");
		
		// 세션에 저장된 데이터 가져오기
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		
		// 메소드로 비교
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.pwdCheck(mVo, pwd);
		
		System.out.println("패스워드 비교 결과 : " + result);
		

		
		request.setAttribute("check", check);
		request.setAttribute("num", mVo.getUser_no());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Views/member/pwdCheckSuccess.jsp");
		dispatcher.forward(request, response);

	}

}
