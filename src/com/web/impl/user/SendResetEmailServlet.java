package com.web.impl.user;

public class SendResetEmailServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		if(this.CheckEmail("isEmailExist", "�ʼ����ͳɹ���", "������δע�ᣡ"))
		{
			this.mail();
		}
		return null;
	}
}
