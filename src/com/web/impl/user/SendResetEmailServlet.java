package com.web.impl.user;

public class SendResetEmailServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		if(this.update("isEmailExist", "�ʼ����ͳɹ���", "������δע�ᣡ"))
		{
			this.update("SendEmail", "��֤�뷢��");
			this.setResponseAttribute("result", "true");
		}
		else
		{
			this.setResponseAttribute("result", "false");
		}
		return null;
	}
}
