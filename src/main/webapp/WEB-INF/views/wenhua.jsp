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
	<link rel="stylesheet" type="text/css" href="/static/css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="/static/css/style.css">
	<link rel="stylesheet" type="text/css" href="/static/css/mobile.css">
	<script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="/static/js/swiper.min.js"></script>
	<script type="text/javascript" src="/static/js/javascript.js"></script>
	<title>蓝白玩偶 </title>
	<meta name="keywords" content="">
	<meta name="description" content="">
</head>
<body>
<div class="mainFilter"></div>
<div class="wrapper">
	<div class="header">
		<div class="wrap">
			<div class="logo"><a href="index.html"><img src="/static/picture/logo.png"></a></div>
			<div class="menuBtn"><span class="line1"></span><span class="line2"></span><span class="line3"></span></div>
			<div class="nav">
				<div class="tit">MENU</div>
				<ul>
				<li><a href="${ctx }/view/menusToUrl?url=index">首页</a></li>
				<li class="on">
					<a href="${ctx }/view/menusToUrl?url=gushi">走进蓝白</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=gushi">公司简介</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=wenhua">生产流程</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=rongyu">荣誉证书</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=news">工厂环境</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="${ctx }/view/menusToUrl?url=product">明星产品</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=product">毛绒公仔</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=product2">家居用品</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=product3">IP衍生品</a></li>
						</ul>
					</div>
				</li>
				<li>
				<li>
					<a href="${ctx }/view/menusToUrl?url=original">原创开发</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=original">原创形象</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=team">设计团队</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=resources">IP形象资源</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="${ctx }/view/menusToUrl?url=customer">定制合作</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=customer">合作客户</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=customized">定制流程</a></li>
						</ul>
					</div>
				</li>
					<li>
						<a href="${ctx }/view/menusToUrl?url=activity">蓝白动态</a>
						<div class="sub">
							<ul>
								<li><a href="${ctx }/view/menusToUrl?url=activity">新闻动态</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="${ctx }/view/menusToUrl?url=contact">联系我们</a>
						<div class="sub">
							<ul>
								<li><a href="${ctx }/view/menusToUrl?url=contact">联系我们</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="banner"><a href="javascript:;"><img src="/static/picture/20180611105958725.jpg"></a></div>
		<div class="columnMenu">
			<div class="wrap">
				<div class="nav four">
					<ul>
						<li ><a href="${ctx }/view/menusToUrl?url=gushi">公司简介</a></li>
						<li class="on"><a href="${ctx }/view/menusToUrl?url=wenhua">生产流程</a></li>
						<li ><a href="${ctx }/view/menusToUrl?url=rongyu">荣誉证书</a></li>
						<li ><a href="${ctx }/view/menusToUrl?url=news">工厂环境</a></li>
					</ul>
				</div>
				<div class="crumbs">
					<ul>
						<li class="home"><a href="${ctx }/view/menusToUrl?url=index">首页</a></li>
						<li><a href="${ctx }/view/menusToUrl?url=gushi">走进蓝白</a></li>
						<li><a href="${ctx }/view/menusToUrl?url=wenhua">生产流程</a></li>
					</ul>
				</div>
			</div>		
		</div>
		<div class="aboutPage">
			<div class="wrap">
				<div class="columnTitle">
					<h2 class="tit">生产流程</h2>
					<div class="entit">production process</div>
					<div class="line"></div>
				</div>
								
								<div class="newsDetails">
					<div class="article">
						<div class="culturePic"><img src="/static/picture/culture1.png"/></div><p><br/></p><p><br/></p><center><br/></center><p><br/></p><p>&nbsp;</p><p><br/></p>
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