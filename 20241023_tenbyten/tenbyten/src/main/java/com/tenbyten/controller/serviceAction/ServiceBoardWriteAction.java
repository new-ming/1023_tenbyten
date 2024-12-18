/**
 * 
 */
package com.tenbyten.controller.serviceAction;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dao.ServiceBoardDAO;
import com.tenbyten.dto.MemberVO;
import com.tenbyten.dto.ServiceBoardVO;

/**
 * 
 */
public class ServiceBoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServiceBoardVO sbVo = (ServiceBoardVO) request.getAttribute("sbVo");
		
		System.out.println("content : " +sbVo.getContent());

		ServiceBoardDAO sbDao = ServiceBoardDAO.getInstance();
		int result = sbDao.insertServieBoard(sbVo);
		System.out.println("serviceboard insert 결과 : " + result);
		

		new ServiceBoardAction().execute(request, response);
		
	}

}
