package com.web.impl.user;

public class SendEmailServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		if(!this.update("isEmailExist", "�����ѱ�ע�ᣡ", "�ʼ����ͳɹ���"))
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
