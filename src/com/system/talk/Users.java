package com.system.talk;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
//�����û�
public class Users 
{
	//�����û�
	public static Map<String, Server> user = new HashMap<String, Server>();

	//����1��1�û���__��Ϣ�������
	public static Map<String, List<String>> usertalk = new HashMap<>();
	
	//���û����¼��������
	public static Map<String, RecordServer> userRecord = new HashMap<String, RecordServer>();
	
	//����ÿ������ĸ���״̬
	public static Map<String, List<String>> mailbox = new HashMap<>();
	
	//���������¼ɾ��״̬
	public static Map<String, String> delState = new HashMap<>();
}