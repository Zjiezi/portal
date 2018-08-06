<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
				<li class="on"><a href="index.html">首页</a></li>
				<li>
					<a href="gushi.html">走进蓝白</a>
					<div class="sub">
						<ul>
							<li><a href="gushi.html">品牌故事</a></li>
							<li><a href="wenhua.html">品牌文化</a></li>
							<li><a href="rongyu.html">资质荣誉</a></li>
							<li><a href="news.html">最新资讯</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="product.html">明星产品</a>
					<div class="sub">
						<ul>
							<li><a href="product.html">单品介绍</a></li>
							<li><a href="product.html">套装介绍</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="ketang.html">肌肤管理</a>
					<div class="sub">
						<ul>
							<li><a href="ketang.html">美丽课堂</a></li>
							<li><a href="jieda.html">问题解答</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="anli.html">蜕变心声</a>
					<div class="sub">
						<ul>
							<li><a href="anli.html">肌肤案例</a></li>
							<li><a href="xinsheng.html">蜕变心声</a></li>
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
	
	<div class="main">
		<div class="banner">
			<div class="swiper-container">
				<div class="swiperList">
					<div class="list"><a href="https://detail.tmall.com/item.htm?spm=a1z10.5-b-s.w5001-15802536121.10.66392cfdQ8EUUr&id=26353088677&rn=c44ed0db9682ad3ba7955f0784c61942&abbucket=1&scene=taobao_shop" target="_blank"><img src="static/picture/20180720.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180721.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180722.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180723.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180723.jpg"></a></div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<script>
				var bannerSwiper = new Swiper ('.banner .swiper-container', {
					wrapperClass : 'swiperList',
					slideClass : 'list',
					effect : 'slide',				//滑动效果
					autoplay: true,					//自动滑动
					speed:400,						//滑动速度
					autoplay: {
						delay: 3000,				//间隔时间
						disableOnInteraction: false,//用户操作之后是否停止
					},
					watchOverflow: true,			//仅有1个slide，swiper无效
					loop: false,					//循环滚动
					simulateTouch : true,			//鼠标模拟触摸
					allowTouchMove: true,			//触摸滑动
					grabCursor : true,				//手掌鼠标
					slidesPerView : 1,				//可视个数
					resistanceRatio : 0,			//边缘抵抗力

					//分页器
					pagination: {
						el:'.swiper-pagination',
						clickable :true,		//点击切换
					},

				})
			</script>
		</div>
		<div class="section section2" style="background-image: url(static/images/section2.jpg);">
			<div class="wrap">
				<div class="columnTitle">
					<h3 class="tit">热款推荐</h3>
					<div class="txt"><span></span>不做最好，只做更好<span></span></div>
				</div>
				<div class="newProduct">
					<div class="swiper-container">
						<div class="swiperList">
								<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">森林鳄鱼抱枕</div>
								<div class="btn"><a href="https://detail.tmall.com/item.htm?spm=a220m.1000862.1000725.1.656f2c77mJXn1B&id=564708959015&areaId=321000&is_b=1&cat_id=2&rn=0a9806721babd4e2d2ad127f9ed3fe22" target="_blank">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">>森林鳄鱼抱枕</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">>森林鳄鱼抱枕</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">>森林鳄鱼抱枕</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">>森林鳄鱼抱枕</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">>森林鳄鱼抱枕</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">清纯素颜霜</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">>森林鳄鱼抱枕</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
														<div class="list">
								<div class="pic"><img src="static/picture/20180724.png"></div>
								<div class="name">森林鳄鱼抱枕</div>
								<div class="btn"><a href="#">了解详情</a></div>
							</div>
													</div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
					</div>
					<script>
						var bannerSwiper = new Swiper ('.newProduct .swiper-container', {
							wrapperClass : 'swiperList',
							slideClass : 'list',
							effect : 'slide',				//滑动效果
							autoplay: true,					//自动滑动
							speed:400,						//滑动速度
							autoplay: {
								delay: 3000,				//间隔时间
								disableOnInteraction: false,//用户操作之后是否停止
							},
							watchOverflow: true,			//仅有1个slide，swiper无效
							loop: false,					//循环滚动
							simulateTouch : true,			//鼠标模拟触摸
							allowTouchMove: true,			//触摸滑动
							slidesPerView : 3,				//可视个数
							grabCursor : true,				//手掌鼠标
							// 前后按钮
							navigation: {
							nextEl: '.swiper-button-next',
							prevEl: '.swiper-button-prev',
							},
						})
					</script>
				</div>
			</div>
		</div>
		<div class="section section3" style="background-image: url(static/images/section3.jpg);">
			<div class="wrap">
				<div class="columnTitle white">
					<h3 class="tit">宣传视频</h3>
					<div class="txt"><span></span>生肌肤之泽，蕴天地之润<span></span></div>
				</div>
				<div class="promotional">
					<div class="title">
						<div class="entit">COMPANY PROFILE</div>
						<div class="tit">爱萌伊人简介</div>
					</div>
															<div class="video">
						<div class="pic"><div class="icon"></div>
						<img src="static/picture/20180627022629473.jpg"></div>
						<video controls>
							<source src="http://www.aimengyiren.com/uploadfile/2018/0629/20180629101935592.mp4" type="video/mp4">
						</video>
					</div>
										<div class="instructions">
						<div class="title"><div class="entit">SKIN CARE SPECIALIST, FIRST CHOICE FOR AMOROUS SEX</div><div class="tit">护肤专家，首选爱萌伊人</div><div class="line"></div></div><div class="text">健康管理有限公司总部位于深圳市中心区华嵘大厦，是一家专门从事面部肌肤健康管理,一站式解决面部各种色斑.痘印.黄气.色沉等相关肌肤问题，在多年肌肤健康管理的经验基础上，研发了系列养肤类产品。公司创始人朱茂长先生十年磨一剑，以扎实的专业知识和丰富的肌肤健康管理经验</div>					</div>
				</div>
			</div>
		</div>
		<div class="section section4">
			<div class="columnTitle">
				<h3 class="tit">最新资讯</h3>
				<div class="txt"><span></span>生肌肤之泽，蕴天地之润<span></span></div>
			</div>
			<div class="newsList">
				<ul>
																									<li><img src="static/picture/20180620035655300.jpg"></li>
					<li>
						<a href="#">
							<div class="tit">爱萌伊人荣获“本草护肤行业优选品牌”称号</div>
							<div class="date"></div>
							<div class="text">热烈祝贺健康管理有限公司荣获“本草护肤行业优选品牌”称号。 
