package com.web.impl.user;

public class ConfirmModifyServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("resetPassword", "�����޸ĳɹ���", "�����޸�ʧ�ܣ�");
		return "userLogin";
	}

}
