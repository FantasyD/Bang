package com.web.impl.chat;

public class ChatFindByIdServlet extends Ad01ControllerSupport
{
	/**
	 * ��session������������
	 * @throws Exception
	 */
	@Override
	public String execute() throws Exception
	{
		this.QueryMapToSession("findById", "chat_ins", "find");;
		return "null";
	}
}
