package com.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.services.JdbcServicesSupport;

public class CheckAh01ServiceImpl extends JdbcServicesSupport
{
	/**
	 * @Description: ȷ���Ƿ����δ���ʼ�
	 * @throws: sql���ִ�г���
	 */
	public List<Map<String,String>> query()throws Exception
	{
		String sql="select aah101 from ah01 where aab101=? and aah106=0";
		Object id=this.get("aab101");
		List<Map<String,String>> map=this.queryForList(sql, id);
		if(map.size()==Integer.parseInt(this.get("emailNum").toString()))
		{
			return new ArrayList<>();
		}
		else
		{
			return map;
		}
	}
}
