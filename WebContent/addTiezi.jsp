<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri = "http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<title>��������</title>
<style>
	td{
		height:30px;
	}
	msg{
		color:#ff0000;
	}
</style>
${msg}
</head>
<body>
<br>
<br>
<form action="<%=path%>/addTiezi.html" method = "post">
<table border = "1" align = "center" width = "45%">
    <caption>
       	��������
      <hr width="160">
    </caption>
   <tr>
     <td>���ӱ���</td>
     <td>
       <e:text name = "aac102" required = "true" autofocus = "true"/>
     </td>
   </tr>   


   <tr>
     <td>��������</td>
     <td>
       <!--
                         ����name�����Զ�����,���ڵ�ѡ 
        -->
       <e:radio name = "aac103" required = "true" value = "��:01,��ȡ:02,����Ϣ:03,����:04,��ѧϰ����:05,����:06" />
     </td>
   </tr>
 
   <tr>
     <td>����</td>
     <td>
        <e:text name = "aac105" />
     </td>
   </tr>
   
    <tr>
     <td>���ӱ�ǩ</td>
     <td>
       <e:text name = "aac106"  required = "true" />
     </td>
   </tr>   

   <tr>
     <td>��������</td>
     <td>
       <e:textarea rows = "5" cols = "45" required="true" name = "aac104"/>
     </td>
   </tr>
   
    <tr>
     <td>����ͼƬ·��</td>
     <td>
       <e:text name = "aac109"  required = "true" />
     </td>
   </tr>   
   
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="���"
       			 formaction = "<%=path%>/addTiezi.html">
       <input type = "submit" name = "next" value = "����"
       			formaction="<%=path%>/queryTieziById.html"
       			formnovalidate="formnovalidate">
       			
     </td>
   </tr>
	
</table>
<input type="hidden" name="aab101" value="${aab101}">
</form>
</body>
</html>