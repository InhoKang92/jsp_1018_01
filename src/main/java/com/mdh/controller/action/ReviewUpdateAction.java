package com.mdh.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdh.dao.ReviewDAO;
import com.mdh.dto.ReviewVO;

public class ReviewUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewVO rVo = new ReviewVO();
		rVo.setNum(Integer.parseInt(request.getParameter("num")));
		rVo.setUserid(request.getParameter("userid"));
		rVo.setPass(request.getParameter("pass"));
		rVo.setEmail(request.getParameter("email"));
		rVo.setContent(request.getParameter("content"));
		ReviewDAO rDao = ReviewDAO.getInstance();
		rDao.updateBoard(rVo);
		new ReviewListAction().execute(request, response);
	}

}
