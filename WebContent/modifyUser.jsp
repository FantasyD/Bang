<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>�޸ĸ�����Ϣ</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<br>
<br>

<form method="post" align="center" enctype="multipart/form-data"> 
	<div class="form-group">
	<label>�û���</label>
	<br>
	<e:text name="aab102" defval="${ins.aab102 }"/>
	</div>
	<div class="form-group">
	<label>����</label>
	<br>
	<e:text name="aab104" readonly="true" defval="${ins.aab104 }"/>
	</div>
	<div class="form-group">
	<label>�Ա�</label>
	<br>
	<e:radio name="aab105" value="��:1,Ů:2,�㼪:3" defval="3"/>
	</div>
	<div class="form-group">
	<label>ѧ��</label>
	<br>
	<e:text name="aab107"  readonly="true" defval="${ins.aab107 }"/>
	</div>
	<div class="form-group">
	<label>����</label>
	<br>
	<e:text name="aab109" defval="${ins.aab109 }"/>
	</div>
	<div class="form-group">
	<label>ѧУ</label>
	<br>
	<e:text name="aab110"  readonly="true" defval="${ins.aab110 }"/>
	</div>
	<div class="form-group">
	<label>�ֻ���</label>
	<br>
	<e:text name="aab111" defval="${ins.aab111 }"/>
	</div>
	<div class="form-group">
	<label>�û���ǩ</label>
	<br>
	<e:text name="aab112" defval="${ins.aab112 }"/>
	</div>
	<div class="form-group">
	<label>�û�ǩ��</label>
	<br>
	<e:text name="aab114" defval="${ins.aab114 }"/>
	</div>
	<div class="form-group">
	<label>ͷ��</label>
	<br>
	<input type="file" name="photo"/>
	<e:text name="aab115" defval="${ins.aab115 }"/>
	</div>
	<input type="hidden" name="aab101" value="${sessionScope.userID }">
	<div>
	<input type="submit" name="next" value="ȷ���ύ"
			formaction="<%=path%>/user_modifyUser.html">
	</div>	
</form>
</body>
</html>