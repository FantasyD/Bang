package com.web.impl.user;

public class ModifyPwdServlet extends Ab01ControllerSupport
{
	@Override
	public String execute() throws Exception {
		if(this.update("modifyPassword", "�޸ĳɹ�", "�޸�ʧ��"))
		{
			this.setResponseAttribute("result", "true");
		}
		else
		{
			this.setResponseAttribute("result", "false");
		}
		return null;
	}
}
