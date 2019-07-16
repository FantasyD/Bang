package com.web.impl.tiezi;

import java.util.List;
import java.util.Map;

import com.services.impl.Ac01ServicesImpl;
import com.web.support.ControllerSupport;

public abstract class TieziControlletSupport extends ControllerSupport 
{

	public TieziControlletSupport() 
	{
		this.setServices(new Ac01ServicesImpl());
	}
	
	/**
	 * ���Ӽ�����ѯ
	 * @throws Exception
	 */
	protected void savePageInstance2() throws Exception
	{
		Map<String, String> ins = this.getServices().findById();
		if (ins != null)
		{
			this.saveAttribute("ins", ins);
			this.saveAttribute("type", super.getDtoObject("type"));
		}
		else
		{
			this.saveAttribute("msg", "��ʾ:��������ɾ�����ֹ����!");
		}
		List<Map<String, String>> rows = this.getServices().queryComment();
		if (rows.size() > 0)
		{
			this.saveAttribute("rows", rows);
		}
		else
		{
			this.saveAttribute("msg", "û�з�������������!");
		}
	}
	
	

}
