package com.mdh.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mdh.dao.ModernDAO;
import com.mdh.dto.ModernVO;

public class MdhJoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		
		request.setCharacterEncoding("UTF-8");

		String username = request.getParameter("username");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		

		ModernVO mVo = new ModernVO();
		mVo.setUsername(username);
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setAddress(address);
		
		

		ModernDAO mDao = ModernDAO.getInstance();
		int result = mDao.insertMember(mVo);
		System.out.println(result);

		HttpSession session = request.getSession();

		if (result == 1) {
			session.setAttribute("userid", mVo.getUserid());
			request.setAttribute("message_suc", "회원가입에 성공했습니다.");
		} else {
			request.setAttribute("message", "회원가입에 실패했습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	} 

}
