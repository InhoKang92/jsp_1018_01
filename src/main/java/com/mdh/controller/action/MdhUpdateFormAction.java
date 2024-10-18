package com.mdh.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdh.dao.ModernDAO;
import com.mdh.dto.ModernVO;

public class MdhUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/update.jsp";
		String userid = request.getParameter("userid");
		ModernDAO mDao = ModernDAO.getInstance();
		ModernVO mVo = mDao.getMember(userid);
		request.setAttribute("mVo", mVo);
	
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
