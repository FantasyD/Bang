package com.web.impl.chat;

public class ChatAcceptDelServlet  extends Ad01ControllerSupport
{
	@Override
	public String execute() throws Exception {
		this.update("delAcceptChat", "ɾ��");
		return "center";
	}
}
