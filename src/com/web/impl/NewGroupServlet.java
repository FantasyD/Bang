package com.web.impl;

import com.services.impl.Ae01Service;
import com.web.support.ControllerSupport;

/**
 * @Description: �½�Ⱥ��
 * @author: ��־��
 */
public class NewGroupServlet extends ControllerSupport
{
	public NewGroupServlet()
	{
		this.setServices(new Ae01Service());
	}
	@Override
	public String execute() throws Exception
	{
		this.update("addGroup", "����");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}
}
