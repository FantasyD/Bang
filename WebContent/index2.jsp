<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>主页</title>
</head>
<body>
<br>
<br>
<div style="text-align:center">
	<form action = "<%=path%>/tiezi_queryTiezi.html" method = "post">
		<e:hidden name="aab101" value="1"/>
		<e:hidden name="pageNum" value="1"/>
		<input type = "submit" name = "next"  value = "查看帖子"  class="btn btn-default" >
	</form>	
<br>
<br>
	<form action = "<%=path%>/tiezi_queryTieziById.html" method = "post">
		<input type="hidden" name="aab101" value="1">
		<input type = "submit" name = "next" value = "我的帖子"   class="btn btn-default"  >
	</form>
<br>
<br>
	<form action = "<%=path%>/placement_queryPlacement.html" method = "post">
		<input type="hidden" name="aab101" value="1">
		<input type = "submit" name = "next" value = "管理员置顶审核页面"   class="btn btn-default"  >
	</form>
<br>
<br>
	<form action = "<%=path%>/placement_queryPlacementByState.html" method = "post">
		<input type="hidden" name="aab101" value="1">
		<input type = "submit" name = "next" value = "置顶帖子页"   class="btn btn-default"  >
	</form>
<br>
</body>
</div>
</html>