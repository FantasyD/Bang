<%@ page language="java" pageEncoding="GBK"%>
<%String path=request.getContextPath();%>
<html>
<head>
<title>�����һ�</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sendEmail.js"></script>
<style type="text/css">
	form {
	width: 160px;
}
</style>
</head>
${msg }
<body>
<form id="myform" role="form" action="<%=path%>/user_modifyEmail.html" method="post" class="center-block">
	<div class="form-group">
	<label>�µ����䣺</label>
	<input type="text" id="mail" class="form-control" name="aab108" placeholder="������������" required="required">	
	</div>
	<div>
	<label>��֤��</label>
	<input type="text" class="form-control" name="ver" placeholder="��������֤��" required="required">
	<br>
	<input name="next" type="button" value="������֤��" onclick="SendEmail(1, '<%=path %>')" formnovalidate="formnovalidate">
	</div>
	<br>
	<input type="hidden" name="aab101" value="${sessionScope.userID }">
	<br>
	<div>
	<input class="btn-btn-default" type="submit">
	</div>
</form>
</body>
</html>