<%@ page language="java" pageEncoding="GBK"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<title>��ҳ</title>
</head>
<body>
<br>
<br>
	<form action = "<%=path%>/queryTiezi.html" method = "post">
		<input type = "submit" name = "next" value = "�鿴����">
	</form>	
<br>
<br>
	<form action = "<%=path%>/queryTieziById.html" method = "post">
		<input type="hidden" name="aab101" value="2">
		<input type = "submit" name = "next" value = "�ҵ�����">
	</form>
</body>
</html>