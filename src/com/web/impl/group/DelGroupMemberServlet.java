package com.web.impl.group;

/**
 * @Description: Ⱥ�鴴����ɾ��ĳһ��Ա
 * @author: ��־��
 */
public class DelGroupMemberServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("quitGroup", "ɾ��");
		this.savePageInstance();
		this.savePageDataForDelete();
		return "group";
	}
}
