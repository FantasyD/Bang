<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>������Ϣ����</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
${msg }	
<br>
<br>

<form method="post" align="center">
	<div class="form-group">
	<label>�û���</label>
	<br>
	<e:text name="aab102" value="${ins.aab102 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>����</label>
	<br>
	<e:text name="aab104" value="${ins.aab104 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>�Ա�</label>
	<br>
	<e:text name="aab105" value="${ins.aab105 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>ѧ��</label>
	<br>
	<e:text name="aab107" value="${ins.aab107 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>����</label>
	<br>
	<e:text name="aab108" value="${ins.aab108 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>����</label>
	<br>
	<e:text name="aab109" value="${ins.aab109 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>ѧУ</label>
	<br>
	<e:text name="aab110" value="${ins.aab110 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>�ֻ���</label>
	<br>
	<e:text name="aab111" value="${ins.aab111 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>�û���ǩ</label>
	<br>
	<e:text name="aab112" value="${ins.aab112 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>�û�������</label>
	<br>
	<e:text name="aab113" value="${ins.aab113 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>�û�ǩ��</label>
	<br>
	<e:text name="aab114" value="${ins.aab114 }" readonly="true"/>
	</div>
	<div class="form-group">
	<label>ͷ��</label>
	<br>
	<e:text name="aab115" value="${ins.aab115 }" readonly="true"/>
	</div>
	<div>
	<input type="submit" name="next" value="�޸ĸ�����Ϣ"
			formaction="<%=path%>/user_toModify.html?aab101=${sessionScope.userID}" formnovalidate="formnovalidate">
	<input type="submit" name="next" value="�޸�����"
			formaction="<%=path%>/modifyPwd.jsp" formnovalidate="formnovalidate">
	<input type="submit" name="next" value="�޸�ע������"
			formaction="<%=path%>/modifyEmail.jsp" formnovalidate="formnovalidate">
	</div>
</form>
	<div>
		<a href="userIndex.jsp">
		<button>����</button>
		</a>
	</div>
</body>
</html>