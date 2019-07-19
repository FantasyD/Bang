<%@ page language="java"  pageEncoding="GBK"%>
<%String path=request.getContextPath(); %>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>У԰����ƽ̨</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="icon" href="images/favicon.png" type="image/x-icon">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/scrollbar.css">
	<link rel="stylesheet" href="css/fontawesome/fontawesome-all.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/tipso.css">
	<link rel="stylesheet" href="css/chosen.css">
	<link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/transitions.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	
	<script type="text/javascript">
		function s() 
		{
			var form1=document.getElementById("form1");
			var value=$('#type input[name="searchtype"]:checked').val();
			if (value=='2') 
			{
				form1.action = "<%=path%>/search_search.html";
				form1.submit();
			}
			if (value=='1') {
				form1.action = "<%=path%>/tiezi_searchTiezi.html";
				form1.submit();
			}
		}
		
		function s2() 
		{
			var form2=document.getElementById("form2");
			form2.action = "<%=path%>/tiezi_searchTiezi.html";
			form2.submit();
		}
	</script>
</head>
<body class="wt-login">
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!-- Preloader Start -->
	<div class="preloader-outer">
		<div class="loader"></div>
	</div>
	<!-- Preloader End -->
	<!-- Wrapper Start -->
	<div id="wt-wrapper" class="wt-wrapper wt-haslayout">
		<!-- Content Wrapper Start -->
		<div class="wt-contentwrapper">
