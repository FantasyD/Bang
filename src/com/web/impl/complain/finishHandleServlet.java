package com.web.impl.complain;

public class finishHandleServlet extends Af01ControllerSupport
{
	@Override
	public String execute() throws Exception {
		this.update("finishHandle", "����");
		this.savePageDataForDelete();
		return "manageComplain";
	}
}
