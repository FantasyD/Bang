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
${msg }
<br/>
<br/>
<form action="<%=path%>/complain_ComplainAdd.html" method = "post">
<table border = "1">

   <tr>
     <td colspan="2">�ٱ�����</td>
   </tr>
   <tr>
     <td>����</td>
     <td>
       <e:select name="aaf105" 
       			 value="����Υ�����ҷ��ɷ��������:01,����й¶������˽��Ϣ������:02,����������ˡ��̰����˵�����:03,���ڿ�󡢹�������������:04,����ɫ�顢���ࡢ���׵Ȳ�������:05" 
       			 required="true" />
     </td>
   </tr>
   
   <tr>
     <td>ԭ��</td>
     <td>
       <e:textarea rows="5" cols="45" name="aaf106" required="true" />
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
		<input type = "submit" value = "�ύ"></input>
     </td>
   </tr>
   
   
</table>

<input name="aab101" value="<%=request.getParameter("aab101") %>">
<input name="aaf103" value="<%=request.getParameter("aaf103") %>">
<input name="aaf104" value="<%=request.getParameter("aaf104") %>">

</form>
</body>
</html>

