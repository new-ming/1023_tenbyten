package com.tenbyten.controller.loginAction;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.MemberDAO;
import com.tenbyten.dto.MemberVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO mVo = new MemberVO();
		String phone = request.getParameter("phone1") +"-"+ request.getParameter("phone2") +"-"+ request.getParameter("phone3");
		

		
		mVo.setAdmin(Integer.parseInt(request.getParameter("admin")));
		mVo.setBirth(request.getParameter("birth"));
		mVo.setEmail(request.getParameter("email"));
		mVo.setPhone(phone);
		mVo.setPwd(request.getParameter("pwd"));
		mVo.setUserid(request.getParameter("userid"));
		mVo.setUsername(request.getParameter("username"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		
		if(result == 1) {
			request.setAttribute("userid", mVo.getUserid());
			request.setAttribute("message", "회원가입이 완료 되었습니다.");
			
			new LoginFormAction().execute(request, response);
	
			
		}else {
			request.setAttribute("message", "회원가입에 실패했습니다.");
			new JoinFormAction().execute(request, response);
		}
		
	}

}
