package com.web.impl.user;

public class ConfirmModifyServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.is_receive("resetPassword", "�����޸ĳɹ���", "�����޸�ʧ�ܣ�");
		return "userLogin";
	}

}
