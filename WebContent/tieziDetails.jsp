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
	帖子编号:${ins.aac101 }
	<br>
	帖子标题:${ins.aac102 }
	<br>
	发帖人:${ins.cnaab102 }
	<br>
	帖子类型:${ins.cnaac103 }
	<br>
	帖子内容:${ins.aac104 }
	<br>
	帖子价格:${ins.aac105 }
	<br>
	帖子标签:${ins.aac106 }
	<br>
	帖子图片:
	<img src = "${ins.imgpath }">
	
	<form action = "<%=path%>/queryTiezi.html" method = "post">
		<input type = "submit" name = "next" value = "返回">
	</form>	
</body>
</html>