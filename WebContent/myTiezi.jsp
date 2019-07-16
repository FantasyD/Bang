<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>�ҵ�����</title>
	<script>
		var count = 0;
		
		function onEdit(vaac101)
		{
			var vform = document.getElementById("myform");
			vform.action = "<%=path%>/tiezi_findByIdTiezi.html?aac101=" + vaac101;
			vform.submit();
		}
		
		function onDel(vaac101)
		{
			var vform = document.getElementById("myform");
			vform.action="<%=path%>/tiezi_delByIdTiezi.html?aac101="+vaac101;
			vform.submit();
		} 
		
		function onModify(vaac101)
		{
			var vform = document.getElementById("myform");
			vform.action="<%=path%>/tiezi_findByIdToModifyTiezi.html?aac101="+vaac101;
			vform.submit();
		} 
		
		function onTop(vaac101)
		{
			var vform = document.getElementById("myform");
			vform.action="<%=path%>/placement_addPlacement.html?aac101=" + vaac101;
			vform.submit();
			alert("�����ö������ѷ���");
		} 
	</script>
</head>
<body>
<br>
<br>
<form id = "myform" action="<%=path%>/tiezi_queryTiezi.html" method="post">	
	
	<table border="1" width="95%" align="center" class="table">
	  <caption align="center">
	               �ҵ�����
	    <hr width="160">
	  </caption>
	</table>
	


	<!-- ���ݵ����� -->
	<table border="1" width="95%" align="center" class="table table-striped">
		<tr>
		    <td>���</td>
		    <td>���ӱ���</td>
		    <td>������</td>
		    <td>��������</td>
		    <td>�۸�</td>
		    <td></td>
		    <td></td>
		    <td></td>
	  	</tr>
	  	
		   <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>
				    	<!--  # ��ʾ��ê -->
				    	<a href="#" onclick = "onEdit('${ins.aac101 }')">${ins.aac102 }</a>
				    </td>
				    <td>${ins.cnaab102 }</td>
				    <td>${ins.cnaac103 }</td>  
				    <c:if test="${ins.aac105 !=null }">
				    	<td>${ins.aac105 }</td>
				    </c:if> 			    
					<c:if test="${ins.aac105==null }">
						<td>��</td>
					</c:if>
			      	<td>
				      	<a href="#" onclick="onModify('${ins.aac101}')">�޸�</a>
				    </td>
					 <td>
				      	<a href="#" onclick="onDel('${ins.aac101}')">ɾ��</a>
				    </td>
					<td>
						<a href = "#" onclick = "onTop('${ins.aac101}')">�����ö�</a>
					</td>
				  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	</table>
	
	<!-- ���ܰ�ť�� -->
	<table border="1" width="95%" align="center" class="table table-striped">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="��������"   class="btn btn-default"
	              formaction="<%=path%>/addTiezi.jsp">
	         <input type = "submit" name = "next" value = "����"    class="btn btn-default"
       			formaction="<%=path%>/index.jsp"
       			formnovalidate="formnovalidate">
	    </td>
	  </tr>
	</table>
	
<input type="hidden" name="aab101" value="${aab101 }">
<c:set var="aab101" scope="session" value="${aab101 }"></c:set>
</form>
</body>
</html>