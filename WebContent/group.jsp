<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/signin.css" rel="stylesheet">
    <title>${ins.aae102 }����ҳ</title>
    
    
    <style type="text/css">
    	#updateInfo
    	{
    			display:none;
    	}
    </style>
    <script type="text/javascript">
    	function updateIsClick()
    	{
    			var infoForm=document.getElementById("updateInfo");
    			infoForm.style.display="block";
    	}
    	function closeDiv()
		{
    			var infoForm=document.getElementById("updateInfo");
				infoForm.style.display="none";
		}
    	</script>
  </head>
  <body>
  	<div class="col-md-8" >
  		<div class="panel panel-default">  
        <div class="panel-body">  
          <table class="table">  
            <caption>${ins.aae102 }</caption>  
            <tbody>
              <tr>
              	<td>${ins.aae103!=null && ins.aae103!=''?ins.aae103:'��Ⱥ����ʱû��ǩ��'}</td>
              </tr>    
              <tr>  
               	<td>${ins.aae104}</td>
              </tr>  
              <tr>  
                <td>${ins.aae105}</td>
              </tr>  
              <tr>  
                <td>${ins.aae107!=null&& ins.aae107!=''?ins.aae107:'��Ⱥ����ʱû������'}</td>
              </tr>
              <tr>
              	<td>
              		<input type="button" id="update" value="�޸�" onclick="updateIsClick()"/>
              	</td>
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
              </tr>  
            </thead>  
            <tbody>  
            	<c:forEach items="${rows }"  var="row" varStatus="vs">
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
            		</tr>
            	</c:forEach>
            </tbody>  
          </table>  
        </div>  
      </div>  
    </div>  
    
    <div id="updateInfo" >
    <form action="<%=path %>/updateGroup.html" method="post" >
		<table border="1" align="center" width="50%">
				<caption>
						Ⱥ����Ϣ
						<hr width="160px">
				</caption>
				<tr>
						<td>Ⱥ����:</td>
						<td>
								<e:text  name="aae102"  required="true"  defval="${ins.aae102 }" autofocus="true"  maxlength="30" />
						</td>
				</tr>
				<tr>
						<td>Ⱥ��ǩ��:</td>
						<td>
								<e:text  name="aae103" defval="${ins.aae103 }"  maxlength="30"/>
						</td>
				</tr>
				<tr>
						<td>Ⱥ����:</td>
						<td>
								<e:text  name="aae105" defval="${ins.aae105 }"/>
						</td>
				</tr>
				<tr>
						<td>Ⱥ����ϸ����:</td>
						<td>
								<e:textarea rows="10" cols="25" name="aae107" defval="${ins.aae107 }"/>
						</td>
				</tr>
				<e:hidden name="aae101" value="${aae101 }"/>
				<tr>
						<td  colspan="2"  align="center">
								<input  type="submit"  name="next"  value="�޸�"  >
								<button onclick="closeDiv()">ȡ��</button>
						</td>
				</tr>
		</table>
		</form>
    </div>
    
  </body>
</html>
