<%@ page  language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<!DOCTYPE>
<html>
<head>
<title>Inserthere</title>
</head>
<body>
<form action="<%=path%>/chat_ChatAdd.html" method = "post">
<table border = "1">
<tr>
<td>�û����</td><td><input type="text" name="aab101"/></td>
</tr>
<tr>
<td>���ӱ��</td><td><input type="text" name="aac101"/></td>
</tr>
<tr>
<td colspan = "2"><input type="submit" value="����"></td>
</tr>
</table>
</form>

<form action="<%=path%>/center.jsp" method = "post">
<table border = "1">
<tr>
<td>�û����</td><td><input type="text" name="aab101"/></td>
</tr>
<tr>
<td>�û���</td><td><input type="text" name="aab102"/></td>
</tr>
<tr>
<td colspan = "2"><input type="submit" value="����center"></td>
</tr>
</table>
</form>
</body>
</html>

