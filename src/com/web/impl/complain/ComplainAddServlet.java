package com.web.impl.complain;

public class ComplainAddServlet extends Af01ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addComplain", "�ٱ��ɹ�", "�ٱ�ʧ��");
		return "complain";
	}
}
