package com.web.impl.user;

public class SendEmailServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		if(!this.update("isEmailExist", "�����ѱ�ע�ᣡ", "�ʼ����ͳɹ���"))
		{
			this.update("sendEmail", "��֤�뷢��");
		}
		return null;
	}
}
