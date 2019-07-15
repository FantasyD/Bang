package com.system.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.ThreadLocal;

public class IOBase 
{
	private static final ThreadLocal<BufferedReader> inputthread=new ThreadLocal<>();
	private static final ThreadLocal<BufferedWriter> outputthread=new ThreadLocal<>();
	//�����ļ�
	public static void createFile(String path,String filename) throws IOException
	{
        File file=new File(path+"/"+filename);
        if(!file.exists())
            file.createNewFile();
    }
	
	//�ļ��Ƿ����
	public static boolean fileIsExists(String filePath) throws Exception
	{
		File file=new File(filePath);
		return file.exists();
	}
	
	
    //����������
	public static void setIn(String filePath) throws Exception
    {
    	BufferedReader in = inputthread.get();
    	if(in == null)
    	{
    		in = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"GBK"));
    		inputthread.set(in);
    	}
    }
	
	//��ȡ������
    public static BufferedReader getIn() throws Exception
    {
    	return inputthread.get();
    }
    
    //���������
    public static void setOut(String filePath) throws Exception
    {
    	BufferedWriter out = outputthread.get();
    	if(out == null)
    	{
    		out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath),"GBK"));
    		outputthread.set(out);
    	}
    }
    
    public static void setOut(String filePath, boolean tag) throws Exception
    {
    	BufferedWriter out = outputthread.get();
    	if(out == null)
    	{
    		out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath, tag),"GBK"));
    		outputthread.set(out);
    	}
    }

    //��ȡ�����
    public static BufferedWriter getOut() throws Exception
    {
    	return outputthread.get();
    }
    
    //����
    public static String readLine() throws Exception
    {
    	return getIn().readLine();
    }
    
    //д��
    public static void writeLine(String str) throws Exception
    {
    	getOut().write(str);
        getOut().newLine();
    }
    
    //��ȡһ���ı��ļ���������Ϣ
    public static String getAllString(String filePath) throws Exception
    {
    	setIn(filePath);
        String str = readLine();
        StringBuilder result = new StringBuilder();
        while (str != null) 
        {
            result.append(str + "\n");
        	str = readLine();
        }
        closeIn();
        return result.toString();
    }

    //��һ���ı��ļ������ض���Ϣ
    public static void setString(String filePath, Object str) throws Exception
    {
    	String[] strs = null;
    	if(str instanceof String[])
    	{
    		strs = (String[])str;
    	}
    	else if(str instanceof String)
    	{
    		strs = ((String) str).split("\n");
    	}
		setOut(filePath);
		for(String line : strs)
		{
			if(line == null || line.equals(""))
			{
				continue;
			}
			writeLine(line);
		}
		flush();
		closeOut();
    }
    
    public static void setString(String filePath, Object str, boolean tag) throws Exception
    {
    	String[] strs = null;
    	if(str instanceof String[])
    	{
    		strs = (String[])str;
    	}
    	else if(str instanceof String)
    	{
    		strs = ((String) str).split("\n");
    	}
		setOut(filePath, tag);
		for(String line : strs)
		{
			if(line == null || line.equals(""))
			{
				continue;
			}
			writeLine(line);
		}
		flush();
		closeOut();
    }
    
    //ˢ�»�����
    private static void flush() throws Exception
    {
    	getOut().flush();
    }
	
	//�ر�������
	public static void closeIn()
	{
		
		try {
			BufferedReader in = inputthread.get();
			if(in != null)
			{
				inputthread.remove();
				in.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//�ر������
	public static void closeOut()
	{
		try {
			BufferedWriter out = outputthread.get();
			if(out != null)
			{
				outputthread.remove();
				out.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
