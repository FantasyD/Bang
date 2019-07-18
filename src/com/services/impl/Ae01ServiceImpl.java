package com.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.services.JdbcServicesSupport;
import com.system.tools.Tools;

/**
 * @Description: ����Ⱥ��ģ����������ݿ����֧��
 * @author: ��־��
 */
public class Ae01ServiceImpl extends Ah01ServiceImpl
{
	/**
	 * @Description: �½�Ⱥ�飬���û����½�Ⱥ�������д����Ϣд��Ⱥ����Ϣ���Ⱥ���û���
	 * @throws��SQLִ�г���
	 */
	public boolean addGroup()throws Exception
	{
		StringBuilder sb=new StringBuilder()
				.append("insert into ae01(aae101,aab101,aae102,aae103,aae104,")
				.append("								 aae106,aae107)")
				.append("		 values (?,?,?,?,?,CURRENT_DATE,?) ")
				;
		Object state[]= {Tools.getSequence("aae101")};
		this.put("aae101", state[0]);
		Object idlist[]= {state[0],"1",this.get("aae102"),this.get("aae103"),Tools.getEmpNumber("group")};
		Object id=this.get("aae107");
		this.appendBatch(sb.toString(),idlist, id);
		
		String sql="insert into ae02(aae101,aab101,aae202) values(?,?,CURRENT_DATE)";		
		id="1";
		this.appendBatch(sql, state, id);
		return this.executeTransaction();
	}

	/**
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
		String sql="update ae01 set aae102=?,aae103=?,aae107=? where aae101=?";
		Object para[]= {
				this.get("aae102"),
				this.get("aae103"),
				this.get("aae107"),
				this.get("aae101")
				};
		return this.executeUpdate(sql, para)>0;
	}
	
	/**
	 * @Description: ��Ⱥ���Ա����ɾ�����˳����޳���Ա��Ϣ
	 * @throws��sqlִ�г���
	 */
	public boolean quitGroup()throws Exception
	{
		String sql="delete from ae02 where aae101=? and aab101=?";
		Object idlist[]= {this.get("aae101"),this.get("aab101")};
		boolean tag=this.executeUpdate(sql, idlist)>0;
		return tag;
	}
	
	/**
	 * @Description: ����Ⱥ����Ϣ���еĴ�������Ϣ
	 * @throws��sql���ִ�г���
	 */
	public boolean transferGroup()throws Exception
	{
		String sql="update ae01 set aab101=? where aae101=?";
		Object states[]= {this.get("aab101"),this.get("aae101")};
		
		return this.executeUpdate(sql, states)>0;
	}
	
	/**
	 * @Description: �û�������������ݲ���Ⱥ���û���
	 * @throws��sql������
	 */
	public boolean acceptInvite()throws Exception
	{
		String sql="insert into ae02(aae101,aab101,aae202) values(?,?,CURRENT_DATE)";
		Object states[]= {this.get("aae101"),this.get("aab101")};
		return this.executeUpdate(sql, states)>0;
	}
	
	/**
	 * @Description: ��ⱻ�����û��Ƿ��Ѿ���Ⱥ����
	 * @throws: sql���ִ�г���
	 */
	public boolean inviteGroup()throws Exception
	{
		String sql="select aab101 from ae02 where aab101=? and aae101=?";
		Object states[]= {this.get("iaab101"),this.get("aae101")};
		return !(this.queryForMap(sql, states)!=null);
	}
	
	/**
	 * @Description: ��Ⱥ����Ϣ���Ⱥ���û�����ɾ�������йظ�Ⱥ��ļ�¼
	 * @throws��sql���ִ�г���
	 */
	public boolean delGroup()throws Exception
	{
		String sql1="delete from ae02 where aae101=?";
		Object id=this.get("aae101");
		this.appendSql(sql1, id);
		String sql="delete from ae01 where aae101=?";
		this.appendSql(sql, id);
		return this.executeTransaction();
	}

}
