package com.web.impl;

import com.services.impl.Ae01ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: �޸�Ⱥ����Ϣ
 * @author: ��־��
 */
public class UpdateGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("updateGroup", "�޸�");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}

}
