package com.web.impl;

public class DelByIdTieziServlet extends TieziControlletSupport
{

	@Override
	public String execute() throws Exception 
	{
		this.update("delByIdTiezi","����ɾ��");
		this.savePageData();
		return "myTiezi";
	}

}