<<<<<<< HEAD
			<!-- Header Start -->
			<header id="wt-header" class="wt-header wt-headervtwo wt-haslayout">
				<div class="wt-navigationarea">
					<div class="container-fluid">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<strong class="wt-logo"><a href="index.html"><img src="images/logo.png" alt="company logo here"></a></strong>
								<form id="form1" class="wt-formtheme wt-formbanner wt-formbannervtwo" method="post">
									<fieldset>
										<div class="form-group">
											<input type="text" name="message" class="form-control" placeholder="I��m looking for">
											<div class="wt-formoptions">
												<div class="wt-dropdown">
													<span>In: <em class="selected-search-type">���� </em><i class="lnr lnr-chevron-down"></i></span>
												</div>
												<div class="wt-radioholder" id="type">
													<span class="wt-radio">
														<input id="wt-freelancers" data-title="����" type="radio" name="searchtype" value="1" checked="checked" >
														<label for="wt-freelancers">����</label>
													</span>
													<span class="wt-radio">
														<input id="wt-jobs" data-title="�û�" type="radio" name="searchtype" value="2" >
														<label for="wt-jobs">�û�</label>
													</span>
												</div>
												<a href="#" class="wt-searchbtn" onclick="s()"><i class="lnr lnr-magnifier"></i></a>
											</div>
										</div>
									</fieldset>
								</form>
																<div class="wt-rightarea">
									<nav id="wt-nav" class="wt-nav navbar-expand-lg">
										<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
											<i class="lnr lnr-menu"></i>
										</button>
										<div class="collapse navbar-collapse wt-navigation" id="navbarNav">
											<ul class="navbar-nav">
												<li class="menu-item-has-children page_item_has_children">
													<a href="javascript:void(0);">Main</a>
													<ul class="sub-menu">
														<li class="menu-item-has-children page_item_has_children wt-notificationicon"><span class="wt-dropdowarrow"><i class="lnr lnr-chevron-right"></i></span>
															<a href="javascript:void(0);">Home</a>
															<ul class="sub-menu">
																<li><a href="index.html">Home v1</a></li>
																<li class="wt-newnoti"><a href="indexvtwo.html">Home v2<em>without login</em></a></li>
															</ul>
														</li>
														<li class="menu-item-has-children page_item_has_children"><span class="wt-dropdowarrow"><i class="lnr lnr-chevron-right"></i></span>
															<a href="javascript:void(0);">Article</a>
															<ul class="sub-menu">
																<li><a href="articlelist.html">Article List</a></li>
																<li><a href="articlegrid.html">Article Grid</a></li>
																<li><a href="articlesingle.html">Article Single</a></li>
																<li><a href="articleclassic.html">Article Classic</a></li>
															</ul>
														</li>
														<li class="menu-item-has-children page_item_has_children"><span class="wt-dropdowarrow"><i class="lnr lnr-chevron-right"></i></span>
															<a href="javascript:void(0);">Company</a>
															<ul class="sub-menu">
																<li><a href="companygrid.html">Company Grid</a></li>
																<li><a href="companysigle.html">Company Sigle</a></li>
															</ul>
														</li>
														<li>
															<a href="about.html">About</a>
														</li>
														<li>
															<a href="privacypolicy.html">Privacy Policy</a>
														</li>
														<li>
															<a href="comingsoon.html">Coming Soon</a>
														</li>
														<li>
															<a href="404page.html">404page</a>
														</li>
													</ul>
												</li>
												<li class="nav-item">
													<a href="howitworks.html">How It Works</a>
												</li>
												<li class="menu-item-has-children page_item_has_children">
													<a href="javascript:void(0);">Browse Jobs</a>
													<ul class="sub-menu">
														<li>
															<a href="joblisting.html">Job Listing</a>
														</li>
														<li class="current-menu-item">
															<a href="jobsingle.html">Job Single</a>
														</li>
														<li>
															<a href="jobproposal.html">Job Proposal</a>
														</li>
													</ul>
												</li>
												<li class="menu-item-has-children page_item_has_children">
													<a href="javascript:void(0);">View Freelancers</a>
													<ul class="sub-menu">
														<li>
															<a href="userlisting.html">User Listing</a>
														</li>
														<li class="current-menu-item">
															<a href="usersingle.html">User Single</a>
														</li>
													</ul>
												</li>
											</ul>
										</div>
									</nav>
									<div class="wt-loginarea">
										<figure class="wt-userimg">
											<img src="images/user-login.png" alt="img description">
										</figure>
										<div class="wt-loginoption">
											<a href="javascript:void(0);" id="wt-loginbtn" class="wt-loginbtn">Login</a>
											<div class="wt-loginformhold">
												<div class="wt-loginheader">
													<span>Login</span>
													<a href="javascript:;"><i class="fa fa-times"></i></a>
												</div>
												<form class="wt-formtheme wt-loginform do-login-form">
													<fieldset>
														<div class="form-group">
															<input type="text" name="username" class="form-control" placeholder="Username">
														</div>
														<div class="form-group">
															<input type="password" name="password" class="form-control" placeholder="Password">
														</div>
														<div class="wt-logininfo">
															<a href="javascript:;" class="wt-btn do-login-button">Login</a>
															<span class="wt-checkbox">
																<input id="wt-login" type="checkbox" name="rememberme">
																<label for="wt-login">Keep me logged in</label>
															</span>
														</div>
													</fieldset>
																										<div class="wt-loginfooterinfo">
														<a href="javascript:;" class="wt-forgot-password">Forgot password?</a>
														<a href="register.html">Create account</a>
													</div>
												</form>
											    <form class="wt-formtheme wt-loginform do-forgot-password-form wt-hide-form">
											        <fieldset>
											            <div class="form-group">
											                <input type="email" name="email" class="form-control get_password" placeholder="Email">
											            </div>
											           
											            <div class="wt-logininfo">
											                <a href="javascript:;" class="wt-btn do-get-password">Get Pasword</a>
											            </div>     
											        </fieldset>
											        <div class="wt-loginfooterinfo">
											            <a href="javascript:void(0);" class="wt-show-login">Login</a>
											            <a href="register.html">Create account</a>
											        </div>
											    </form>
											</div>
										</div>
										<a href="register.html" class="wt-btn">Join Now</a>
									</div>
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
												<li class="menu-item-has-children page_item_has_children">
													<a href="javascript:void(0);">
														<span>Insights</span>
													</a>
													<ul class="sub-menu children">
														<li><a href="dashboard-insights.html">Insights</a></li>
														<li><a href="dashboard-insightsuser.html">Insights User</a></li>
													</ul>
												</li>
												<li>
													<a href="dashboard-profile.html">
														<span>My Profile</span>
													</a>
												</li>
												<li class="menu-item-has-children">
													<a href="javascript:void(0);">
														<span>All Jobs</span>
													</a>
													<ul class="sub-menu">
														<li><a href="dashboard-completejobs.html">Completed Jobs</a></li>
														<li><a href="dashboard-canceljobs.html">Cancelled Jobs</a></li>
														<li><a href="dashboard-ongoingjob.html">Ongoing Jobs</a></li>
														<li><a href="dashboard-ongoingsingle.html">Ongoing Single</a></li>
													</ul>
												</li>
												<li>
													<a href="dashboard-managejobs.html">
														<span>Manage Jobs</span>
													</a>
												</li>
												<li class="wt-notificationicon menu-item-has-children">
													<a href="javascript:void(0);">
														<span>Messages</span>
													</a>
													<ul class="sub-menu">
														<li><a href="dashboard-messages.html">Messages</a></li>
														<li><a href="dashboard-messages2.html">Messages V 2</a></li>
													</ul>
												</li>
												<li>
													<a href="dashboard-saveitems.html">
														<span>My Saved Items</span>
													</a>
												</li>
												<li>
													<a href="dashboard-invocies.html">
														<span>Invoices</span>
													</a>
												</li>
												<li>
													<a href="dashboard-category.html">
														<span>Category</span>
													</a>
												</li>
												<li>
													<a href="dashboard-packages.html">
														<span>Packages</span>
													</a>
												</li>
												<li>
													<a href="dashboard-proposals.html">
														<span>Proposals</span>
													</a>
												</li>
												<li>
													<a href="dashboard-accountsettings.html">
														<span>Account Settings</span>
													</a>
												</li>
												<li>
													<a href="dashboard-helpsupport.html">
														<span>Help &amp; Support</span>
													</a>
												</li>
												<li>
													<a href="index.html">
														<span>Logout</span>
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
=======
		
		<!-- ���뵼���� -->
		<jsp:include page="head.jsp"></jsp:include>
		
		
