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
			    $("#myMottoCrenTime").text(fotmateDate(mottoInfo.creantime));
			    
			    var mylike = res.MyLikeList; 
			    $("#mylikeTitle").text(mylike.title);
			    $("#mylikeContent").text(mylike.text);
			    $("#mylikeCreanTime").text(fotmateDate(mylike.creantime));
			    
			    var myExperience = res.MyExperList;
			    $("#myExperTitle").text(myExperience.title);
			    $("#myExperContent").text(myExperience.text);
			    $("#myExperCreanTime").text(fotmateDate(myExperience.creantime));
			    
			    var myInfo = res.InfoList;
			    $(".myInfoTitle").text(myInfo.title);
			    $(".myInfoContent").text(myInfo.text);
			    
			    //myname EnglishName myphone myEmail myAddress myWebsite myMajor myBirthday
			    var myMessge = res.InmesList;
			    $("#myname").text("Name："+myMessge.name);
			    $("#EnglishName").text("EnglishName：U · J");
			    $("#myphone").text("Phone："+myMessge.phone);
			    $("#myMajorSchool").text("Major："+myMessge.major);
			    $("#myEmail").text("Email：532367094@qq.com");
			    $("#myAddress").text("Address：海南省儋州市白马井镇");
			    $("#myWebsite").text("Website：lxq2017.imwork.net");
			    $("#myBirthday").text("Birthday："+myMessge.birthday);
			    
			    var myMajor = res.MyMajor;
			    for(var i=0; i<myMajor.length; i++){
				    var li = '<li><a href="javascript:void(0)">'+myMajor[i].majorName+'</a></li>';
				    $("#myMajor").append(li);
			    }
			    
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
			<img src="<%=basePath%>images/index_logo.png"/><h2 style="color:#fff;">Never underestimate your power to change yourself !</h2>
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
							<h2><a id="mylikeTitle" href="javascript:void(0)">Lorem ipsum dolor sit amet</a></h2>
						</div>
						<div class="content">
							<img src="images/img2.jpg" width="250px" height="100px"/>
							<p id="mylikeContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum [...]</p>
						</div>
						<div class="info">
							<p>By LXQ on <a id="mylikeCreanTime" href="javascript:void(0)">01 Commnets</a></p>
						</div>
					</article>
					<article>
						<div class="heading">
							<h2><a id="myExperTitle" href="javascript:void(0)">Morbi rutrum vulputate est sed faucibus</a></h2>
						</div>
						<div class="content">
							<img src="images/img3.jpg" width="250px" height="100px"/>
							<p id="myExperContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum. Morbi rutrum vulputate est sed faucibus. Nulla sed nisl mauris, id tristique tortor. Sed iaculis dapibus urna nec dictum [...]</p>
						</div>
						<div class="info">
							<p>By LXQ on <a id="myExperCreanTime" href="javascript:void(0)">01 Commnets</a></p>
						</div>
					</article>
				</div>
			</div>
			<div id="sidebar" class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2 class="myInfoTitle">About Us</h2></div>
						<div class="content">
							<img src="images/zerotheme.jpg" style="border: 0px;"/>
							<p class="myInfoContent">Html5 Templates created by chinaz. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
						</div>
					</div>
					<div class="box">
						<div class="heading"><h2>Major</h2></div>
						<div class="content">
							<ul id="myMajor"></ul>
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
						<div class="heading"><h2 class="myInfoTitle">About Us</h2></div>
						<div class="content">
							<img src="images/zerotheme.png" style="border: 0px; float: left; margin-bottom: 0px; margin-right: 10px;"/>
							<p class="myInfoContent">Html5 Templates created by chinaz. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>Contact Us</h2></div>
						<div class="content">
							<p>Never underestimate your power to change yourself !</p>
							<p id="myname"></p>
							<p id="EnglishName"></p>
							<p id="myphone"></p>
							<p id="myEmail"></p>
							<p id="myAddress"></p>
							<p id="myWebsite"></p>
							<p id="myMajorSchool"></p>
							<p id="myBirthday"></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<p>&copy; Copyright &copy; 2014.Company name All rights reserved</p>
	</div>
</footer>

</div>
<script>
function fotmateDate(value){
	var dateStr = "";
	if(value=="undefined"||value=="null"||value==null){}else{
		var date = new Date(value);
		dateStr = date.format("yyyy-MM-dd HH:mm:ss");
	}
    return dateStr;    
}

//js格式化日期插件代码
Date.prototype.format = function (format) {  
		 var o = {  
		        "M+": this.getMonth() + 1, // month  
		        "d+": this.getDate(), // day  
		        "H+": this.getHours(), // hour  
		        "m+": this.getMinutes(), // minute  
		        "s+": this.getSeconds(), // second  
		        "q+": Math.floor((this.getMonth() + 3) / 3), // quarter  
		        "S": this.getMilliseconds()  
		        // millisecond  
		 }
		 if (/(y+)/.test(format)){
		        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length)); 
		 } 
		 for (var k in o){  
		      if (new RegExp("(" + k + ")").test(format)){
		            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length)); 
		 	  }
		 } 
		 return format;  
}
</script>
</body>
</html>