package com.web.impl.comment;

public class DelByIdCommentServlet extends CommentControllerSupport  
{

	@Override
	public String execute() throws Exception
	{
		this.update("delByIdComment","����ɾ��");
		return "index";
	}

}
