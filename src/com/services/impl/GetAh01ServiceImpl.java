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
		String sql="select aah101,aah102,aah103,aah104,aah106,aah107 from ah01 where aab101=? order by aah105 desc";
		Object id=this.get("aab101");
		
		return this.queryForList(sql, id);
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