</div>
							<div class="more">REMO+</div>
						</a>
					</li>
						<li><img src="static/picture/20180622100226281.jpg"></li>
					<li>
						<a href="#">
							<div class="tit">体验平台建设完成</div>
							<div class="date"></div>
							<div class="text">根据市场需求，公司的体验平台已扩建，欢迎广大女性朋友来公司体验纯植物的本草黄金面膜。</div>
							<div class="more">REMO+</div>
						</a>
					</li>
																									
					
					<li>
						<a href="#">
							<div class="tit">肌肤健康管理知识讲解与分享</div>
							<div class="date"></div>
							<div class="text">分享了皮肤结构、斑的形成以及解决问题肌肤的办法</div>
							<div class="more">REMO+</div>
						</a>
					</li>
					<li><img src="static/picture/20180627031205314.jpg"></li>
																									
					
					<li>
						<a href="#">
							<div class="tit">爱萌伊人肌肤健康管理有限公司2017年年会</div>
							<div class="date"></div>
							<div class="text">冬去春来，辞旧迎新，2018年1月6日晚上六点，“引领2018，携手并进共赢未来”——2017年度爱萌伊人肌肤管理有限公司在大中华国际交易中心举行，我们荣幸的邀请了近100位全国各地的主管会员</div>
							<div class="more">REMO+</div>
						</a>
					</li>
					<li><img src="static/picture/20180620101726805.jpg"></li>
															
				</ul>
			</div>
		</div>
	</div>
		
	<div class="footer">
		<div class="linkList">
			<ul>
				<li><a href="#">走进爱萌伊人</a></li>
				<li><a href="#">明星产品</a></li>
				<li><a href="#">肌肤管理</a></li>
				<li><a href="#">蜕变心声</a></li>
				<li><a href="#">精彩瞬间</a></li>
				<li><a href="#">联系我们</a></li>
			</ul>
		</div>
		<div class="copyright">
			&nbsp; &nbsp;Copyright<span style="color: rgb(190, 203, 180); font-family: &quot;Microsoft YaHei&quot;, ???è??é?…é?‘, arial; font-size: 12px; text-align: center; background-color: rgb(93, 132, 57);">?</span> 2018 健康管理有限公司&nbsp;&nbsp;<a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备xxxxxx号-1</a>
		</div>
	</div>
	
</div>
</body>
</html>