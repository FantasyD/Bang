package com.web.impl.user;

import com.services.impl.Ab01ServicesImpl;
import com.web.support.ControllerSupport;

/**
 *@Description:�û��޸���Ϣ
 *@author xzc
 */
public class ModifyUserServlet extends Ab01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyUser", "�޸�");
		this.savePageInstance();
		return "userCenter";
	}

}
