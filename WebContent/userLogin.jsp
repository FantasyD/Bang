<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%String path=request.getContextPath();%>
<html>
<head>
<title>�û���¼</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>


<style type="text/css">
	td{
	height: 30px;
	}
	msg{
	color: red;
	}
	form {
	width: 160px;
	}
</style>
</head>
<body>
${msg }
<br>	
<br>	
<form id="myform" role="form" method="post" class="center-block">
	<div class="form-group">
	<label>�û���</label>
	<input type="text" class="form-control" name="userID" placeholder="������ѧ�Ż�����" required="required">	
	</div>
	<div class="form-group">
	<label>����</label>
	<input id="pwd" type="password" class="form-control" name="aab103" placeholder="����������" required="required">
	<a href="findPwd.jsp">��������</a>
	</div>
	<div>
	<button class="btn-btn-default" type="submit" name="next" formaction="<%=path %>/user_userLogin.html">��½</button>
	<button class="btn-btn-default" type="submit" name="next" formaction="<%=path %>/register.jsp" formnovalidate="formnovalidate">ע��</button>
	</div>
</form>		
</body>
</html>