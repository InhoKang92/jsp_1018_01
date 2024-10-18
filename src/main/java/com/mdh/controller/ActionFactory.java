package com.mdh.controller;

import com.mdh.controller.action.Action;
import com.mdh.controller.action.AdminCheckAction;
import com.mdh.controller.action.AdminCheckPassAction;
import com.mdh.controller.action.DeleteAdminCheckAction;
import com.mdh.controller.action.DeleteAdminCheckPassAction;
import com.mdh.controller.action.MdhIdCheckAction;
import com.mdh.controller.action.MdhIndexAction;
import com.mdh.controller.action.MdhJoinAction;
import com.mdh.controller.action.MdhJoinFormAction;
import com.mdh.controller.action.MdhLoginAction;
import com.mdh.controller.action.MdhLoginFormAction;
import com.mdh.controller.action.MdhLogoutAction;
import com.mdh.controller.action.MdhMainAction;
import com.mdh.controller.action.MdhSubAction;
import com.mdh.controller.action.MdhUpdateAction;
import com.mdh.controller.action.MdhUpdateFormAction;
import com.mdh.controller.action.ProductDeleteAction;
import com.mdh.controller.action.ProductListAction;
import com.mdh.controller.action.ProductUpdateAction;
import com.mdh.controller.action.ProductUpdateFormAction;
import com.mdh.controller.action.ProductWriteAction;
import com.mdh.controller.action.ProductWriteFormAction;
import com.mdh.controller.action.ReviewCheckPassAction;
import com.mdh.controller.action.ReviewCheckPassFormAction;
import com.mdh.controller.action.ReviewDeleteAction;
import com.mdh.controller.action.ReviewListAction;
import com.mdh.controller.action.ReviewUpdateAction;
import com.mdh.controller.action.ReviewUpdateFormAction;
import com.mdh.controller.action.ReviewViewAction;
import com.mdh.controller.action.ReviewWriteAction;
import com.mdh.controller.action.ReviewWriteFormAction;

public class ActionFactory {

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		
		if (command.equals("mdh_index")) {
			action = new MdhIndexAction();
		} else if(command.equals("mdh_sub")) {
			action = new MdhSubAction();
		} else if(command.equals("mdh_login_form")) {
			action = new MdhLoginFormAction();
		} else if(command.equals("mdh_join_form")) {
			action = new MdhJoinFormAction();
		} else if(command.equals("mdh_login")) {
			action = new MdhLoginAction();
		} else if(command.equals("mdh_idcheck")) {
			action = new MdhIdCheckAction();
		} else if(command.equals("mdh_join")) {
			action = new MdhJoinAction();
		} else if(command.equals("mdh_logout")) {
			action = new MdhLogoutAction();
		} else if(command.equals("mdh_update_form")) {
			action = new MdhUpdateFormAction();
		} else if(command.equals("mdh_update")) {
			action = new MdhUpdateAction();
		} else if(command.equals("review_list")) {
			action = new ReviewListAction();
		} else if (command.equals("review_write_form")) {
			action = new ReviewWriteFormAction();
		} else if (command.equals("review_write")) {
			action = new ReviewWriteAction();
		} else if (command.equals("review_view")) {
			action = new ReviewViewAction();
		} else if (command.equals("review_check_pass_form")) {
			action = new ReviewCheckPassFormAction();
		} else if (command.equals("review_check_pass")) {
			action = new ReviewCheckPassAction();
		} else if (command.equals("review_update_form")) {
			action = new ReviewUpdateFormAction();
		} else if (command.equals("review_update")) {
			action = new ReviewUpdateAction();
		} else if (command.equals("review_delete")) {
			action = new ReviewDeleteAction();
		} else if (command.equals("mdh_main")) {
			action = new MdhMainAction();
		} else if (command.equals("product_list")) {
			action = new ProductListAction();
		} else if (command.equals("product_write_form")) {
			action = new ProductWriteFormAction();
		} else if (command.equals("product_write")) {
			action = new ProductWriteAction();
		} else if (command.equals("product_update_form")) {
			action = new ProductUpdateFormAction();
		} else if (command.equals("product_update")) {
			action = new ProductUpdateAction();
		} else if (command.equals("admin_check")) {
			action = new AdminCheckAction();
		} else if (command.equals("admin_check_pass")) {
			action = new AdminCheckPassAction();
		} else if (command.equals("product_delete")) {
			action = new ProductDeleteAction();
		} else if (command.equals("delete_admin_check")) {
			action = new DeleteAdminCheckAction();
		} else if (command.equals("delete_admin_check_pass")) {
			action = new DeleteAdminCheckPassAction();
		}
		
		return action;
	}
	
}
