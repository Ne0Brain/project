<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Minimal Shop Theme">
<meta name="keywords"
	content="responsive, retina ready, html5, css3, shop, market, onli store, bootstrap theme" />
<meta name="author" content="KingStudio.ro">

<!-- favicon -->
<link rel="icon" href="images/favicon.png">
<!-- page title -->
<title>MS - Minimal Shop Theme</title>
<!-- bootstrap css -->
<link
	href="<%=request.getContextPath()%>/frontend/template/css/bootstrap.min.css"
	rel="stylesheet">
<!-- css -->
<link
	href="<%=request.getContextPath()%>/frontend/template/css/style.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/frontend/template/css/animate.css"
	rel="stylesheet">
<!-- fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Rubik:400,500,700,900"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lily+Script+One"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/frontend/template/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='<%=request.getContextPath()%>/frontend/template/fonts/FontAwesome.otf'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/frontend/template/css/linear-icons.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body>

	<jsp:useBean id="bdr" scope="application"
		class="com.bidding.model.BdRedis" />
	<jsp:useBean id="bdSvc" scope="page"
		class="com.bidding.model.BiddingService" />

	<c:set var="bdNo" value="${event_no}" />
	<c:set var="sqlBdNo" value="${bdr.getSqlBdNo(bdNo)}" />
	<c:set var="bVO" value="${bdSvc.getOne(sqlBdNo)}" />
	<c:set var="topBidder" value="${bdr.getHighestBidder(bdNo)}" />

	<form id="enterBidPage" style="display: hidden"
		action="<%=request.getContextPath()%>/biddingPage/BdPageServlet">
		<input type="text" id="bdNo" name="bdNo" required><br> <input type="hidden"
			name="action" value="setBidInfo">
	</form>

	<!-- preloader -->
	<div id="preloader">
		<div class="spinner spinner-round"></div>
	</div>
	<!-- / preloader -->

	<div id="top"></div>

	<!-- header -->
	<header>
		<div class="space-50">&nbsp;</div>
		<div class="space-50">&nbsp;</div>
		<!-- nav -->
		<nav class="navbar navbar-default nav-sec navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><img
						src="<%=request.getContextPath()%>/frontend/template/images/logo.png"
						alt="logo"></a>
				</div>
				<!-- / navbar-header -->
				<div class="secondary-nav">
					<a href="login-register.html" class="my-account space-right"><i
						class="fa fa-user"></i></a> <a href="shopping-cart.html"
						class="shopping-cart"><i class="fa fa-shopping-cart"></i> <span
						class="cart-badge">2</span></a>
				</div>
				<div class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">
						<li><a href="index.html"><span>HOME</span></a></li>
						<li class="active"><a href="about.html"><span>ABOUT</span></a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><span>BLOG</span> <span
								class="dropdown-icon"></span></a>
							<ul class="dropdown-menu animated zoomIn fast">
								<li><a href="blog.html"><span>BLOG FULLWIDTH</span></a></li>
								<li><a href="blog-masonry.html"><span>BLOG
											MASONRY</span></a></li>
								<li><a href="blog-sidebar.html"><span>BLOG
											SIDEBAR</span></a></li>
								<li><a href="single-post-full.html"><span>POST
											FULLWIDTH</span></a></li>
								<li><a href="single-post.html"><span>POST
											SIDEBAR</span></a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><span>SHOP</span> <span
								class="dropdown-icon"></span></a>
							<ul class="dropdown-menu animated zoomIn fast">
								<li><a href="shop.html"><span>FULL WIDTH</span></a></li>
								<li><a href="shop-right.html"><span>RIGHT
											SIDEBAR</span></a></li>
								<li><a href="shop-left.html"><span>LEFT SIDEBAR</span></a></li>
								<li><a href="shop-masonry.html"><span>MASONRY</span></a></li>
								<li><a href="single-product.html"><span>SINGLE
											PRODUCT</span></a></li>
								<li><a href="single-product2.html"><span>SINGLE
											PRODUCT 2</span></a></li>
								<li><a href="single-product3.html"><span>SINGLE
											PRODUCT 3</span></a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><span>PAGES</span> <span
								class="dropdown-icon"></span></a>
							<ul class="dropdown-menu animated zoomIn fast">
								<li><a href="faq.html"><span>FAQ</span></a></li>
								<li><a href="shopping-cart.html"><span>SHOPPING
											CART</span></a></li>
								<li><a href="login-register.html"><span>LOGIN /
											REGISTER</span></a></li>
								<li><a href="my-account.html"><span>MY ACCOUNT</span></a></li>
								<li><a href="checkout.html"><span>CHECKOUT</span></a></li>
								<li><a href="404.html"><span>404 PAGE</span></a></li>
								<li><a href="components.html"><span>COMPONENTS</span></a></li>
							</ul></li>
						<li><a href="contact.html"><span>CONTACT</span></a></li>
					</ul>
				</div>
				<!--/ nav-collapse -->
			</div>
			<!-- / container -->
		</nav>
		<!-- / nav -->

		<!-- content -->

		<div id="page-content" class="container">
			<div class="section-w-image space-top-2x">
				<div class="row biddingPage" style="background-color: #f8f8f8;">
					<h1>${event_no}</h1>
					<span>${event_no}</span>
					<div class="col-sm-7 ">
						<img
							src="<%=request.getContextPath()%>/frontend/imgData/img (17).jpg">
					</div>
					<div class="col-sm-5 text-center space-top-2x" style="">
						<span><h2>Up-running Event!</h2>
							<p>Come Join Quick!</p>
							<p>Start Date:</p>${bdr.bdStartTime}</span>
					</div>
				</div>
				<!-- / row -->
			</div>
			<!-- / section-w-image -->

			<div class="space-50">&nbsp;</div>
			<section id="team">
				<div class="container">
					<h2 class="text-center space-top-2x" style="margin-bottom: 40px;">Latest
						Event</h2>
					<div class="row">
						<!-- team-block -->

						<div class="col-sm-4 biddingPage" id="latestBd1" >
							<span>${latestBd1}</span>
							<div class="team block text-center">
								<img
									src="<%=request.getContextPath()%>/frontend/imgData/img (14).jpg"
									alt="">
								<div class="team-info-box">
									<h6>JOHN DOE</h6>
									<p class="team-role">CEO</p>
									<p class="social text-center">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-google-plus"></i></a>
									</p>
								</div>
								<!-- / team-info-box -->
							</div>
							<!-- / team-block -->
						</div>
						<!-- / col-sm-4 -->
						<!-- / team-block -->

						<!-- team-block -->

						<div class="col-sm-4 biddingPage" id="latestBd2">
						<span>${latestBd2}</span>
							<div class="team block text-center">
								<img
									src="<%=request.getContextPath()%>/frontend/imgData/img (12).jpg"
									alt="">
								<div class="team-info-box">
									<h6>JASMINE DOE</h6>
									<p class="team-role">Shop Manager</p>
									<p class="social text-center">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-google-plus"></i></a>
									</p>
								</div>
								<!-- / team-info-box -->
							</div>
							<!-- / team-block -->
						</div>
						<!-- / col-sm-4 -->
						<!-- / team-block -->

						<!-- team-block -->

						<div class="col-sm-4 biddingPage" id="latestBd3" >
							<span>${latestBd3}</span>
							<div class="team block text-center">
								<img
									src="<%=request.getContextPath()%>/frontend/imgData/img (18).jpg"
									alt="">
								<div class="team-info-box">
									<h6>JAMES DOE</h6>
									<p class="team-role">Webshop Admin</p>
									<p class="social text-center">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-google-plus"></i></a>
									</p>
								</div>
								<!-- / team-info-box -->
							</div>
							<!-- / team-block -->
						</div>
						<!-- / col-sm-4 -->
						<!-- / team-block -->

					</div>
					<!-- / row -->
				</div>
				<!-- / container -->
			</section>
		</div>
		<!-- / container -->

		<!-- / content -->

		<!-- scroll to top -->
		<a href="#top" class="scroll-to-top page-scroll is-hidden"
			data-nav-status="toggle"><i class="fa fa-angle-up"></i></a>
		<!-- / scroll to top -->

		<!-- footer -->
		<footer class="light-footer">
			<div class="widget-area">
				<div class="container">
					<div class="row">

						<div class="col-md-4 widget">
							<div class="about-widget">
								<div class="widget-title-image">
									<img
										src="<%=request.getContextPath()%>/frontend/template/images/logo2.png"
										alt="">
								</div>
								<p>Vivamus consequat lacus quam, nec egestas quam egestas
									sit amet. Suspendisse et risus gravida tellus aliquam
									ullamcorper. Pellentesque elit dolor, ornare ut lorem nec,
									convallis nibh accumsan lacus morbi leo lipsum.</p>
							</div>
							<!-- / about-widget -->
						</div>
						<!-- / widget -->
						<!-- / first widget -->

						<div class="col-md-2 widget">
							<div class="widget-title">
								<h4>BRANDS</h4>
							</div>
							<div class="link-widget">
								<div class="info">
									<a href="#x">Brand 1</a>
								</div>
								<div class="info">
									<a href="#x">Brand 2</a>
								</div>
								<div class="info">
									<a href="#x">Brand 3</a>
								</div>
								<div class="info">
									<a href="#x">Brand 4</a>
								</div>
							</div>
						</div>
						<!-- / widget -->
						<!-- / second widget -->

						<div class="col-md-2 widget">
							<div class="widget-title">
								<h4>SUPPORT</h4>
							</div>
							<div class="link-widget">
								<div class="info">
									<a href="#x">Terms & Conditions</a>
								</div>
								<div class="info">
									<a href="#x">Shipping & Return</a>
								</div>
								<div class="info">
									<a href="faq.html">F.A.Q</a>
								</div>
								<div class="info">
									<a href="contact.html">Contact</a>
								</div>
							</div>
						</div>
						<!-- / widget -->
						<!-- / third widget -->

						<div class="col-md-4 widget">
							<div class="widget-title">
								<h4>CONTACT</h4>
							</div>
							<div class="contact-widget">
								<div class="info">
									<p>
										<i class="lnr lnr-map-marker"></i><span>Miami, S Miami
											Ave, SW 20th, Store No.1</span>
									</p>
								</div>
								<div class="info">
									<a href="tel:+0123456789"><i class="lnr lnr-phone-handset"></i><span>+0123
											456 789</span></a>
								</div>
								<div class="info">
									<a href="mailto:hello@yoursite.com"><i
										class="lnr lnr-envelope"></i><span>office@yoursite.com</span></a>
								</div>
								<div class="info">
									<i class="lnr lnr-thumbs-up"></i> <span
										class="social text-left"> <a class="no-margin" href="#"><i
											class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-google-plus"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest"></i></a>
									</span>
								</div>
							</div>
							<!-- / contact-widget -->
						</div>
						<!-- / widget -->
						<!-- / fourth widget -->

					</div>
					<!-- / row -->
				</div>
				<!-- / container -->
			</div>
			<!-- / widget-area -->
			<div class="footer-info">
				<div class="container">
					<div class="pull-left copyright">
						<p>
							<strong>Â© MS - MINIMAL SHOP THEME</strong>
						</p>
					</div>
					<span class="pull-right"> <img
						src="<%=request.getContextPath()%>/frontend/template/images/visa.png"
						alt=""> <img
						src="<%=request.getContextPath()%>/frontend/template/images/mastercard.png"
						alt=""> <img
						src="<%=request.getContextPath()%>/frontend/template/images/discover.png"
						alt=""> <img
						src="<%=request.getContextPath()%>/frontend/template/images/paypal.png"
						alt="">
					</span>
				</div>
				<!-- / container -->
			</div>
			<!-- / footer-info -->
		</footer>
		<!-- / footer -->

		<!-- javascript -->
		<script
			src="<%=request.getContextPath()%>/frontend/template/js/jquery.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/frontend/template/js/bootstrap.min.js"></script>

		<!-- sticky nav -->
		<script
			src="<%=request.getContextPath()%>/frontend/template/js/jquery.easing.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/frontend/template/js/scrolling-nav-sticky.js"></script>
		<!-- / sticky nav -->

		<!-- hide nav -->
		<script
			src="<%=request.getContextPath()%>/frontend/template/js/hide-nav.js"></script>
		<!-- / hide nav -->

		<!-- preloader -->
		<script
			src="<%=request.getContextPath()%>/frontend/template/js/preloader.js"></script>
		<!-- / preloader -->

		<!-- / javascript -->
</body>

<script>
	$('.biddingPage').on("click", function(e) {
		var bdNo=$(this).children('span').html();
		if(bdNo.length===0){
			return;
		}
		$('#enterBidPage').children('#bdNo').val(bdNo);
		$('#enterBidPage').submit();

	})
</script>
</html>