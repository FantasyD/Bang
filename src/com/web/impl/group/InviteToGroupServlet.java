package com.web.impl.group;

import com.web.impl.GroupServlet;

/**
 * @Description: ���������û�����Ⱥ��
 * @author: ��־��
 */
public class InviteToGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("inviteGroup", "����");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}

}
