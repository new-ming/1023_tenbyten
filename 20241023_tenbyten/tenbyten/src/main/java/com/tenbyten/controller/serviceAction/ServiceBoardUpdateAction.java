package com.tenbyten.controller.serviceAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.ServiceBoardDAO;
import com.tenbyten.dto.MemberVO;
import com.tenbyten.dto.ServiceBoardVO;

public class ServiceBoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceBoardVO sbVo = (ServiceBoardVO) request.getAttribute("sbVo");
		
		// 세션에 저장된 데이터 가져오기
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		int user_no = mVo.getUser_no();

		ServiceBoardDAO sbDao = ServiceBoardDAO.getInstance();
		int result = sbDao.updateServieBoard(sbVo,user_no);
		System.out.println("serviceBoard 수정 : " + result);

		new ServiceBoardAction().execute(request, response);

	}

}
