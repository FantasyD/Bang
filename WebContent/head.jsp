<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" pageEncoding="GBK"%>
<% String path=request.getContextPath(); 
		session.setAttribute("userId", "1");
		session.setAttribute("userName", "�ɶ�");
%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/iziToast.min.css">
	<link rel="stylesheet" href="css/demo.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <script src="js/iziToast.min.js" type="text/javascript"></script>
</head>
<body>
<!-- Header Start -->
			<header id="wt-header" class="wt-header wt-headervtwo wt-haslayout">
				<div class="wt-navigationarea">
					<div class="container-fluid">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							
								<!-- ��ת����ҳ��ҳ�������Ͻǵ�logo -->
								<strong class="wt-logo"><a href="index.jsp"><img src="images/logo.png" alt="company logo here"></a></strong>
								
								<!-- �����򣬵����������� -->
								<form class="wt-formtheme wt-formbanner wt-formbannervtwo">
									<fieldset>
										<div class="form-group">
											<input type="text" name="job" class="form-control" placeholder="I��m looking for">
											<div class="wt-formoptions">
												<div class="wt-dropdown">
													<span>��: <em class="selected-search-type">���� </em><i class="lnr lnr-chevron-down"></i></span>
												</div>
												<div class="wt-radioholder">
													<span class="wt-radio">
														<input id="wt-freelancers" data-title="����" type="radio" name="searchtype" value="freelancer" checked="">
														<label for="wt-freelancers">����</label>
													</span>
													<span class="wt-radio">
														<input id="wt-jobs" data-title="�û�" type="radio" name="searchtype" value="job">
														<label for="wt-jobs">�û�</label>
													</span>
													<span class="wt-radio">
														<input id="wt-companies" data-title="Ⱥ��" type="radio" name="searchtype" value="job">
														<label for="wt-companies">Ⱥ��</label>
													</span>
												</div>
												<a href="javascrip:void(0);" class="wt-searchbtn"><i class="lnr lnr-magnifier"></i></a>
											</div>
										</div>
									</fieldset>
								</form>
								
								<div class="wt-rightarea">
									<div class="wt-userlogedin">
										<figure class="wt-userimg">
											<img src="images/user-img.jpg" alt="image description">
										</figure>
										<div class="wt-username">
											<h3>Louanne Mattioli</h3>
											<span>Amento Tech</span>
										</div>
										<nav class="wt-usernav">
											<ul>
											<!-- ��ѯ�ҵ���Ϣ -->
												<li>
													<a href="userInfo.jsp">
														<span>�ҵ���ҳ</span>
													</a>
												</li>
												<!-- ��ѯ�ҵ����� -->
												<li>
													<a href="myPost.jsp">
														<span>�ҵ�����</span>
													</a>
												</li>
												<!-- ��ѯ�ҵ�Ⱥ�� -->
												<li>
													<a href="#" onclick="myGroups()">
														<span>�ҵ�Ⱥ��</span>
													</a>
												</li>
												<li class="wt-notificationicon">
													<a href="#" onclick="javascript:void(0);">
														<span>�ҵ���Ϣ</span>
													</a>
												</li>
												<li>
													<a href="#" onclick="myEmails()">
														<span>�ҵ��ʼ�</span>
													</a>
												</li>
												<li>
													<a href="index.html">
														<span>�˳�</span>
													</a>
												</li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
						<!--Header End-->
			<form method="post" id="message">
					<input type="hidden" name="aab101" value="${userId }"/>
			</form>			
			
						
						
  <script type="text/javascript">
  //��ȡ�ҵ�Ⱥ��
  function myGroups()
  {
	  var myForm=$("#message");
	  myForm.action="<%=path %>/group_findGroup.html";
	  myForm.submit();
  }
  //��ȡ�ҵ��ʼ�
  function myEmails()
  {
	  var myForm=$("#message");
	  myForm.action="<%=path %>/email_getEmail.html";
	  myForm.submit();
  }
  
  function askEmail(newNum)
  {
		$.ajax
		({
			type:"POST",
			url:'<%=path%>/email_CheckEmail.html',
			data:{'aab101':'${userId}','emailNum':newNum},
			timeout:30*60*1000,  //����30���ӳ�ʱ
			success:function(data)
			{
				newNum=data;
				$("#msgNum").text(data)
				iziToast.error({
	        		title: '��ʾ',
	        		message: '����'+data+'��δ����ʾ',
	       			position: 'bottomRight',
	        		transitionIn: 'fadeInDown'
	    		});
				askEmail(newNum);
			},
			error:function()
			{
				alert("���㳬ʱ");	
				askEmail(newNum);
			}
		});
	};

	iziToast.settings({
	    timeout: 5000,
	    pauseOnHover: true,
	    close: true,
	    progressBar: true,
	});
	
$(document).ready(function()
		{
			var newNum=0;
			askEmail(newNum);
		})
</script>
</body>
</html>