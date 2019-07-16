<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri = "http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>
${empty param.aac101?'��������':'���������޸�' }
</title>
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
<form action="<%=path%>/tiezi_addTiezi.html" method = "post" enctype="multipart/form-data">
<table border = "1" align = "center" width = "800px" class="table table-striped">
    <caption>
       	${empty param.aac101?'��������':'���������޸�' }
      <hr width="160">
    </caption>
   <tr>
     <td>���ӱ���</td>
     <td>
       <e:text name = "aac102" required = "true" autofocus = "true" defval = "${ins.aac102 }"/>
     </td>
   </tr>   


   <tr>
     <td>��������</td>
     <td>
       <!--
                         ����name�����Զ�����,���ڵ�ѡ 
        -->
       <e:select name = "aac103" required = "true" value = "��:01,��ȡ:02,����Ϣ:03,����:04,��ѧϰ����:05,����:06"  defval="${ins.aac103 }"/>
     </td>
   </tr>
 
   <tr>
     <td>����</td>
     <td>
        <e:text name = "aac105" defval="${ins.aac105 }"/>
     </td>
   </tr>
   
    <tr>
     <td>���ӱ�ǩ</td>
     <td>
       <e:text name = "aac106"  required = "true" defval = "${ins.aac106 }"/>
     </td>
   </tr>   

   <tr>
     <td>��������</td>
     <td>
       <e:textarea rows = "5" cols = "45" required="true" name = "aac104" defval = "${ins.aac104 }"/>
     </td>
   </tr>
    <tr>
     <td>����ͼƬ·��</td>
     <td>
                   ͼƬ:<input type="file" name="photo" id = "photo"/><br/>        
			<img id="preview" src="" style = "width:192px;height:108px"/>
     </td>
   </tr>   
   
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" class="btn btn-default" value="${empty param.aac101?'��������':'�޸�����' }"
       			 formaction = "<%=path%>/${empty param.aac101?'tiezi_addTiezi.html':'tiezi_modifyTiezi.html?' }">
       <input type = "submit" name = "next" value = "����"  class="btn btn-default"
       			formaction="<%=path%>/index.jsp"
       			formnovalidate="formnovalidate">	
     </td>
   </tr>
</table>
<input type="hidden" name="aac101" value="${ins.aac101 }">
<input type="hidden" name="aab101" value="${aab101 }">
</form>
</body>
<script  src="js/jquery-2.1.3.min.js">
</script>
<script type="text/javascript">
var file=$("#photo");
$("#preview").hide();
file.change(function () {
	$("#preview").show();
    $("#preview").attr("src",getObjectURL(file[0].files[0]));
});
function getObjectURL(file) {
    var url = null;
   	/* window.URL = window.URL || window.webkitURL;*/
    if (window.createObjcectURL != undefined) {
        url = window.createOjcectURL(file);
    } else if (window.URL != undefined) {
        url = window.URL.createObjectURL(file);
    } else if (window.webkitURL != undefined) {
        url = window.webkitURL.createObjectURL(file);
    }
    return url;
}
</script>
</html>