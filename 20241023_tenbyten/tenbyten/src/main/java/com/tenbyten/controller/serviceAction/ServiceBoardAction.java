package com.tenbyten.controller.serviceAction;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.ServiceBoardDAO;
import com.tenbyten.dto.MemberVO;
import com.tenbyten.dto.ServiceBoardVO;

public class ServiceBoardAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "Views/member/user.jsp";
		request.setAttribute("page", "service_borad");
		
		
		// 세션에 저장된 데이터 가져오기
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		int user_no = mVo.getUser_no();
		
		//
		ServiceBoardDAO sbDao = ServiceBoardDAO.getInstance();
		List<ServiceBoardVO> sbVoList = sbDao.getServiceBoard(user_no);
		
		
		request.setAttribute("sbVoList", sbVoList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);


	}

}
