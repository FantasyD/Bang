<%@ page language="java" pageEncoding="GBK"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>��ҳ</title>
</head>
<body>
<br>
<br>
	<form action = "<%=path%>/tiezi_queryTiezi.html" method = "post">
		<input type = "submit" name = "next" value = "�鿴����">
	</form>	
<br>
<br>
	<form action = "<%=path%>/tiezi_queryTieziById.html" method = "post">
		<input type="hidden" name="aab101" value="2">
		<input type = "submit" name = "next" value = "�ҵ�����">
	</form>
</body>
</html>