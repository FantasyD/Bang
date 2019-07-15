<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>�������ݲ�ѯ</title>
	<script>
		var count = 0;

		function onEdit(vaac101)
		{
			var vform = document.getElementById("myform");
			vform.action = "<%=path%>/tiezi_findByIdTiezi.html?aac101=" + vaac101;
			vform.submit();
		}
	</script>
</head>
<body>
<br>
<br>
<form id = "myform" action="<%=path%>/tiezi_queryTiezi.html" method="post">
	<!-- ��ѯ������ -->
	<table border="1" width="95%" align="center" class="table">
	  <caption>
	               ����
	    <hr width="160">
	  </caption>
	  <tr>
	    <td colspan="4">��ѯ����</td>
	  </tr>
	  <tr>
	    <td>���ӱ���</td>
	    <td>
	      <e:text name="qaac102"/>
	    </td>
	  </tr>
	  <tr>
	    <td>��������</td>
	    <td>
	      <e:radio name="qaac103" value="��:01,��ȡ:02,����Ϣ:03,����:04,��ѧϰ����:05,����:06,���޶�:''" defval=""/>
	    </td>
	  </tr>
	</table>
	
	<!-- ���ݵ����� -->
	<table border="1" width="95%" align="center" class="table table-striped">
		<tr>
		    <td>���</td>
		    <td>���ӱ���</td>
		    <td>������</td>
		    <td>��������</td>
		    <td>���ӳ���</td>
	  	</tr>
	  	
		   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>
				    	<!--  # ��ʾ��ê -->
				    	<a href="#" onclick = "onEdit('${ins.aac101 }')">${ins.aac102 }</a>
				    </td>
				    <td>${ins.cnaab102 }</td>
				    <td>${ins.cnaac103 }</td>   			    
					<td>${ins.aac105 }</td>
				  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	</table>
	
	<!-- ���ܰ�ť�� -->
	<table border="1" width="95%" align="center" >
	  <tr>
	    <td align="center">
	         <input type = "submit" name = "next" value = "����"    class="btn btn-default"
       			formaction="<%=path%>/index.jsp"
       			formnovalidate="formnovalidate">
	    </td>
	  </tr>
	</table>
</form>
</body>
</html>