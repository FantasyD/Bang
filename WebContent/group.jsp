<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	Map<String, String> ins = (Map<String, String>) request.getAttribute("ins");
	boolean isCreater = (session.getAttribute("userId").equals(ins.get("aab101")));
%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>${ins.aae102 }����ҳ</title>
<style type="text/css">
#updateInfo {
	display: none;
}

#numberForm {
	display: none;
}
</style>
<script type="text/javascript">
    	//��ʾ���ص��޸�DIV
    	function updateIsClick()
    	{
    			var infoForm=document.getElementById("updateInfo");
    			infoForm.style.display="block";
    	}
    	//�����޸�DIV
    	function closeDiv()
		{
    			var infoForm=document.getElementById("updateInfo");
				infoForm.style.display="none";
		}
    	//ת�ô��������
    	function transfered(aab101)
    	{
	    		if(confirm("ȷ��Ҫ�����������ת�ø�����Ա��"))
    			{
    					var trans=document.getElementById("empty");
    					trans.action="<%=path%>/group_transferGroup.html?aab101="+aab101;
    					trans.submit();
    			}
    	}
    	//ɾ����Ա
    	function delMember(aab101)
    	{
	    		if(confirm("ȷ��Ҫɾ������Ա��"))
    			{
    					var dels=document.getElementById("empty");
    					dels.action="<%=path%>/group_delGroupMember.html?aab101="+aab101;
    					dels.submit();
    			}
    	}
    	//�˳���Ⱥ��
    	function quitIsClick()
    	{
    			if(confirm("��ȷ��Ҫ�˳���Ⱥ����"))
    			{
    					var quitBtn=document.getElementById("quit");
	    				quitBtn.action="<%=path%>/group_quitGroup.html";
						quitBtn.submit();
				}
		}
    	//��ɢ��Ⱥ��
    	function delGroupIsClick()
    	{
    			if(confirm("��ȷ��Ҫ��ɢ��Ⱥ��"))
    			{
    					var delBtn=document.getElementById("quit");
    					delBtn.action="<%=path%>/group_delGroup.html";
						delBtn.submit();
    			}
    	}
		//��ʾ���ص�����DIV
		function inviteIsClicked()
		{
			var infoForm = document.getElementById("numberForm");
			infoForm.style.display = "block";
		}
		
		//��������DIV
		function closeInviteDiv()
		{
			var infoForm = document.getElementById("numberForm");
			infoForm.style.display = "none";
		}
		
		//�����û�
		function inviteConfirm()
		{
			var tag=true;
			var user=document.getElementById("invitedNumber").value;
		    <c:forEach items="${rows}" var="item" varStatus="status" >  
	        	if(${item.ab101}==user)
	        	{
	        		 tag=false;
	        	}
	    	</c:forEach>   
			if(tag)
			{
				var infoForm=document.getElementById("numberForm");
				infoForm.action="<%=path%>/group_inviteToGroup.html";
				infoForm.submit();
			}
			else
			{
				alert("���û�����Ⱥ����")
			}
		}
</script>
</head>

<body>
	${userId}
	${msg }
	<div class="col-md-8">
		<div class="panel panel-default" style="text-align: left;">
			<div class="panel-body">
				<table class="table">
					<caption>
						${ins.aae102 }
					</caption>
					<tbody>
						<tr>
							<td>ǩ��:</td>
							<td>${ins.aae103!=null && ins.aae103!=''?ins.aae103:'��Ⱥ����ʱû��ǩ��'}</td>
						</tr>
						<tr>
							<td>Ⱥ����:</td>
							<td>${ins.aae104}</td>
						</tr>
						<tr>
							<td>��ϸ����:</td>
							<td>${ins.aae107!=null&& ins.aae107!=''?ins.aae107:'��Ⱥ����ʱû������'}</td>
						</tr>
						<tr>
							<td>
								<form id="quit" method="post">
									<e:hidden name="aae101" value="${ins.aae101 }" />
									<e:hidden name="aab101" value="${userId }"/>
								</form>
								 <c:forEach items="${rows }" var="row" varStatus="vs">
									<c:if test="${row.ab101==userId }">
										<input type="button" value="�޸�"  onclick="updateIsClick()" class="btn btn-default"/> 
										<input type="button" value="����"  onclick="inviteIsClicked()" class="btn btn-default"/>
										<c:choose>
											<c:when test="<%=isCreater %>">
												<button onclick="delGroupIsClick()" class="btn btn-default">��ɢȺ��</button>
											</c:when>
											<c:otherwise>
												<button onclick="quitIsClick()" class="btn btn-default">�˳�Ⱥ��</button>
											</c:otherwise>
										</c:choose>
									</c:if>
								</c:forEach></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<div class="col-md-4">
		<div class="panel panel-default">
			<div class="panel-body">
				<table class="table">
					<caption>Ⱥ���Ա</caption>
					<thead>
						<tr>
							<th>���</th>
							<th>���</th>
							<th>��Ա����</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${rows }" var="row" varStatus="vs">
							<tr>
								<td>${vs.count }</td>
								<c:choose>
									<c:when test="${row.ab101==ins.aab101 }">
										<td>������</td>
									</c:when>
									<c:otherwise>
										<td>��Ա</td>
									</c:otherwise>
								</c:choose>
								<td>${row.ab102 }</td>
								<td><c:if test="${row.ab101!=ins.aab101 }">
										<c:if test="<%=isCreater%>">
											<form id="empty" method="post">
												<e:hidden name="aae101" value="${ins.aae101 }" />
											</form>
											<a herf="#" onclick="transfered('${row.ab101}')">ת��</a>
											<a herf="#" onclick="delMember('${row.ab101}')">ɾ��</a>
										</c:if>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div id="updateInfo">
		<form method="post">
			<table border="1" align="center" width="50%">
				<caption>
					Ⱥ����Ϣ
					<hr width="160px">
				</caption>
				<tr>
					<td>Ⱥ����:</td>
					<td><e:text name="aae102" required="true"
							defval="${ins.aae102 }" autofocus="true" maxlength="30" /></td>
				</tr>
				<tr>
					<td>Ⱥ��ǩ��:</td>
					<td><e:text name="aae103" defval="${ins.aae103 }"
							maxlength="30" /></td>
				</tr>
				<tr>
					<td>Ⱥ����ϸ����:</td>
					<td><e:textarea rows="10" cols="25" name="aae107"
							defval="${ins.aae107 }" /></td>
					<e:hidden name="aae101" value="${ins.aae101 }" />
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="next" value="�޸�" class="btn btn-default"  formaction="<%=path%>/group_updateGroup.html">
						<button onclick="closeDiv()" class="btn btn-default">ȡ��</button></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="invite">
		<form  id="numberForm"  method="post">
			����������������û����: <input type="text" id="invitedNumber" name="aab101">
			<e:hidden name="aah202"  value="/group_acceptInviteServlt.html?aae101=${ins.aae101 }" />
			<e:hidden name="aah203"  value="/group_refuseInviteServlet.html"/>
			<e:hidden name="aah107"  value="${ins.aae101 }"/>
			<e:hidden name="aah102" value="2"/> 
			<e:hidden  name="aah103"  value="Ⱥ������"/>
			<e:hidden name="aah104"  value="�û�${userId }����������Ⱥ�飺${ins.aae102 }"/>
			<input type="button" onclick="inviteConfirm()" value="ȷ��" class="btn btn-default">
			<input type="button" onclick="closeInviteDiv()" value="ȡ��" class="btn btn-default">
		</form>
	</div>

</body>
</html>
