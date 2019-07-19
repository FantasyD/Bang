package com.system.mail;

import java.security.GeneralSecurityException;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.services.JdbcServicesSupport;
import com.sun.mail.util.MailSSLSocketFactory;

/**
 * @Description:
 *@author xzc
 */
public class MailUtil extends JdbcServicesSupport
{
	//����������
	private static String eamilAccount=null;
	//������������Ȩ��
	private static String emailPassword=null;
	//��������������ַ
	private static String emailSMTPHost=null;
	//�ռ�������
	private static String receiveMailAccount="";
	
	static
	{
			ResourceBundle bundle=ResourceBundle.getBundle("MailOptions");
			eamilAccount=bundle.getString("EMAILACCOUNT");
			emailPassword=bundle.getString("EMAILPASSWORD");
			emailSMTPHost=bundle.getString("EMAILSMTPHOST");
	}
	
	public static void email(String receiveMailAccount,String code) throws Exception
	{
		Properties prop=new Properties();
		// �����ʼ�������������
		prop.setProperty("mail.host", "smtp.qq.com");
		// ���ͷ�������Ҫ�����֤
		prop.setProperty("mail.smtp.auth", "true");
		// �����ʼ�Э������
		prop.setProperty("mail.transport.protocol", "smtp");
		// ����SSL���ܣ������ʧ��
		MailSSLSocketFactory sf = new MailSSLSocketFactory();
		sf.setTrustAllHosts(true);
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.socketFactory", sf);
		// ����session
		Session session = Session.getInstance(prop);
		// ͨ��session�õ�transport����
		Transport ts = session.getTransport();
		// �����ʼ����������������ͣ��ʺţ�POP3/SMTPЭ����Ȩ�� 163ʹ�ã�smtp.163.com
		ts.connect(emailSMTPHost, eamilAccount, emailPassword);
		// �����ʼ�
		Message message = createSimpleMail(session,receiveMailAccount,code);
		// �����ʼ�
		ts.sendMessage(message, message.getAllRecipients());
		ts.close();
		
	}
	
	/**
	 * @Description	�����ʼ�
	 * @param session
	 * @return
	 */
	private static Message createSimpleMail(Session session,String receiveMailAccount,String code) throws Exception
	{
	// �����ʼ�����
	MimeMessage message = new MimeMessage(session);
	// ָ���ʼ��ķ�����
	message.setFrom(new InternetAddress(eamilAccount));
	// ָ���ʼ����ռ���
	message.setRecipient(Message.RecipientType.TO, new InternetAddress(receiveMailAccount));
	// �ʼ��ı���
	message.setSubject("�û�ע��");
	// �ʼ����ı�����
    message.setContent("��ӭ��ע�᡾BB��,�˺�ע����֤��Ϊ(һ������Ч):"+code+",����ظ�������", "text/html;charset=UTF-8");
	
	// ���ش����õ��ʼ�����
	return message;

	}
}
