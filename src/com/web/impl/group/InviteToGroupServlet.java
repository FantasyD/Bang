package com.web.impl.group;

import com.services.impl.Ae01ServiceImpl;
import com.services.impl.Ah01ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: ���������û�����Ⱥ��
 * @author: ��־��
 */
public class InviteToGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("sendEmail", "����");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}

}
