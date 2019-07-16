package com.services.impl;

import java.util.List;
import java.util.Map;

import com.services.JdbcServicesSupport;

public class GetAh01ServiceImpl extends JdbcServicesSupport
{
	/**
	 * @Description: ��ѯĳ���û��������ʼ�
	 * @return:ĳһ�û��������ʼ���
	 * @throws:sql���ִ�г���
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sb=new StringBuilder()
				.append("SELECT x.aah101,x.aah102,x.aah103,x.aah104,x.aah106,")
				.append("			 y.aah202,y.aah203")
				.append("  from ah01 x,ah02 y")
				.append(" where x.aah101=y.aah101 and x.aab101=?")
				;
		Object id=this.get("aab101");
		
		return this.queryForList(sb.toString(), id);
	}
	
	/**
	 * @Description: �޸��ʼ�״̬
	 * @throws: sql���ִ�г���
	 */
	public boolean updateEmail()throws Exception
	{
		String sql="update ah01 set aah106 =? where aah101=?";
		Object idlist[]= {"1",this.get("aah101")};
		
		return this.executeUpdate(sql, idlist)>0;
	}
	
}
