package com.web.impl.user;

public class ModifyPwdServlet extends Ab01ControllerSupport
{
	@Override
	public String execute() throws Exception {
		this.update("modifyPassword", "�޸�");
		this.savePageInstance();
		return "userCenter";
	}
}
