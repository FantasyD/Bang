package com.web.impl.placement;

import com.web.impl.tiezi.TieziControlletSupport;

public class AddPlacementServlet extends TieziControlletSupport 
{
	@Override
	public String execute() throws Exception 
	{
		// TODO Auto-generated method stub
		this.update("addPlacement","�����ö�����");
		this.savePageData();
		return "myPost";
	}
}
