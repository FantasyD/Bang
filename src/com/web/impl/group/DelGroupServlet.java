package com.web.impl.group;

/**
 * @Description: Ⱥ�鴴���߽�ɢȺ��
 * @author: ��־��
 */
public class DelGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("delGroup", "��ɢ");
		return "addbutton";
	}
}
