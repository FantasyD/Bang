package com.web.impl.group;

import com.services.impl.Ae02ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: 
 * @author: ��־��
 */
public abstract class GroupMemberServlet extends ControllerSupport
{
	public GroupMemberServlet()
	{
		this.setServices(new Ae02ServiceImpl());
	}
}
