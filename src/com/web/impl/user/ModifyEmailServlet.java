package com.web.impl.user;

public class ModifyEmailServlet extends Ab01ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyEmail", "�����޸ĳɹ���", "�����޸�ʧ�ܣ�");
		this.savePageInstance();
		return "userCenter";
	}
}
