<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>�޸�����</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
function comfirmPwd()
{
	
}
</script>
</head>
<body>
<br>
<br>

<form method="post" align="center" enctype="multipart/form-data"> 
	<div class="form-group">
	<label>ԭ�������룺</label>
	<br>
	<e:text name="aab103"/>
	</div>
	<div class="form-group">
	<label>�µ����룺</label>
	<br>
	<e:text name="Naab103" id="newPwd"/>
	</div>
	<div class="form-group">
	<label>ȷ���µ����룺</label>
	<br>
	<e:text name="Caab103" id="comfirmPwd"/>
	</div>
	<input id="msg">
	<input type="hidden" name="aab101" value="${sessionScope.userID }">
	<div>
	<input type="submit" name="next" value="ȷ���ύ"
			formaction="<%=path%>/user_modifyPwd.html">
	</div>	
</form>
</body>
</html>