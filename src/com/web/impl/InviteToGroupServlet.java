package com.web.impl;

public class InviteToGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("acceptInvite", "����");
		//this.update("inviteGroup", "����");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}

}
