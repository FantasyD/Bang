package com.web.impl.comment;

import com.web.impl.tiezi.FindByIdTieziServlet;

public class AddCommentServlet extends CommentControllerSupport  
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addComment","���Է���");
		return "index";
	}
}
