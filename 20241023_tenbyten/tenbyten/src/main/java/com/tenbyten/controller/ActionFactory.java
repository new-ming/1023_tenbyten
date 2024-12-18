package com.tenbyten.controller;

import com.tenbyten.controller.loginAction.IdCheckAction;
import com.tenbyten.controller.loginAction.JoinAction;
import com.tenbyten.controller.loginAction.JoinFormAction;
import com.tenbyten.controller.loginAction.LoginAction;
import com.tenbyten.controller.loginAction.LoginFormAction;
import com.tenbyten.controller.loginAction.LogoutAction;
import com.tenbyten.controller.loginAction.PwdCheckAction;
import com.tenbyten.controller.loginAction.PwdCheckFormAction;
import com.tenbyten.controller.loginAction.UserAction;
import com.tenbyten.controller.loginAction.UserDeleteAction;
import com.tenbyten.controller.loginAction.UserUpdateAction;
import com.tenbyten.controller.loginAction.UserUpdateFromAction;
import com.tenbyten.controller.mainAction.Action;
import com.tenbyten.controller.mainAction.MainViewAction;
import com.tenbyten.controller.serviceAction.ServiceBoardAction;
import com.tenbyten.controller.serviceAction.ServiceBoardDeleteAction;
import com.tenbyten.controller.serviceAction.ServiceBoardUpdateAction;
import com.tenbyten.controller.serviceAction.ServiceBoardUpdateFormAction;
import com.tenbyten.controller.serviceAction.ServiceBoardViewAction;
import com.tenbyten.controller.serviceAction.ServiceBoardWriteAction;
import com.tenbyten.controller.serviceAction.ServiceBoardWriteFormAction;

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
		
		if (command == null) {
			action = new MainViewAction();
		} else if (command.equals("login_form")) {
			action = new LoginFormAction();
		}  else if (command.equals("login_check")) {
			action = new LoginAction();
		}  else if (command.equals("logout")) {
			action = new LogoutAction();
		}  else if (command.equals("join_form")) {
			action = new JoinFormAction();
		}  else if (command.equals("id_check")) {
			action = new IdCheckAction();
		}  else if (command.equals("join")) {
			action = new JoinAction();
		}  else if (command.equals("pwd_check")) {
			action = new PwdCheckFormAction();
		}  else if (command.equals("pwd_check_result")) {
			action = new PwdCheckAction();
		}  else if (command.equals("user")) {
			action = new UserAction();
		}  else if (command.equals("user_update_form")) {
			action = new UserUpdateFromAction();
		}  else if (command.equals("user_update")) {
			action = new UserUpdateAction();
		}  else if (command.equals("user_delete")) {
			action = new UserDeleteAction();
		}  else if (command.equals("service_board")) {
			action = new ServiceBoardAction();
		}  else if (command.equals("service_board_view")) {
			action = new ServiceBoardViewAction();
		}  else if (command.equals("service_board_delete")) {
			action = new ServiceBoardDeleteAction();
		}  else if (command.equals("service_board_write_form")) {
			action = new ServiceBoardWriteFormAction();
		}  else if (command.equals("service_board_write")) {
			action = new ServiceBoardWriteAction();
		}  else if (command.equals("service_board_update_form")) {
			action = new ServiceBoardUpdateFormAction();
		}  else if (command.equals("service_board_update")) {
			action = new ServiceBoardUpdateAction();
		}
		
		

		
		return action;
	}
	
	
	
}
