package com.web.impl.group;

import com.web.impl.GroupServlet;

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
