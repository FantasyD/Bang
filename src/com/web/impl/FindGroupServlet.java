package com.web.impl;

import com.services.impl.Ae01Service;
import com.web.support.ControllerSupport;

/**
 * @Description: ��ѯȺ����Ϣ
 * @author: ��־��
 */
public class FindGroupServlet extends ControllerSupport
{
	public FindGroupServlet()
	{
		this.setServices(new Ae01Service());
	}
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		this.savePageData();
		return "group";
	}

}
