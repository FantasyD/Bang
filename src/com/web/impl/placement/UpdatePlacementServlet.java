package com.web.impl.placement;

public class UpdatePlacementServlet extends PlacementControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("updatePlacementState", "״̬�޸�");
		this.savePageData();
		return "queryPlacement";
	}
}
