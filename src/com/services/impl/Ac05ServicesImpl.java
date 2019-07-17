package com.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.services.JdbcServicesSupport;

/**
 * @Description: ��������
 */
public class Ac05ServicesImpl extends JdbcServicesSupport
{
	/**
	 * @Description: 
	 * 	��ȡ������Ҫ�����ʼ�֪ͨ���û��б�
	 * 	��������Ⱥ��ͬ���Ա�Լ���ע���û����û�
	 * @return:������Ҫ����֪ͨ�ʼ����û��б�
	 * @throws:�쳣����
	 */
	public List<Map<String, String>> query()throws Exception
	{
		List<Map<String,String>> list=new ArrayList<>();
		list.addAll(this.getGroupsId());
		list.addAll(this.getFollowId());
		return list;
	}
	
	/**
	 * @Description: ��ȡÿ��Ⱥ���е���Ա��ˮ��
	 * @param:Ⱥ��id
	 * @return:ÿ��Ⱥ�����Ա��ˮ���б�
	 * @throws: sql���ִ�г���
	 */
	public List<Map<String,String>> getGroupsMembersId(Object...ids)throws Exception
	{
		String sql="select aab101 from ae02 where aab101<>? and aae101=?";
		return this.queryForList(sql, ids);
	}
	
	/**
	 * @Description: ��ȡ�û�������Ⱥ��
	 * @return:�û�������Ⱥ���б�
	 * @throws: sql���ִ�г���
	 */
	public List<Map<String,String>> getGroupsId()throws Exception
	{
		String sql="select aae101 from ae02 where aab101=?";
		Object id=this.get("aab101");
		List<Map<String,String>> groups=this.queryForList(sql, id);
		List<Map<String,String>> members=new ArrayList<>();
		for(Map<String,String> member:members)
		{
			Object ids[]= {id,member.get("aae101")};
			members.addAll(this.getGroupsMembersId(ids));
		}
		return members;
	}
	
	/**
	 * @Description: ��ȡ���й�ע�˸��û����û���ˮ��
	 * @return:��ע���û����û��б�
	 * @throws: sql���ִ�г���
	 */
	public List<Map<String,String>> getFollowId()throws Exception
	{
		String sql="select aab101 from ab02 where ab0_aab101=?";
		Object id=this.get("aab101");
		return this.queryForList(sql, id);
	}
	
	
}
