package com.web.impl;

public class TransferGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("transferGroup", "ת��");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}
	
}
