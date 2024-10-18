package com.mdh.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdh.dao.ReviewDAO;
import com.mdh.dto.ReviewVO;

public class ReviewListAction implements Action {
	 @Override
		public void execute(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String url = "/review/reviewList.jsp";
			ReviewDAO rDao = ReviewDAO.getInstance();
			System.out.println(11111111);
			List<ReviewVO> reviewList = rDao.selectAllBoards();
			System.out.println(22222222);
			request.setAttribute("reviewList", reviewList);
			System.out.println(33333333);
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}

}