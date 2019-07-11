package com.web.impl;

import com.services.impl.Ae01ServiceImpl;
import com.services.impl.Ah01ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: ���������û�����Ⱥ��
 * @author: ��־��
 */
public class InviteToGroupServlet extends ControllerSupport
{
	public InviteToGroupServlet()
	{
		 this.setServices(new Ah01ServiceImpl(new Ae01ServiceImpl(),"aah107","aae101"));
	}
	@Override
	public String execute() throws Exception
	{
		this.update("sendEmail", "����");
		this.savePageInstance();
		this.savePageData();
		return "group";
	}

}
