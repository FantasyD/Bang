package com.web.impl.group;

/**
 * @Description: ת��Ⱥ�鴴�������
 * @author: ��־��
 */
public class TransferGroupServlet extends GroupServlet
{
	@Override
	public String execute() throws Exception
	{
		this.update("transferGroup", "ת��");
		this.savePageInstance();
		this.savePageData();
		return "groupDetail";
	}
	
}
