package com.services.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.services.BaseServices;
import com.services.JdbcServicesSupport;

/**
 * @Description: ʵ���ʼ�ģ����������ݿ����֧��
 * @author: ��־��
 */
public class Ah01ServiceImpl extends JdbcServicesSupport
{
	/************************************************************
	 * 			���·�����Ŀ�����ڳ���findById��query����
	 * 			�������ʵ�ַ������ɾ����Service����ʵ��
	 *************************************************************/
	private BaseServices baseServices;
	private String key;
	private String id;
	
	/**
	* @Description: 
	*	�޲ι�����
	*	�������Ҫ���в�ѯ���ݣ���ʹ�ñ�������
	 */
	public Ah01ServiceImpl()
	{
	}
	
	/**
	* @Description: 
	* 	���캯��
	* 	��Ҫ���в�ѯ����ʱʹ�ñ�������
	* 	��ʼ��baseServices���ԣ�����ʹ�õ�BaseServicesʵ����
	* 	�������ѯ��dto
	* @param:
	* 	baseServices: BaseServices��ʵ����
	* 	key: �ڵ�ǰdto�д�ŵ����ڲ�ѯ�ļ�ֵ�Ե�key
	* 	id: �����ѯʱʹ�õļ�ֵ�Ե�key
	 */
	public Ah01ServiceImpl(BaseServices baseServices,String key,String id)
	{
		this.baseServices=baseServices;
		this.key=key;
		this.id=id;

	}
	
	/**
	 * @Description:��һʵ����ѯ������������ѯ���ݣ�����ʵ�ֽ��ɾ�����
	 * @throws: sql���ִ�г���
	 */
	public Map<String, String> findById()throws Exception
	{
		//���û�г�ʼ��baseService��������ִ�е�һʵ����ѯ
		if(this.isExited())
		{
			Map<String,String> result=this.baseServices.findById();
			return result;
		}
		else
			return null;
	}
	
	/**
	 * @Description: ����������ѯ
	 * @throws:sql���ִ�г���
	 */
	public List<Map<String,String>> query()throws Exception
	{
		//���û�г�ʼ��baseService��������ִ��������������
		if(this.isExited())
			return this.baseServices.query();
		else
			return null;
	}
	
	/**
	 * @Description: ����Ƿ��ʼ��baseServices����
	 * @throws: sql���ִ�г���
	 */
	public boolean isExited()
	{
		if(this.baseServices!=null)
		{
			Map<String,Object> map=new HashMap<>();
			map.put(id, this.get(key));
			this.baseServices.setMapDto(map);
			return true;
		}
		else
		{
			return false;
		}
	}
	
	/***************************************************************************
	 * 						���·���Ϊ�ʼ��Ĳ������ѯ����
	 * 
	 ***************************************************************************/
	
	/**
	 * @Description: ���ʼ����в����ʼ���¼
	 * 	�����ʼ������dto:
	 * 		aab101: �ʼ�������
	 * 		aah102: �ʼ�����(0��ʾ֪ͨ�࣬1��ʾ�����࣬2��ʾѯ����)
	 * 		aah103: �ʼ�����
	 * 		aah104: �ʼ�����
	 * 		aah105: �ʼ�����ʱ��
	 * 		aah106: �ʼ�״̬(0��ʾδ����1��ʾ�Ѷ�)
	 * 		aah107: ��ע(����������ѯ�����ʼ�����ı�Ҫ��Ϣ)
	 * 		
	 * 	֪ͨ���ʼ���Ҫ�Ǹ��û�չʾ֪ͨ������Ҫ�û������κβ���
	 * 	�������ʼ������û�չʾ֪ͨ��ͬʱ�����һ�����ӹ��û�����
	 * 	ѯ�����ʼ���Ҫ��ѯ���û������򣬻��н��ܺ;ܾ�����ѡ��
	 * @throws��sql���ִ�г���
	 */
	public boolean sendEmail()throws Exception
	{
		StringBuilder sb=new StringBuilder()
				.append("insert into ah01(aab101,aah102,aah103,aah104,aah105,")
				.append("                                    aah106,aah107)")
				.append("                    values(?,?,?,?,CURRENT_TIMESTAMP,0,?)")
				;
		Object id[]= {
				this.get("aab101"),
				this.get("aah102"),
				this.get("aah103"),
				this.get("aah104"),
				this.get("aah107")
				};
		return this.executeUpdate(sb.toString(), id)>0;
	}

	/**
	 * @Description: �޸��ʼ�״̬
	 * @throws: sql���ִ�г���
	 */
	public boolean updateEmail()throws Exception
	{
		String sql="update ah01 set aah106 =? where aah101=?";
		Object idlist[]= {this.get("aah106"),this.get("aah101")};
		
		return this.executeUpdate(sql, idlist)>0;
	}
	
}