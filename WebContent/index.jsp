<%@ page language="java" pageEncoding="GBK"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
</head>
<body>
<br>
<br>
	<form action = "<%=path%>/tiezi_queryTiezi.html" method = "post">
		<input type = "submit" name = "next" value = "查看帖子">
	</form>	
<br>
<br>
	<form action = "<%=path%>/tiezi_queryTieziById.html" method = "post">
		<input type="hidden" name="aab101" value="2">
		<input type = "submit" name = "next" value = "我的帖子">
	</form>
</body>
</html>