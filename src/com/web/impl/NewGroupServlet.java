package com.web.impl;

import com.services.impl.Ae01ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: �½�Ⱥ��
 * @author: ��־��
 */
public class NewGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("addGroup", "����");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}
}
