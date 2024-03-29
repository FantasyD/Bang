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
<title>${ins.aae102 }的主页</title>
<style type="text/css">
#updateInfo {
	display: none;
}

#numberForm {
	display: none;
}
</style>
<script type="text/javascript">
    	//显示隐藏的修改DIV
    	function updateIsClick()
    	{
    			var infoForm=document.getElementById("updateInfo");
    			infoForm.style.display="block";
    	}
    	//隐藏修改DIV
    	function closeDiv()
		{
    			var infoForm=document.getElementById("updateInfo");
				infoForm.style.display="none";
		}
    	//转让创建者身份
    	function transfered(aab101)
    	{
	    		if(confirm("确定要将创建者身份转让给该组员吗？"))
    			{
    					var trans=document.getElementById("empty");
    					trans.action="<%=path%>/group_transferGroup.html?aab101="+aab101;
    					trans.submit();
    			}
    	}
    	//删除组员
    	function delMember(aab101)
    	{
	    		if(confirm("确定要删除该组员吗？"))
    			{
    					var dels=document.getElementById("empty");
    					dels.action="<%=path%>/group_delGroupMember.html?aab101="+aab101;
    					dels.submit();
    			}
    	}
    	//退出该群组
    	function quitIsClick()
    	{
    			if(confirm("您确定要退出该群组吗？"))
    			{
    					var quitBtn=document.getElementById("quit");
	    				quitBtn.action="<%=path%>/group_quitGroup.html";
						quitBtn.submit();
				}
		}
    	//解散该群组
    	function delGroupIsClick()
    	{
    			if(confirm("您确定要解散该群组"))
    			{
    					var delBtn=document.getElementById("quit");
    					delBtn.action="<%=path%>/group_delGroup.html";
						delBtn.submit();
    			}
    	}
		//显示隐藏的邀请DIV
		function inviteIsClicked()
		{
			var infoForm = document.getElementById("numberForm");
			infoForm.style.display = "block";
		}
		
		//隐藏邀请DIV
		function closeInviteDiv()
		{
			var infoForm = document.getElementById("numberForm");
			infoForm.style.display = "none";
		}
		
		//邀请用户
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
				alert("该用户已在群组中")
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
							<td>签名:</td>
							<td>${ins.aae103!=null && ins.aae103!=''?ins.aae103:'该群组暂时没有签名'}</td>
						</tr>
						<tr>
							<td>群组编号:</td>
							<td>${ins.aae104}</td>
						</tr>
						<tr>
							<td>详细描述:</td>
							<td>${ins.aae107!=null&& ins.aae107!=''?ins.aae107:'该群组暂时没有描述'}</td>
						</tr>
						<tr>
							<td>
								<form id="quit" method="post">
									<e:hidden name="aae101" value="${ins.aae101 }" />
									<e:hidden name="aab101" value="${userId }"/>
								</form>
								 <c:forEach items="${rows }" var="row" varStatus="vs">
									<c:if test="${row.ab101==userId }">
										<input type="button" value="修改"  onclick="updateIsClick()" class="btn btn-default"/> 
										<input type="button" value="邀请"  onclick="inviteIsClicked()" class="btn btn-default"/>
										<c:choose>
											<c:when test="<%=isCreater %>">
												<button onclick="delGroupIsClick()" class="btn btn-default">解散群组</button>
											</c:when>
											<c:otherwise>
												<button onclick="quitIsClick()" class="btn btn-default">退出群组</button>
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
					<caption>群组成员</caption>
					<thead>
						<tr>
							<th>序号</th>
							<th>身份</th>
							<th>组员名称</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${rows }" var="row" varStatus="vs">
							<tr>
								<td>${vs.count }</td>
								<c:choose>
									<c:when test="${row.ab101==ins.aab101 }">
										<td>创建者</td>
									</c:when>
									<c:otherwise>
										<td>组员</td>
									</c:otherwise>
								</c:choose>
								<td>${row.ab102 }</td>
								<td><c:if test="${row.ab101!=ins.aab101 }">
										<c:if test="<%=isCreater%>">
											<form id="empty" method="post">
												<e:hidden name="aae101" value="${ins.aae101 }" />
											</form>
											<a herf="#" onclick="transfered('${row.ab101}')">转让</a>
											<a herf="#" onclick="delMember('${row.ab101}')">删除</a>
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
					群组信息
					<hr width="160px">
				</caption>
				<tr>
					<td>群组名:</td>
					<td><e:text name="aae102" required="true"
							defval="${ins.aae102 }" autofocus="true" maxlength="30" /></td>
				</tr>
				<tr>
					<td>群组签名:</td>
					<td><e:text name="aae103" defval="${ins.aae103 }"
							maxlength="30" /></td>
				</tr>
				<tr>
					<td>群组详细描述:</td>
					<td><e:textarea rows="10" cols="25" name="aae107"
							defval="${ins.aae107 }" /></td>
					<e:hidden name="aae101" value="${ins.aae101 }" />
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="next" value="修改" class="btn btn-default"  formaction="<%=path%>/group_updateGroup.html">
						<button onclick="closeDiv()" class="btn btn-default">取消</button></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="invite">
		<form  id="numberForm"  method="post">
			请输入你想邀请的用户编号: <input type="text" id="invitedNumber" name="aab101">
			<e:hidden name="aah202"  value="${pageContext.request.contextPath}/group_acceptInviteServlt.html?aae101=${ins.aae101 }" />
			<e:hidden name="aah203"  value="${pageContext.request.contextPath}/group_refuseInviteServlet.html"/>
			<e:hidden name="aae101"  value="${ins.aae101 }"/>
			<e:hidden name="aah102" value="2"/> 
			<e:hidden  name="aah103"  value="群组邀请"/>
			<e:hidden name="aah104"  value="用户${userName }邀请您加入群组：${ins.aae102 }"/>
			<input type="button" onclick="inviteConfirm()" value="确定" class="btn btn-default">
			<input type="button" onclick="closeInviteDiv()" value="取消" class="btn btn-default">
		</form>
	</div>

</body>
</html>
