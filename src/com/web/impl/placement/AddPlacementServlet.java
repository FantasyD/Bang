package com.web.impl.placement;

public class AddPlacementServlet extends PlacementControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		// TODO Auto-generated method stub
		this.update("addPlacement","�����ö�����");
		this.savePageData();
		return "myTiezi";
	}
}
