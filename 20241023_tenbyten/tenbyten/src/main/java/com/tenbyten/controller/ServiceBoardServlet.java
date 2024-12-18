package com.tenbyten.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.dto.MemberVO;
import com.tenbyten.dto.ServiceBoardVO;


@WebServlet("/Service")
public class ServiceBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServiceBoardServlet() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("ServiceBoardServlet에서 요청을 받음을 확인 GET : " + command);
		
		ActionFactory af=ActionFactory.getInstance();
		
		Action action = af.getAction(command);

		if(action != null){
		  action.execute(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = request.getServletContext();
		String path = context.getRealPath("img/service");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		String servicetype = multi.getParameter("servicetype");
		String email = multi.getParameter("email");
		String phone = multi.getParameter("phone");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		
		String imgUrl1 = multi.getFilesystemName("imgUrl1");	//	파일저장
		String imgUrl2 = multi.getFilesystemName("imgUrl2");
		
		String command = multi.getParameter("command");
		String board_no = multi.getParameter("board_no");
		
		if(imgUrl1 == null) {
			imgUrl1 = multi.getParameter("nonmakeImg1");
		}
		if(imgUrl2 == null) {
			imgUrl2 = multi.getParameter("nonmakeImg2");
		}
		
		// 세션에 저장된 데이터 가져오기
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		int user_no = mVo.getUser_no();
		

		ServiceBoardVO sbVo = new ServiceBoardVO();
		sbVo.setContent(content);
		sbVo.setEmail(email);
		sbVo.setImgUrl1(imgUrl1);
		sbVo.setImgUrl2(imgUrl2);
		sbVo.setPhone(phone);
		sbVo.setServicetype(servicetype);
		sbVo.setState("답변대기");
		sbVo.setTitle(title);
		sbVo.setUser_no(user_no);
		if(board_no != null) sbVo.setBoard_no(Integer.parseInt(board_no));

	    System.out.println("ServiceBoardServlet에서 요청을 받음을 확인 POST : " + command);
	    
	    request.setAttribute("sbVo", sbVo);
	    
		ActionFactory af=ActionFactory.getInstance();
		
		Action action = af.getAction(command);

		if(action != null){
		  action.execute(request, response);
		}
	}

}
