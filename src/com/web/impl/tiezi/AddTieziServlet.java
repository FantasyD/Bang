package com.web.impl.tiezi;

public class AddTieziServlet extends TieziControlletSupport  {
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.update("addTiezi","�������");
		this.savePageData();
		return "myTiezi";
	}
}
