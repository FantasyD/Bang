<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();  %>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>�ҵ�����</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="icon" href="images/favicon.png" type="image/x-icon">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/scrollbar.css">
	<link rel="stylesheet" href="css/fontawesome/fontawesome-all.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/tipso.css">
	<link rel="stylesheet" href="css/chosen.css">
	<link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/dashboard.css">
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/transitions.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="css/dbresponsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body class="wt-login" onLoad="goPage(1,10);">
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
		
		<jsp:include page="head.jsp"></jsp:include>
		
			<!--Main Start-->
			<main id="wt-main" class="wt-main wt-haslayout">
				<!--Sidebar Start-->
				<jsp:include page="userBtn.jsp"></jsp:include>
				<!--Sidebar Start-->
				<!--Register Form Start-->
				<section class="wt-haslayout wt-dbsectionspace">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-9">
							<div class="wt-dashboardbox">
								<div class="wt-dashboardboxtitle">
									<h2>�ҵ�����</h2>
								</div>
								<div class="wt-dashboardboxcontent">
									<div class="wt-managejobcontent wt-verticalscrollbar">
										
										
										<c:choose>
											<c:when test="${rows!=null }">
												<table id="idData">
												<c:forEach items="${rows }" var="ins" varStatus="vs">
													<tr>
													
													<div class="wt-userlistinghold wt-featured wt-userlistingvtwo" id="div${vs.count }">
														<span class="wt-featuredtag wt-featuredtagcolor3">
															<img src="images/featured.png" alt="img description" data-tipso="Plus Member" class="template-content tipso_style">
														</span>
														<div class="wt-userlistingcontent wt-userlistingcontentvtwo">
															<div class="wt-contenthead">
																<div class="wt-title">
																	<a href="#"><i class="fa fa-check-circle"></i>${ins.cnaac103 }��</a>
																	<a href="#" onclick = "onEdit('${ins.aac101 }')"><h2> ${ins.aac102 } </h2></a>
																</div>
																<ul class="wt-saveitem-breadcrumb wt-userlisting-breadcrumb">
																	<li><span class="wt-dashboraddoller"><i class="lnr lnr-tag"></i> ${ins.aac106 }</span></li>
																	<li><span class="wt-dashboradclock"><i class="far fa-clock"></i> ${ins.aac108 }</span></li>				
																</ul>
															</div>
															<div class="wt-rightarea">
																<div class="wt-btnarea">
																	<a href="#" onclick="onModify('${ins.aac101}')" class="wt-cancelbtn">�޸�</a>
																	<a href="javascript:void(0);" class="wt-cancelbtn">�ö�����</a>
																	<a href="#" onclick="onDel('${ins.aac101}')" class="wt-cancelbtn">ɾ��</a>
																</div>
															</div>
														</div>	
													</div>
													
													</tr>
												</c:forEach>
												</table>
											</c:when>
										</c:choose>			
										
									
									
																												
									</div>
								</div>
								<table width="60%" align="right" >
											<tr><td><div id="barcon" name="barcon"></div></td></tr>
								</table>
										
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 col-xl-3">
							<aside id="wt-sidebar" class="wt-sidebar wt-dashboardsave">
								<div class="wt-proposalsr">
									<div class="wt-proposalsrcontent">
										<figure>
											<img src="images/thumbnail/img-17.png" alt="image">
										</figure>
										<div class="wt-title">
											<h3>${fn:length(rows)}</h3>
											<span>������������</span>
										</div>
									</div> 
								</div>																			
							</aside>					
						</div>
					</div>
				</section>
				<!--Register Form End-->
			</main>
			<!--Main End-->	
		</div>
		<!--Content Wrapper End-->
	</div>
	
	<form id = "myform">
		<input type="hidden" name="aac101" id="aac101">
		<input type="hidden" name="type" value="1">
	</form>
	
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
	<script>
		const menu_icon = document.querySelector('.menu-icon');
		function addClassFunThree() {
	        this.classList.toggle("click-menu-icon");
	    }
	    menu_icon.addEventListener('click', addClassFunThree);
	</script>
	

	<script type="text/javascript">
	/**
	 * ��ҳ����
	 * pno--ҳ��
	 * psize--ÿҳ��ʾ��¼��
	 * ��ҳ�����Ǵ���ʵ�����п�ʼ��������ڼӼ�ĳ����������ȷ�������ļ�¼��
	 * ��js��ҳʵ����������ȫ�����أ�ͨ���Ƿ���ʾ������ɷ�ҳ����
	 **/
	function goPage(pno,psize){
	  var itable = document.getElementById("idData");
	  var num = itable.rows.length;//�����������(���м�¼��)
	  console.log(num);
	  var totalPage = 0;//��ҳ��
	  var pageSize = psize;//ÿҳ��ʾ����
	  //�ܹ��ּ�ҳ
	  if(num/pageSize > parseInt(num/pageSize)){
	      totalPage=parseInt(num/pageSize)+1;
	    }else{
	      totalPage=parseInt(num/pageSize);
	    }
	  var currentPage = pno;//��ǰҳ��
	  var startRow = (currentPage - 1) * pageSize+1;//��ʼ��ʾ���� 31
	  var endRow = currentPage * pageSize;//������ʾ����  40
	    endRow = (endRow > num)? num : endRow;  //40
	    console.log(endRow);
	    //������ʾ����ʵ�ַ�ҳ
	  for(var i=1;i<(num+1);i++){
	    if(i>=startRow && i<=endRow){
	    	document.getElementById("div"+i).style.display = "block";
	    }else{
	    	document.getElementById("div"+i).style.display = "none";
	    }
	  }
	  var tempStr = "��"+num+"����¼ ��"+totalPage+"ҳ ��ǰ��"+currentPage+"ҳ";
	  if(currentPage>1){
	    tempStr += "<a href=\"#\" onClick=\"goPage("+(1)+","+psize+")\">��ҳ</a>";
	    tempStr += "<a href=\"#\" onClick=\"goPage("+(currentPage-1)+","+psize+")\"><��һҳ</a>"
	  }else{
	    tempStr += "��ҳ";
	    tempStr += "<��һҳ";
	  }
	  if(currentPage<totalPage){
	    tempStr += "<a href=\"#\" onClick=\"goPage("+(currentPage+1)+","+psize+")\">��һҳ></a>";
	    tempStr += "<a href=\"#\" onClick=\"goPage("+(totalPage)+","+psize+")\">βҳ</a>";
	  }else{
	    tempStr += "��һҳ>";
	    tempStr += "βҳ";
	  }
	  document.getElementById("barcon").innerHTML = tempStr;
	}
	
	
	function onEdit(vaac101)
	{
		var vform = document.getElementById("myform");
		document.getElementById("aac101").value = vaac101;
		vform.action = "<%=path%>/tiezi_findByIdMyTiezi.html";
		vform.submit();
	}
	
	
	
	function onModify(vaac101)
	{
		var vform = document.getElementById("myform");
		document.getElementById("aac101").value = vaac101;
		vform.action="<%=path%>/tiezi_findByIdToModifyTiezi.html";
		vform.submit();
	} 
	
	
	function onDel(vaac101)
	{
		var vform = document.getElementById("myform");
		document.getElementById("aac101").value = vaac101;
		vform.action="<%=path%>/tiezi_delByIdTiezi.html";
		vform.submit();
	} 
	
	</script>
</body>
</html>