package com.mdh.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdh.dao.ReviewDAO;

public class ReviewDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num=request.getParameter("num");
		ReviewDAO rDao=ReviewDAO.getInstance();
		System.out.println(111111111);
		rDao.deleteBoard(num);
		new ReviewListAction().execute(request, response);
	}

}
