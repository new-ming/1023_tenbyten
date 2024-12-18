package com.tenbyten.controller.serviceAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.ServiceBoardDAO;
import com.tenbyten.dto.ServiceBoardVO;

public class ServiceBoardUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "Views/member/user.jsp";
		
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		ServiceBoardDAO sbDao = ServiceBoardDAO.getInstance();
		ServiceBoardVO sbVo = sbDao.getServiceBoardView(board_no);

		request.setAttribute("sbVo", sbVo);
		request.setAttribute("page", "service_board_update_form");
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
