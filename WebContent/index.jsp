<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>My Sky</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
  	<link rel="stylesheet" href="css/zerogrid.css"/>
	<link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/responsive.css"/>
	<link href='images/favicon.ico' rel='icon' type='image/x-icon'/>
	<script src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
	<script>
		$(function(){
			$.post("<%=basePath%>framework/user/getlist.action",{suggest:"你好"},function(res){
			    console.log(res);
			    var mottoInfo = res.MottoList;
			    $("#myMottoTitle").text(mottoInfo.title);
			    $("#myMottoText").text(mottoInfo.text);
			    $("#myMottoCrenTime").text(mottoInfo.creantime);
			});			
		});
	</script>
</head>
<body>
<div class="wrap-body zerogrid">
<!--------------Header--------------->
<header>
	<div class="wrap-header">
		
		<!-- <div class="top">
			<div class="socials">
				<ul>
					<li><a href="#" title="facebook"><img  src="images/socials/facebook-32x32.png"/></a></li>
					<li><a href="#" title="google"><img  src="images/socials/google-32x32.png"/></a></li>
					<li><a href="#" title="twitter"><img  src="images/socials/twitter-32x32.png"/></a></li>
					<li><a href="#" title="rss"><img  src="images/socials/rss-32x32.png"/></a></li>
					<li><a href="#" title="youtube"><img  src="images/socials/youtube-32x32.png"/></a></li>
				</ul>
			</div>
			<div id="search">
				<div class="button-search"></div>
				<input type="text" value="Search..." onFocus="if (this.value == &#39;Search...&#39;) {this.value = &#39;&#39;;}" onBlur="if (this.value == &#39;&#39;) {this.value = &#39;Search...&#39;;}"/>
			</div>
		</div> -->
		
		<div id="logo">
			<h1>zSoodany</h1>
		</div>
		
		<nav>
			<div class="wrap-nav">
				<div class="menu">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="blog.html">Gallery</a></li>
						<li><a href="blog.html">About</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
	</div>
</header>

<!--------------Content--------------->
<section id="content">
	<div class="wrap-content">
		<div class="row block">
			<div id="main-content" class="col-2-3">
				<div class="wrap-col">
					<article>
						<div class="heading">
							<h2><a href="javascript:void(0);" id="myMottoTitle">Sed accumsan libero quis mi commodo et suscipit</a></h2>
						</div>
						<div class="content">
							<img src="images/img1.jpg" width="250px" height="100px"/>
							<p id="myMottoText">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum [...]</p>
						</div>
						<div class="info">
							<p>By LXQ on <a href="javascript:void(0);" id="myMottoCrenTime">01 Commnets</a></p>
						</div>
					</article>
					<article>
						<div class="heading">
							<h2><a href="#">Lorem ipsum dolor sit amet</a></h2>
						</div>
						<div class="content">
							<img src="images/img2.jpg" width="250px" height="100px"/>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum [...]</p>
						</div>
						<div class="info">
							<p>By Admin on December 01, 2012 - <a href="#">01 Commnets</a></p>
						</div>
					</article>
					<article>
						<div class="heading">
							<h2><a href="#">Morbi rutrum vulputate est sed faucibus</a></h2>
						</div>
						<div class="content">
							<img src="images/img3.jpg" width="250px" height="100px"/>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum [...]</p>
						</div>
						<div class="info">
							<p>By Admin on December 01, 2012 - <a href="#">01 Commnets</a></p>
						</div>
					</article>
				</div>
			</div>
			<div id="sidebar" class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>About us</h2></div>
						<div class="content">
							<img src="images/zerotheme.jpg" style="border: 0px;"/>
							<p>Html5 Templates created by chinaz. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
						</div>
					</div>
					<div class="box">
						<div class="heading"><h2>Categories</h2></div>
						<div class="content">
							<ul>
								<li><a href="http://sc.chinaz.com/">Free Html5 Templates</a></li>
								<li><a href="http://sc.chinaz.com/">Free Responsive Themes</a></li>
								<li><a href="http://sc.chinaz.com/">Free Html5 and Css3 Themes</a></li>
								<li><a href="http://sc.chinaz.com/">Free Responsive Html5 and Css3 Themes</a></li>
								<li><a href="http://sc.chinaz.com/">Free Basic Responsive Html5 Css3 Layouts</a></li>
								<li><a href="http://sc.chinaz.com/">Premium Responsive Html5 Css3 Templates</a></li>
							</ul>
						</div>
					</div>
					<div class="box">
						<div class="heading"><h2>Popular Post</h2></div>
						<div class="content">
							<div class="post">
								<img src="images/img4.jpg" width="50px"/>
								<h4><a href="#">Lorem ipsum dolor sit</a></h4>
								<p>November 11 ,2012</p>
							</div>
							<div class="post">
								<img src="images/img5.jpg" width="50px"/>
								<h4><a href="#">Lorem ipsum dolor sit</a></h4>
								<p>November 11 ,2012</p>
							</div>
							<div class="post">
								<img src="images/img1.jpg" width="50px"/>
								<h4><a href="#">Lorem ipsum dolor sit</a></h4>
								<p>November 11 ,2012</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--------------Footer--------------->
<footer>
	<div class="wrap-footer">
		<div class="row">
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>Image Gallery</h2></div>
						<div class="content gallery">
							<a href="#"><img src="images/img1.jpg" width="120"/></a>
							<a href="#"><img src="images/img2.jpg" width="120"/></a>
							<a href="#"><img src="images/img3.jpg" width="120"/></a>
							<a href="#"><img src="images/img4.jpg" width="120"/></a>
							<a href="#"><img src="images/img5.jpg" width="120"/></a>
							<a href="#"><img src="images/img1.jpg" width="120"/></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>About Us</h2></div>
						<div class="content">
							<img src="images/zerotheme.jpg" style="border: 0px;"/>
							<p>Html5 Templates created by chinaz. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>Contact Us</h2></div>
						<div class="content">
							<p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue.</p>
							<p>Website : <a href="http://sc.chinaz.com" target="_blank">sc.chinaz.com</a></p>
							<p>+1 (123) 444-5677 <br/> +1 (123) 444-5678</p>
							<p>Address: 123 TemplateAccess Rd1</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<p>&copy; Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
	</div>
</footer>

</div>
</body>
</html>