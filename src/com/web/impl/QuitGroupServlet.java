package com.web.impl;

public class QuitGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("quitGroup", "�˳�");
		this.savePageInstance();
		this.savePageDataForDelete();
		return "group";
	}
}
