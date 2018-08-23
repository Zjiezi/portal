<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1, user-scalable=no;">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!--[if lt IE 9]>
		<script src="js/html5shiv.min-3.7.3.js"></script>
		<script src="js/respond.min1.4.2.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="static/css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="static/css/style.css">
	<link rel="stylesheet" type="text/css" href="static/css/mobile.css">
	<script type="text/javascript" src="static/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="static/js/swiper.min.js"></script>
	<script type="text/javascript" src="static/js/javascript.js"></script>
	<title>蓝白玩偶 </title>
	<meta name="keywords" content="">
	<meta name="description" content="">
</head>
<body>
<div class="mainFilter"></div>
<div class="wrapper">
	<div class="header">
		<div class="wrap">
			<div class="logo"><a href="index.html"><img src="static/picture/logo.png"></a></div>
			<div class="menuBtn"><span class="line1"></span><span class="line2"></span><span class="line3"></span></div>
			<div class="nav">
				<div class="tit">MENU</div>
				<ul>
				<li ><a href="index.html">首页</a></li>
				<li class="on">
					<a href="${ctx }/menusToUrl?url=gushi">走进蓝白</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/menusToUrl?url=gushi">品牌故事</a></li>
							<li><a href="${ctx }/menusToUrl?url=wenhua">品牌文化</a></li>
							<li><a href="${ctx }/menusToUrl?url=rongyu">资质荣誉</a></li>
							<li><a href="${ctx }/menusToUrl?url=news">最新资讯</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="${ctx }/menusToUrl?url=product">明星产品</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/menusToUrl?url=product">单品介绍</a></li>
							<li><a href="product.html">套装介绍</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="ketang.html">最新活动</a>
					<div class="sub">
						<ul>
							<li><a href="ketang.html">活动详情</a></li>
							<li><a href="jieda.html">问题解答</a></li>
						</ul>
					</div>
				</li>
				
					<li>
						<a href="shipin.html">精彩瞬间</a>
						<div class="sub">
							<ul>
								<li><a href="shipin.html">宣传视频</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="contact.html">联系我们</a>
						<div class="sub">
							<ul>
								<li><a href="contact.html">联系我们</a></li>
								<li><a href="partner.html">城市合伙人</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="banner"><a href="javascript:;"><img src="static/picture/20180611105958725.jpg"></a></div>
		<div class="columnMenu">
			<div class="wrap">
				<div class="nav four">
					<ul>
						<li><a href="${ctx }/menusToUrl?url=gushi">品牌故事</a></li>
						<li class="on"><a href="${ctx }/menusToUrl?url=wenhua">品牌文化</a></li>
						<li><a href="${ctx }/menusToUrl?url=rongyu">资质荣誉</a></li>
						<li><a href="${ctx }/menusToUrl?url=news">最新资讯</a></li>
					</ul>
				</div>
				<div class="crumbs">
					<ul>
						<li class="home"><a href="${ctx }/menusToUrl?url=index">首页</a></li>
						<li><a href="${ctx }/menusToUrl?url=gushi">走进蓝白</a></li>
						<li><a href="${ctx }/menusToUrl?url=wenhua">品牌文化</a></li>
					</ul>
				</div>
			</div>		
		</div>
		<div class="aboutPage">
			<div class="wrap">
				<div class="columnTitle">
					<h2 class="tit">品牌文化</h2>
					<div class="entit">Brand culture</div>
					<div class="line"></div>
				</div>
								
								<div class="newsDetails">
					<div class="article">
						<div class="culturePic"><img src="static/picture/culture1.png"/></div><p><br/></p><p><br/></p><center><br/></center><p><br/></p><p>&nbsp;</p><p><br/></p>
										</div>
				</div>
							</div>
		</div>
	</div>
	<div class="footer">
		<div class="linkList">
			<ul>
				<li><a href="#">走进蓝白</a></li>
				<li><a href="${ctx }/menusToUrl?url=product">明星产品</a></li>
				<li><a href="#">活动管理</a></li>
				<li><a href="#">精彩瞬间</a></li>
				<li><a href="#">联系我们</a></li>
			</ul>
		</div>
		<div class="copyright">
			&nbsp; &nbsp;Copyright<span style="color: rgb(190, 203, 180); font-family: &quot;Microsoft YaHei&quot;, ???è??é?…é?‘, arial; font-size: 12px; text-align: center; background-color: rgb(93, 132, 57);">?</span> 扬州蓝白工艺品有限公司&nbsp;&nbsp;<a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备xxxxxx号-1</a>
		</div>
	</div>

</div>
</body>
</html>