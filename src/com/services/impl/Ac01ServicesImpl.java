package com.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.services.JdbcServicesSupport;
import com.system.tools.Tools;

public class Ac01ServicesImpl extends JdbcServicesSupport{
	
	public boolean update(String utype) throws Exception
	{
		if(utype.equalsIgnoreCase("addTiezi"))
		{
			return this.addTiezi();
		}
		if(utype.equalsIgnoreCase("delByIdTiezi")) 
		{
			return this.delByIdTiezi();
		}	
		if (utype.equalsIgnoreCase("insertImg")) 
		{
			return this.insertImg();
		}
		else 
		{
			throw new Exception("在类[Ac01ServicesImpl]中进行了未定义的动作调用,动作名称是" + utype);
		}
	}
	
	
	
	
	/**
	 * 该方法用来执行多条件查询
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, String>> query() throws Exception
	{
		//还原页面查询条件
		Object aac102 = this.get("qaac102");		//帖子标题 模糊查询
		Object aac103 = this.get("qaac103");		//帖子类型
		Object aab101 = this.get("aab101");			//用户流水号

		
		//定义SQL主体
		StringBuilder sql = new StringBuilder()
				.append("select x.aac101,b.aab102 cnaab102,x.aac102,a.fvalue cnaac103,x.aac106,")
				.append("       x.aac105    ")
				.append("  from syscode a,ac01 x,ab01 b")
				.append(" where x.aac103 = a.fcode and a.fname = 'aac103'  ")
				.append("   and x.aab101 = b.aab101 ")
				;
		
		//参数列表
		List<Object> paramList = new ArrayList<Object>();
		//逐一判断查询条件是否录入,拼接AND条件
		if(this.isNotNull(aac102))
		{
			sql.append(" and x.aab102 like ? ");
			paramList.add("%"+aac102+"%");
		}
		if(this.isNotNull(aac103))
		{
			sql.append(" and x.aab103 = ? ");
			paramList.add(aac103);
		}
		if(this.isNotNull(aab101))
		{
			sql.append(" and x.aab101 = ? ");
			paramList.add(aab101);
		}
		sql.append(" and x.is_deleted = 0 ");
		sql.append(" order by x.aac101 ");
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	public boolean delByIdTiezi() throws Exception
	{
		String sql = "update ac01 set is_deleted = 1 where aac101 = ?";
		return this.executeUpdate(sql, this.get("aac101"))>0;
	}
	
	
	public boolean addTiezi() throws Exception
	{

		StringBuilder sql = new StringBuilder()
				.append("insert into ac01(aab101,aac102,aac103,aac104,aac105,")
    			.append("                 aac106,aac107,aac108,is_deleted)  ")
    			.append("          values(?,?,?,?,?,")
    			.append("                 ?,current_timestamp,current_timestamp,0)")
				;
		

		
		Object[] argsObjects = {
				this.get("aab101"),
				this.get("aac102"),
				this.get("aac103"),
				this.get("aac104"),
				this.get("aac105"),
				this.get("aac106")
		};
		
		System.out.println(argsObjects.toString());
		
		System.out.println(sql.toString());
		this.put("aab101", this.get("aab101"));
		
		return this.executeUpdate(sql.toString(), argsObjects)>0;
	}
	
	public boolean insertImg() throws Exception
	{
		String sql = "insert into ac04(aac101,aac402,aac403) values (2,?,current_timestamp)";
		return this.executeUpdate(sql, this.get("imgPath"))>0;
	}
	
	
	public Map<String, String> findById() throws Exception
	{
		StringBuilder str = new StringBuilder()
				.append("select x.aac101,b.aab102 cnaab102,x.aac102,a.fvalue cnaac103,x.aac106, ")
				.append("       x.aac105,x.aac104,c.aac402 imgPath  ")
				.append("  from syscode a,ac01 x,ab01 b,ac04 c ")
				.append(" where x.aac103 = a.fcode  ")
			    .append("   and x.aab101 = b.aab101 and c.aac101 = x.aac101 " )
			    .append("   and a.fname = 'aac103' and x.aac101 = ? ") 
				;
		return this.queryForMap(str.toString(), this.get("aac101"));
	}
	
}
