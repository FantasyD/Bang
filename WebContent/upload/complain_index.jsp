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
<form action="complain.jsp" method = "post">
<table border = "1">
<tr>
<td>�û����</td><td><input type="text" name="aab101"/></td>
</tr>
<tr>
<td>�ٱ���������</td><td><input type="text" name="aaf103"/></td>
</tr>
<tr>
<td>�ٱ�������</td><td><input type="text" name="aaf104"/></td>
</tr>
<tr>
<td colspan = "2"><input type="submit" value="�ٱ�"></td>
</tr>
</table>
</form>

<form action="<%=path%>/complain_ComplainQuery.html" method = "post">
<table border = "1">

<tr>
<td colspan = "2"><input type="submit" value="�ٱ�"></td>
</tr>
</table>
</form>
</body>
</html>

