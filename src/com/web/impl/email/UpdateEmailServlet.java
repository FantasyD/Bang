package com.web.impl.email;


public class UpdateEmailServlet extends EmailServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("updateEmail", "״̬�޸�");
		return null;
	}
}
