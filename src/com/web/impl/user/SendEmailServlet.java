package com.web.impl.user;

public class SendEmailServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		if(!this.CheckEmail("isEmailExist", "�����ѱ�ע�ᣡ", "�ʼ����ͳɹ���"))
		{
			this.mail();
		}
		return null;
	}
}
