<%@ page language="java"  pageEncoding="GBK"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<!--Sidebar Start-->
				<div id="wt-sidebarwrapper" class="wt-sidebarwrapper">
					<div id="wt-btnmenutoggle" class="wt-btnmenutoggle">
						<span class="menu-icon">
							<em></em>
							<em></em>
							<em></em>
						</span>
					</div>
					<div id="wt-verticalscrollbar" class="wt-verticalscrollbar">
						<div class="wt-companysdetails wt-usersidebar">
							<figure class="wt-companysimg">
								<img src="images/sidebar/img-01.jpg" alt="img description">
							</figure>
							
							<!-- �û��� -->
							<div class="wt-companysinfo">
								<figure><img src="images/sidebar/img-02.jpg" alt="img description"></figure>
								<div class="wt-title">
									<h2><a href="javascript:void(0);"> Louanne Mattioli</a></h2>
									<span>Amento Tech</span>
								</div>
							</div>
						</div>
						
						<nav id="wt-navdashboard" class="wt-navdashboard">
							<ul>
								<li>
									<a href="userInfo.jsp">
										<i class="ti-dashboard"></i>
										<span>�ҵ���ҳ</span>
									</a>
								</li>
								<li>
									<a href="myPost.jsp">
										<i class="ti-briefcase"></i>
										<span>�ҵ�����</span>
									</a>
								</li>
								<li>
									<a href="<%=path %>/group_myGroups.html">
										<i class="ti-package"></i>
										<span>�ҵ�Ⱥ��</span>
									</a>
								</li>
								<li class="wt-notificationicon">
									<a href="javascript:void(0);">
										<i class="ti-pencil-alt"></i>
										<span>�ҵ���Ϣ</span>
									</a>
								</li>
								<li>
									<a href="myEmails.jsp">
										<i class="ti-announcement"></i>
										<span>�ҵ��ʼ�</span>
									</a>
								</li>
								<li>
									<a href="index.html">
										<i class="ti-shift-right"></i>
										<span>�˳�</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<!--Sidebar Start-->
				
</body>
</html>