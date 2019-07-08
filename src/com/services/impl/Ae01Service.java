package com.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.services.JdbcServicesSupport;
import com.system.tools.Tools;

/**
 * 
 * @ClassName: Ae01Service.java
 * @Description: ����Ĺ�������
 *
 * @author: ��־��
 * @date: 2019��7��5�� ����2:23:29
 */
public class Ae01Service extends JdbcServicesSupport
{
	/**
	 * @Description: �½�Ⱥ�飬���û����½�Ⱥ�������д����Ϣд��Ⱥ����Ϣ���Ⱥ���û���
	 * @throws��SQLִ�г���
	 */
	public boolean addGroup()throws Exception
	{
		StringBuilder sb=new StringBuilder()
				.append("insert into ae01(aae101,aab101,aae102,aae103,aae104,aae105,")
				.append("								 aae106,aae107)")
				.append("		 values (?,?,?,?,?,?,CURRENT_DATE,?) ")
				;
		Object state[]= {Tools.getSequence("aae101")};
		this.put("aae101", state[0]);
		Object idlist[]= {state[0],"1",this.get("aae102"),this.get("aae103"),Tools.getEmpNumber("group"),this.get("aae105")};
		Object id=this.get("aae107");
		this.appendBatch(sb.toString(),idlist, id);
		
		String sql="insert into ae02(aae101,aab101,aae202) values(?,?,CURRENT_DATE)";		
		id="1";
		this.appendBatch(sql, state, id);
		return this.executeTransaction();

	}

	/**
	 * @return 
	 * @Description: �����û���ˮ�Ų�ѯȺ����Ϣ
	 * @throws��sql���ִ�г���
	 */
	public Map<String, String> findById()throws Exception
	{
		String  sql="select aae101,aab101,aae102,aae103,aae104,aae105,aae107 from ae01 where aae101=?";
		Object id=this.get("aae101");
		return this.queryForMap(sql, id);
	}
	
	/**
	 * @Description: ����Ⱥ����ˮ�Ų�ѯ�����ڵ�������Ա
	 * @throws��sql���ִ�г���
	 */
	public List<Map<String,String>> query()throws Exception
	{
		String sql="select b.aab101 ab101,b.aab102 ab102 from ab01 b,ae02 e where b.aab101=e.aab101 and aae101=?";
		Object id=this.get("aae101");		
		return this.queryForList(sql, id);
	}
	
	/**
	 * @Description: ����Ⱥ����Ϣ��
	 * @throws��sql���ִ�г���
	 */
	public boolean  updateGroup()throws Exception
	{
		String sql="update ae01 set aae102=?,aae103=?,aae105=?,aae107=? where aae101=?";
		Object para[]= {
				this.get("aae102"),
				this.get("aae103"),
				this.get("aae105"),
				this.get("aae107"),
				this.get("aae101")
				};
		return this.executeUpdate(sql, para)>0;
	}
	
}
