package com.services.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.services.JdbcServicesSupport;
import com.system.db.DBUtils;
import com.system.tools.Tools;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.RETURN;

public class Ab01ServicesImpl extends JdbcServicesSupport {
	

	public boolean update(String utype) throws Exception
	{
		if(utype.equalsIgnoreCase("addEmp"))
		{
			return this.addEmp();
		}
		else if (utype.equalsIgnoreCase("deleteById")) 
		{
			return this.deleteById();
		}
		else if (utype.equalsIgnoreCase("modifyEmp")) 
		{
			return this.updateById();
		}
		else if (utype.equalsIgnoreCase("batchDelete")) 
		{
			return this.delEmp();
		}
		else {
			throw new Exception("����[Ab01ServicesImpl]�н�����δ����Ķ�������,����������" + utype);
		}
		
	}
	
	public boolean deleteById() throws Exception
	{
		String sql = "delete from ab01 where aab101 = ?";
		return this.executeUpdate(sql, this.get("aab101"))>0;
	}
	
	public boolean updateById() throws Exception 
	{
		StringBuilder str = new StringBuilder()
				.append("update ab01 ")
				.append("   set aab102 = ?,aab104 = ?,aab105 = ?,aab106 = ?,")
				.append("       aab107 = ?,aab108 = ?,aab109 = ?,aab110 = ?,aab111 = ?,")
				.append("       aab112 = ?,aab113 = ?")
				.append(" where aab101 = ?")
				;
		
		Object[] newState = {
				this.get("aab102"),
				this.get("aab104"),
				this.get("aab105"),
				this.get("aab106"),
				this.get("aab107"),
				this.get("aab108"),
				this.get("aab109"),
				this.get("aab110"),
				Tools.joinArray(this.get("aab111")),
				Tools.joinArray(this.get("aab112")),
				this.get("aab113"),
		};
		return this.batchUpdate(str.toString(), newState, this.get("aab101"));
	}
	
	public Map<String, String> findById() throws Exception
	{
		StringBuilder str = new StringBuilder()
				.append(" select a.aab102,a.aab103,a.aab104,a.aab105,a.aab106,")
				.append("        a.aab107,a.aab108,a.aab109,a.aab110,a.aab111,")
				.append("        a.aab112,a.aab113")
				.append("   from ab01 a")
				.append("  where a.aab101 = ?")
				;
		return this.queryForMap(str.toString(), this.get("aab101"));
	}
	
