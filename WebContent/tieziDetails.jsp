<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
${ins }
<body>
	���ӱ��:${ins.aac101 }
	<br>
	���ӱ���:${ins.aac102 }
	<br>
	������:${ins.cnaab102 }
	<br>
	��������:${ins.cnaac103 }
	<br>
	��������:${ins.aac104 }
	<br>
	���Ӽ۸�:${ins.aac105 }
	<br>
	���ӱ�ǩ:${ins.aac106 }
	<br>
	����ͼƬ:
	<img src = "${ins.imgpath }">
	
	<form action = "<%=path%>/queryTiezi.html" method = "post">
		<input type = "submit" name = "next" value = "����">
	</form>	
</body>
</html>