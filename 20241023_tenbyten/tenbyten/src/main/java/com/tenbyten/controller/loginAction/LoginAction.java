package com.tenbyten.controller.loginAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.MemberDAO;
import com.tenbyten.dto.MemberVO;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// form 입력데이터
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userid,pwd);
		
		if(result == 1) {
			System.out.println("1");
			// 일치데이터 저장
			MemberVO mVo = mDao.getMember(userid);
			// 세션 저장
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo);
			
			//이동
			response.sendRedirect("http://localhost:8181/tenbyten/main");

			
		} else if(result == 0) {
			System.out.println("0");
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
			new LoginFormAction().execute(request, response);

		} else if (result == -1) {
			System.out.println("-1");
			request.setAttribute("message", "존재하지 않는 아이디입니다.");
			new LoginFormAction().execute(request, response);
		}
		

	}

}