	/**
	 * �÷�������ִ�ж�������ѯ
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, String>> query() throws Exception
	{
		//��ԭҳ���ѯ����
		Object aab102 = this.get("qaab102");		//���� ģ����ѯ
		Object aab103 = this.get("qaab103");		//���
		Object aab105 = this.get("qaab105");		//�Ա�
		Object aab106 = this.get("qaab106");		//����
		Object baab104 = this.get("baab104");		//����B(��ʼ����)
		Object eaab104 = this.get("eaab104");		//����E(��������)
		
		//����SQL����
		StringBuilder sql = new StringBuilder()
				.append("select x.aab101,x.aab102,x.aab103,x.aab104,a.fvalue cnaab105,")
				.append("       b.fvalue cnaab106,x.aab108,x.aab109")
				.append("  from syscode a,syscode b,ab01 x")
				.append(" where x.aab105 = a.fcode and a.fname = 'aab105' and ")
				.append("       x.aab106 = b.fcode and b.fname = 'aab106'")
				;
		
		//�����б�
		List<Object> paramList = new ArrayList<Object>();
		//��һ�жϲ�ѯ�����Ƿ�¼��,ƴ��AND����
		if(this.isNotNull(aab102))
		{
			sql.append("and x.aab102 like ?");
			paramList.add("%"+aab102+"%");
		}
		if(this.isNotNull(aab103))
		{
			sql.append("and x.aab103 = ?");
			paramList.add(aab103);
		}
		if(this.isNotNull(aab105))
		{
			sql.append("and x.aab105 = ?");
			paramList.add(aab105);
		}
		if(this.isNotNull(aab106))
		{
			sql.append("and x.aab106 = ?");
			paramList.add(aab106);
		}
		if(this.isNotNull(baab104))
		{
			sql.append("and x.aab104 >= ?");
			paramList.add(baab104);
		}
		if(this.isNotNull(eaab104))
		{
			sql.append("and x.aab104 <= ?");
			paramList.add(eaab104);
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	
	/*
	 * ԭʼ����
	 * 
	public List<Map<String, String>> query() throws Exception 
	{
		
		
		//1.����sql
		StringBuilder sql = new StringBuilder()
				.append("select aab101,aab102,aab103,aab104,aab105,")
				.append("       aab106,aab108,aab109")
				.append("  from ab01")
				;
		
		return this.queryForList(sql.toString());
		
		/**
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try
		{
			//1.����sql
			StringBuilder sql = new StringBuilder()
					.append("select aab101,aab102,aab103,aab104,aab105,")
					.append("       aab106,aab108,aab109")
					.append("  from ab01")
					;
			
			pstm = DBUtils.prepareStatement(sql.toString());
			
			rs = pstm.executeQuery();
			//��ȡ�������������
			ResultSetMetaData rsmd = rs.getMetaData();
			//��ѯ������
			int count = rsmd.getColumnCount();
			//����װ�ص�list����
			List<Map<String, String>> rows = new ArrayList<Map<String,String>>();
			//���㰲ȫ�ĳ�ʼ����
			int initSize = (int)(count/0.75) + 1;
			//����ʵ������������ݿ�ÿһ�е�����
			Map<String, String> ins = null;
			//ѭ���������
			while(rs.next())
			{
				//ʵ������ǰ�����ݵĳ�������
				ins = new HashMap<String, String>(initSize);
				//ѭ����ǰ�����ݵ�������
				for(int i = 1;i<=count;i++) {
					//����м�ӳ��
					ins.put(rsmd.getColumnLabel(i).toLowerCase(), rs.getString(i));
				}
				//��list�в�������
				rows.add(ins);
			}
			//����list����
			return rows;
 		}
		finally 
		{
			DBUtils.close(rs);
			DBUtils.close(pstm);
		}
	}*/
	
	/**
	 * ɾ��Emp���
	 * @return
	 * @throws Exception
	 */
	public boolean delEmp() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("delete from ab01 where aab101 = ?")
				;
		/*
		 * ���·������Խ�һ������support��
		 * */
		/*String[] idlist = null;
		if(dto.get("idlist") instanceof String[]) {
			idlist = (String[])dto.get("idlist");
			return this.batchUpdate(sql.toString(), idlist);
		}
		else {
			String id = (String)dto.get("idlist");
			return this.executeUpdate(sql.toString(), id)>0;
		}*/
		String[] idlist = this.getIdList("idlist");
		
		return this.batchUpdate(sql.toString(), idlist);
	}
	
	
	public boolean addEmp() throws Exception
	{
		//1.��дSQL���
		StringBuilder sql = new StringBuilder()
				.append("insert into ab01(aab102,aab103,aab104,aab105,aab106,")
    			.append("                 aab107,aab108,aab109,aab110,aab111,")
    			.append("                 aab112,aab113)")
    			.append("          values(?,?,?,?,?,")
    			.append("                 ?,?,?,?,?,")
    			.append("                 ?,?)")
				;
		
		//2.��д��������
		String aab103 = Tools.getEmpNumber();
		
		Object[] argsObjects = {
				this.get("aab102"),
				aab103,
				//this.dto.get("aab103"),
				//���������Ҫ����Tools����ķ����Զ�����,
				this.get("aab104"),
				this.get("aab105"),
				this.get("aab106"),
				this.get("aab107"),
				this.get("aab108"),
				this.get("aab109"),
				this.get("aab110"),
				//������Ϊ����Ϊ����,������������ݿ��в������ݵ�ʱ����Ҫ����һ������ת��
				Tools.joinArray(this.get("aab111")),
				Tools.joinArray(this.get("aab112")),
				//this.dto.get("aab111"),
				//this.dto.get("aab112"),
				this.get("aab113")
		};
		
		//ͬʱΪ����ҳ������ʾ������Ҫ��empNumber,������Ҫ���½��丳ֵ��dto����
		this.put("aab103", aab103);
		
		return this.executeUpdate(sql.toString(), argsObjects)>0;
	}

}



