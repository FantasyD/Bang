package com.web.impl;

import com.services.impl.Ae01ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: Ⱥ�������Ļ���
 * @author: ��־��
 */
public abstract class GroupServlet extends ControllerSupport
{
	public GroupServlet()
	{	
		this.setServices(new Ae01ServiceImpl());
	}
}
