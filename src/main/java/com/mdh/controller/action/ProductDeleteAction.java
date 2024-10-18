package com.mdh.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdh.dao.ProductDAO;

public class ProductDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code = request.getParameter("code");
		System.out.println(code);
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.deleteProduct(code);
		new ProductListAction().execute(request, response);
		
	}
}
