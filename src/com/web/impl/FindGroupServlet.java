package com.web.impl;

import com.services.impl.Ae01ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: ��ѯȺ����Ϣ
 * @author: ��־��
 */
public class FindGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		this.savePageData();
		return "group";
	}

}
