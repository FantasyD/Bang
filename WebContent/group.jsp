<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	Map<String, String> ins = (Map<String, String>) request.getAttribute("ins");
	boolean isCreater = (session.getAttribute("aab101").equals(ins.get("aab101")));
%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<title>${ins.aae102 }����ҳ</title>
<style type="text/css">
#updateInfo {
	display: none;
}

#numberForm {
	display: none;
}
</style>
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
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
    			var trans=document.getElementById("empty");
    			trans.action="<%=path%>/transferGroup.html?aab101="+aab101;
    			trans.submit();
    	}
    	//ɾ����Ա
    	function delMember(aab101)
    	{
    			var dels=document.getElementById("empty");
    			dels.action="<%=path%>/delGroupMember.html?aab101="+aab101;
    			dels.submit();
    	}
    	//�˳���Ⱥ��
    	function quitIsClick(aae101)
    	{
    			if(confirm("��ȷ��Ҫ�˳���Ⱥ����"))
    			{
    					var quitBtn=document.getElementById("quit");
	    				quitBtn.action="<%=path%>/quitGroup.html";
						quitBtn.submit();
				}
		}
    	//��ɢ��Ⱥ��
    	function delGroupIsClick()
    	{
    			if(confirm("��ȷ��Ҫ��ɢ��Ⱥ��"))
    			{
    				var delBtn=document.getElementById("quit");
    				delBtn.action="<%=path%>/delGroup.html";
					delBtn.submit();
    			}
    	}
		//��ʾ���ص��޸�DIV
		function inviteIsClicked() {
			var infoForm = document.getElementById("numberForm");
			infoForm.style.display = "block";
		}
		//�����޸�DIV
		function closeInviteDiv() {
			var infoForm = document.getElementById("numberForm");
			infoForm.style.display = "none";
		}
</script>
</head>

<body>
	${msg }
	<div class="col-md-8">
		<div class="panel panel-default">
			<div class="panel-body">
				<table class="table">
					<caption>
						<img class="img-circle"
							src="${ins.aae105!=null && ins.aae105!=''?ins.aae105:'upload/index.jpg'}"
							width="30px" height="30px" alt="ͷ��" /> ${ins.aae102 }
					</caption>
					<tbody>
						<tr>
							<td>${ins.aae103!=null && ins.aae103!=''?ins.aae103:'��Ⱥ����ʱû��ǩ��'}</td>
						</tr>
						<tr>
							<td>${ins.aae104}</td>
						</tr>
						<tr>
							<td>${ins.aae107!=null&& ins.aae107!=''?ins.aae107:'��Ⱥ����ʱû������'}</td>
						</tr>
						<tr>
							<td><input type="button" id="update" value="�޸�"
								onclick="updateIsClick()" /> <input type="button" value="����"
								onclick="inviteIsClicked()" />
								<form id="quit" method="post">
									<e:hidden name="aae101" value="${ins.aae101 }" />
								</form> <c:forEach items="${rows }" var="row" varStatus="vs">
									<c:if test="${row.ab101==ins.aab101 }">
										<c:choose>
											<c:when test="<%=isCreater %>">
												<button onclick="delGroupIsClick()">��ɢȺ��</button>
											</c:when>
											<c:otherwise>
												<button onclick="quitIsClick('${ins.aae101}')">�˳�Ⱥ��</button>
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
		<form action="<%=path%>/updateGroup.html" method="post">
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
				</tr>
				<e:hidden name="aae101" value="${aae101 }" />
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="next" value="�޸�">
						<button onclick="closeDiv()">ȡ��</button></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="invite">
		<form action="<%=path%>/inviteToGroup.html" id="numberForm">
			����������������û���: <input type="text" id="invitedNumber" name="aab101">
			<e:hidden name="aae101" value="${ins.aae101 }" />
			<input type="submit" value="ȷ��">
			<button onclick="closeInviteDiv()">ȡ��</button>
		</form>
	</div>

</body>
</html>
