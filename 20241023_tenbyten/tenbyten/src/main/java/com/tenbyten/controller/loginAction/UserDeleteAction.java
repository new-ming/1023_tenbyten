package com.tenbyten.controller.loginAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.controller.mainAction.MainViewAction;
import com.tenbyten.dao.MemberDAO;

public class UserDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int user_no = Integer.parseInt(request.getParameter("num"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.memberDelete(user_no);
		
		String message = "";
		if(result == 1) {
			HttpSession session = request.getSession();
			session.invalidate();
			message = "삭제가 완료 되었습니다."; 
		}else {
			message = "삭제를 실패했습니다.";
		}
		System.out.println(message);
		
		new MainViewAction().execute(request, response);
		
		

	}

}
