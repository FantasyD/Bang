package com.web.impl.email;

import com.services.impl.CheckAh01ServiceImpl;
import com.web.support.ControllerSupport;

/**
 * @Description: ȷ���û��Ƿ����δ���ʼ�
 * @author: ��־��
 */
public class CheckEmailServlet extends ControllerSupport
{
	public CheckEmailServlet()
	{
		this.setServices(new CheckAh01ServiceImpl());
	}
	@Override
	public String execute() throws Exception
	{
		/**
		 * ���������������ѯ�ʣ�
		 * ���������ݸ���ʱ������Ϣ��
		 * ����һֱ����ֱ����ʱ
		 */
		int i=0;
		while(true)
		{
			int num=this.checkInfo();
			if(num>0)
			{
				this.setResponseAttribute("emailNum", String.valueOf(num));
				break;
			}
			i++;
			System.out.println(i);
			Thread.sleep(10*1000);	//˯��10����ٲ�ѯ
		}
		return null;
	}

}
