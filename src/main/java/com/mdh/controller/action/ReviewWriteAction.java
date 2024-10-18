package com.mdh.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdh.dao.BoardDAO;
import com.mdh.dao.ReviewDAO;
import com.mdh.dto.BoardVO;
import com.mdh.dto.ReviewVO;

public class ReviewWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardVO rVo = new BoardVO();
		rVo.setUserid(request.getParameter("userid"));
		rVo.setPass(request.getParameter("pass"));
		rVo.setContent(request.getParameter("content"));
		BoardDAO rDao = BoardDAO.getInstance();
		rDao.insertBoard(rVo);
		new ReviewListAction().execute(request, response);
	}

}