>>>>>>> 614e1804db5bcfea9cc123ec119cd37cf332ba46
			<!--Inner Home Banner Start-->
			<div class="wt-haslayout wt-innerbannerholder">
				<div class="container">
					<div class="row justify-content-md-center">
						<div class="col-xs-12 col-sm-12 col-md-8 push-md-2 col-lg-6 push-lg-3">
							<div class="wt-innerbannercontent">
							<div class="wt-title"><h2>����</h2></div>
							<ol class="wt-breadcrumb">
								<li><a href="#">Post</a></li>
								<li class="wt-active">Articles</li>
							</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Inner Home End-->
			<!--Main Start-->
			<main id="wt-main" class="wt-main wt-haslayout wt-innerbgcolor">
				<!--Two Columns Start-->
				<div class="wt-haslayout wt-main-section">
					<div class="container">
						<div class="row">
							<div id="wt-twocolumns" class="wt-twocolumns wt-haslayout">
								<div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 col-xl-4 float-left">
									<aside id="wt-sidebar" class="wt-sidebar">
										<div class="wt-widget wt-startsearch">
											<div class="wt-widgettitle">
												<h2>����</h2>
											</div>
											<div class="wt-widgetcontent">
												<form class="wt-formtheme wt-formsearch" id="form2" method="post">
													<fieldset>
														<div class="form-group">
															<input type="text" name="message" class="form-control" placeholder="��������">
															<a href="#" class="wt-searchgbtn" onclick="s2()"><i class="lnr lnr-magnifier"></i></a>
														</div>
													</fieldset>
												</form>
											</div>
										</div>
										<div class="wt-widget wt-categoriesholder">
											<div class="wt-widgettitle">
												<h2>��������</h2>
											</div>
											<div class="wt-widgetcontent">
												<ul class="wt-categoriescontent">
													<li><a href="javascript:void(0);">�� <em>15325</em></a></li>
													<li><a href="javascript:void(0);">��ȡ <em>562748</em></a></li>
													<li><a href="javascript:void(0);">����Ϣ <em>3488</em></a></li>
													<li><a href="javascript:void(0);">���� <em>86452</em></a></li>
													<li><a href="javascript:void(0);">��ѧϰ����  <em>325</em></a></li>
													<li><a href="javascript:void(0);">���� <em>886548</em></a></li>
												</ul>
											</div>
										</div>
										<div class="wt-widget wt-widgetarticlesholder">
											<div class="wt-widgettitle">
												<h2>Popular Article</h2>
											</div>
											<div class="wt-widgetcontent">
												<div class="wt-particlehold">
													<figure>
														<img src="images/thumbnail/img-01.jpg" alt="image description">
													</figure>
													<div class="wt-particlecontent">
														<h3><a href="javascript:void(0);">10 Mesmerizing Examples Of Business</a></h3>
														<span><i class="lnr lnr-clock"></i> Jun 27, 2018</span>
													</div>
												</div>
												<div class="wt-particlehold">
													<figure>
														<img src="images/thumbnail/img-02.jpg" alt="image description">
													</figure>
													<div class="wt-particlecontent">
														<h3><a href="javascript:void(0);">Introducing The Simple Way To Business</a></h3>
														<span><i class="lnr lnr-clock"></i> Jun 27, 2018</span>
													</div>
												</div>
												<div class="wt-particlehold">
													<figure>
														<img src="images/thumbnail/img-03.jpg" alt="image description">
													</figure>
													<div class="wt-particlecontent">
														<h3><a href="javascript:void(0);">7 Practical Tactics to Turn Business Into a Sales Hub</a></h3>
														<span><i class="lnr lnr-clock"></i> Jun 27, 2018</span>
													</div>
												</div>
											</div>
										</div>
										<div class="wt-widget wt-widgettagshold">
											<div class="wt-widgettitle">
												<h2>�Զ����ǩ</h2>
											</div>
											<div class="wt-widgetcontent">
												<div class="wt-widgettag">
													<a href="javascript:void(0);">DIY</a>
													<a href="javascript:void(0);">�人��ѧ</a>
													<a href="javascript:void(0);">��ҵ</a>
													<a href="javascript:void(0);">90��</a>
													<a href="javascript:void(0);">00��</a>
													<a href="javascript:void(0);">������</a>
													<a href="javascript:void(0);">������</a>
												</div>
											</div>
										</div>
									</aside>
								</div>
								<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 col-xl-8 float-left">
									<div class="wt-classicaricle-holder">
										<div class="wt-classicaricle-header">
											<div class="wt-title">
												<h2>Our Latest Articles</h2>
											</div>
											<div class="wt-description">
												<p>Consectetur adipisicing elit sed dotem eiusmod tempor incunetion labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination.</p>
											</div>
										</div>
										<div class="wt-article-holder">
											<div class="wt-article">
												<figure>
													<img src="images/article/classic/img-01.jpg" alt="img description">
												</figure>
												<div class="wt-articlecontent">
													<div class="wt-title">
														<h2>Who Else Wants To Be Successful With Business</h2>
													</div>
													<ul class="wt-postarticlemeta">
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-clock"></i>
																<span>June 27, 2018</span>
															</a>
														</li>
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-user"></i>
																<span>Marina Groth</span>
															</a>
														</li>
													</ul>
												</div>
											</div>
											<div class="wt-article">
												<figure>
													<img src="images/article/classic/img-02.jpg" alt="img description">
												</figure>
												<div class="wt-articlecontent">
													<div class="wt-title">
														<h2>20 Top Tips For Business</h2>
													</div>
													<ul class="wt-postarticlemeta">
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-clock"></i>
																<span>June 27, 2018</span>
															</a>
														</li>
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-user"></i>
																<span>Louanne Mattioli</span>
															</a>
														</li>
													</ul>
												</div>
											</div>
											<div class="wt-article">
												<figure>
													<img src="images/article/classic/img-03.jpg" alt="img description">
												</figure>
												<div class="wt-articlecontent">
													<div class="wt-title">
														<h2>Clear And Unbiased Facts About Business (Without All the Hype)</h2>
													</div>
													<ul class="wt-postarticlemeta">
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-clock"></i>
																<span>June 27, 2018</span>
															</a>
														</li>
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-user"></i>
																<span>Soraya Roloff</span>
															</a>
														</li>
													</ul>
												</div>
											</div>
											<div class="wt-article">
												<figure>
													<img src="images/article/classic/img-04.jpg" alt="img description">
												</figure>
												<div class="wt-articlecontent">
													<div class="wt-title">
														<h2>7 Ways To Keep Your Business Growing Without Burning The Midnight Oil</h2>
													</div>
													<ul class="wt-postarticlemeta">
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-clock"></i>
																<span>June 27, 2018</span>
															</a>
														</li>
														<li>
															<a href="javascript:void(0);">
																<i class="lnr lnr-user"></i>
																<span>Florentino Norsworthy</span>
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<nav class="wt-pagination">
											<ul>
												<li class="wt-prevpage"><a href="javascrip:void(0);"><i class="lnr lnr-chevron-left"></i></a></li>
												<li><a href="javascrip:void(0);">1</a></li>
												<li><a href="javascrip:void(0);">2</a></li>
												<li><a href="javascrip:void(0);">3</a></li>
												<li><a href="javascrip:void(0);">4</a></li>
												<li><a href="javascrip:void(0);">...</a></li>
												<li><a href="javascrip:void(0);">50</a></li>
												<li class="wt-nextpage"><a href="javascrip:void(0);"><i class="lnr lnr-chevron-right"></i></a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--Two Columns End-->
			</main>
			<!--Main End-->
		</div>
		<!--Content Wrapper End-->
	</div>
	<!--Wrapper End-->
	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/jquery-library.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/chosen.jquery.js"></script>
	<script src="js/tilt.jquery.js"></script>
	<script src="js/scrollbar.min.js"></script>
	<script src="js/prettyPhoto.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/readmore.js"></script>
	<script src="js/countTo.js"></script>
	<script src="js/appear.js"></script>
	<script src="js/tipso.js"></script>
	<script src="js/jRate.js"></script>
	<script src="js/main.js"></script>
</body>
</html>