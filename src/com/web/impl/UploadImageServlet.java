package com.web.impl;

public class UploadImageServlet extends TieziControlletSupport  
{

	@Override
	public String execute() throws Exception {
		this.update("insertImg", "ͼƬ��ӳɹ�");
		return "imgTest";
	}
}
