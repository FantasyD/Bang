package com.web.impl.user;

public class SendResetEmailServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		if(this.update("isEmailExist", "�ʼ����ͳɹ���", "������δע�ᣡ"))
		{
			this.update("sendEmail", "��֤�뷢��");
		}
		return null;
	}
}
