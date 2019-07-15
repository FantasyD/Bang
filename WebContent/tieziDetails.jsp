<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>��������</title>
	<script>
		function onDel(vaac101)
		{
			var vform = document.getElementById("aform");
			vform.action="<%=path%>/comment_delByIdComment.html?aac201="+vaac101;
			vform.submit();
		} 
		
		function goback()
		{
			javascript:history.go(-1);
		}
	</script>
</head>
<body>
<div style="text-align:center">
	���ӱ��:${ins.aac101 }
	<br>
	���ӱ���:${ins.aac102 }
	<br>
	������:${ins.cnaab102 }
	<br>
	��������:${ins.cnaac103 }
	<br>
	��������:${ins.aac104 }
	<br>
	���Ӽ۸�:${ins.aac105 }
	<br>
	���ӱ�ǩ:${ins.aac106 }
	<br>
	����ͼƬ:
	<c:if test="${ins.imgpath != null }">
		<img src = "${ins.imgpath }" style = "width:300px;height:150px">
	</c:if>
	<c:if test="${ins.imgpath == null }">
		��������ͼƬ
	</c:if>

	<br><br><br>
	
	<form id = "aform" method="post">
		<c:if test="${rows!=null }">
			<!-- ����Ϊ��������,չʾ�����û��Ը����ӷ�������� -->
			<table border="1" width="95%" align="center" class="table table-striped">
				<tr>
				    <td>���</td>
				    <td>�����û�</td>
				    <td>��������</td>
				    <td>��������</td>
				    <c:if test="${ins.aab101 == aab101 }">
						<td></td>
					</c:if>
			  	</tr>
			  	
			   	<c:choose>
			     <c:when test="${rows!=null }">
			         <!-- ��ʾʵ�ʲ�ѯ�������� -->
				     <c:forEach items="${rows }" var="comment" varStatus="vs" >
			    	   	  <tr>
						    <td>${vs.count }</td>
							<td>${comment.cnaab102 }</td>
							<td>${comment.aac203 }</td>
							<td>${comment.aac202 }</td>
							<c:if test="${ins.aab101 == aab101 }">
								<td>
	
									<a href="#" onclick="onDel('${comment.aac201}')">ɾ��</a>
								
								</td>
							</c:if>
						  </tr>
				      </c:forEach>
			     </c:when>
			   </c:choose>
			</table>
		</c:if>
	</form>
	<c:if test="${rows == null }"> ������������</c:if>
	
	<br>
	<form action="<%=path %>/addComment.jsp" method = "post">
		<input type = "submit" name = "next" class="btn btn-default" value = "����">
	</form>
	<br>
	<form action="<%=path %>/index.jsp" method = "post">
		<input type = "submit" name = "next" class="btn btn-default" value = "����">
	</form>
	
	<!-- ���·�������������Դ��Ļ��˷���,���Ǻ�����ģ���г�ͻ -->
	<!--  input type = "submit" name = "next" onclick="goback()" class="btn btn-default" value = "����"-->

</div>
<c:set var="aac101" scope="session" value="${ins.aac101 }"></c:set>
</body>
</html>