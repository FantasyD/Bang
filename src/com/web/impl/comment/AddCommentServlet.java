package com.web.impl.comment;

public class AddCommentServlet extends CommentControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addComment","���Է���");
		this.savePageInstance();
		this.savePageData();
		
		return "postDetails";
	}
}
