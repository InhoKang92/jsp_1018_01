package com.mdh.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdh.dao.ReviewDAO;
import com.mdh.dto.ReviewVO;

public class ReviewUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/review/reviewUpdate.jsp";
		String num = request.getParameter("num");
		ReviewDAO rDao = ReviewDAO.getInstance();
		rDao.updateReadCount(num);
		ReviewVO rVo = rDao.selectOneBoardByNum(num);
		request.setAttribute("review", rVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
