<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1, user-scalable=no;"> -->
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!--[if lt IE 9]>
		<script src="js/html5shiv.min-3.7.3.js"></script>
		<script src="js/respond.min1.4.2.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="/static/css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="/static/css/style.css">
	<link rel="stylesheet" type="text/css" href="/static/css/mobile.css">
	<link rel="stylesheet" href="/static/tc/js/layer/mobile/need/layer.css">
	<script type="text/javascript" src="${ctx }/static/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/js/swiper.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/js/javascript.js"></script>
	 
	<title>蓝白玩偶 </title>
	<meta name="keywords" content="">
	<meta name="description" content="">
</head>
<body>

<div class="mainFilter"></div>

<div class="wrapper">
	<div class="header">
		<div class="wrap">
			<div class="logo"><a href="${ctx }/view/menusToUrl?url=index"><img src="/static/picture/logo.png"></a></div>
			<div class="menuBtn"><span class="line1"></span><span class="line2"></span><span class="line3"></span></div>
			<div class="nav">
				<div class="tit">MENU</div>
				<ul>
				<li class="on"><a href="${ctx }/view/menusToUrl?url=index">首页</a></li>
				<li>
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
	
	<div class="main">
		<div class="banner">
			<div class="swiper-container">
				<div class="swiperList" id="home">
					<!-- <div class="list"><a href="#" target="_blank"><img src="static/picture/20180720.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180720.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180720.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180720.jpg"></a></div>
					<div class="list"><a href="#"><img src="static/picture/20180720.jpg"></a></div> -->
				</div>
				<div class="swiper-pagination"></div>
			</div>
			
		</div>
		<div class="section section2" style="background-image: url(/static/images/section2.jpg);">
			<div class="wrap">
				<div class="columnTitle">
					<h3 class="tit">热款推荐</h3>
					<div class="txt"><span></span>不做最好，只做更好<span></span></div>
				</div>
				<div class="newProduct">
					<div class="swiper-container" >
						<div class="swiperList" id="home2">
								
													</div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
					</div>
					<script>
						
					</script>
				</div>
			</div>
		</div>
		<div class="section section3" style="background-image: url(/static/images/section3.jpg);">
			<div class="wrap">
				<div class="columnTitle white">
					<h3 class="tit">宣传视频</h3>
					<div class="txt"><span></span>游戏是儿童最正当的行为,玩具是儿童的天使<span></span></div>
				</div>
				<div class="promotional">
					<div class="title">
						<div class="entit">COMPANY PROFILE</div>
						<div class="tit">蓝白简介</div>
					</div>
															<div class="video">
						<div class="pic"><div class="icon"></div>
						<img src="/static/picture/20180627022629473.jpg"></div>
						<video controls>
							<source src="/static/lan.mp4" type="video/mp4">
						</video>
					</div>
										<div class="instructions">
						<div class="title"><div class="entit">走进来，享受一下快乐童年</div><div class="tit">快了童年，首选蓝白</div><div class="line"></div></div><div class="text">扬州蓝白工艺品有限公司是一家以自主研发各类中高档毛绒玩具.泰迪熊.家居产品为主的生产,贸易型企业. 公司目前自主品牌:蓝白玩偶. CAPTAIN MORGAN. 自公司成立以来.所开发生产的产品得到全国销售商一致好评.我们的目标是设计开发出新颖且优质的产品,用我们的真诚和热心服务好我们的顾客.做好“服务员”.</div>					</div>
				</div>
			</div>
		</div>
		<div class="section section4">
			<div class="columnTitle">
				<h3 class="tit">最新咨询</h3>
				<div class="txt"><span></span>游戏是儿童最正当的行为,玩具是儿童的天使<span></span></div>
			</div>
			<div class="newsList">
				<ul id="home3">
					
															
				</ul>
			</div>
		</div>
	</div>
		
	<div class="footer">
		<div class="linkList">
			<ul>
				<li><a href="${ctx }/view/menusToUrl?url=gushi">走进蓝白</a></li>
				<li><a href="${ctx }/view/menusToUrl?url=product">明星产品</a></li>
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
<script type="text/javascript" src="${ctx }/static/tc/js/layer/layer.js"></script>
<script type="text/javascript" src="${ctx }/static/tc/js/vendor/jquery-3.3.1.min.js"></script>
<script>
jQuery(function($){
   	var Login = function(){
			var self = this;
			//表单jsonArray
			//初始化js
			var _cache;
			this.setCache = function(cache){
		  		_cache=cache;
		  	}
		  	this.getCache = function(){
		  		return _cache;
		  	}
		  	this.setIndex = function(index){
		  		_index=index;
		  	}
		  	
		  	this.getIndex = function(){
		  		return _index;
		  	}
			 
			this.init = function(){
				
				//注册绑定事件
				self.loadPaginationhome();
				self.loadPaginationhome2();
				self.loadPaginationhome3();
			}
			//加载分页
			  this.loadPaginationhome = function(){
				  var data={
					  		locationType:"home",
					}
			    var index;
			    var html = '';
			    $.ajax({
				      url:"${ctx}/view/files/getPicture",
				      data:data,
				      type:"GET",
				      beforeSend:function(){
					 	  index = layer.load(1, {
						  shade: [0.1,'#fff'] //0.1透明度的白色背景
						  });
					  }, 
		      		  success: function (result) {
		      			
		      			 $(result.data).each(function(i,o){
		      				html+='<div class="list"><a href="#" target="_blank"><img src='+o.url+'></a></div>'
							
		      			}); 
					   	layer.close(index);
					    $("#home").html(html);
					   	self.loadEvents();
				      },error:function(){
							layer.msg("加载失败！", {icon: 2});
							layer.close(index);
					  }
				  });
			}
			  this.loadPaginationhome2 = function(){
				  var data={
						  productType:"1", 
				  }
				    var index;
				    var html = '';
				    $.ajax({
					      url:"${ctx}/view/product/productPage",
					      data:data,
					      type:"GET",
					      beforeSend:function(){
						 	  index = layer.load(1, {
							  shade: [0.1,'#fff'] //0.1透明度的白色背景
							  });
						  }, 
			      		  success: function (result) {
			      			
			      			$(result.data.rows).each(function(i,o){
			      				 var p;
			      				for (var i = 0; i < o.files.length; i++) {
									if(o.files[i].producImagetType=="bursting"){
			      						p=o.files[i];
			      						break;
		      						}
								
								}
			      			var t; 
			      			if(o.type==1){
			      				t="${ctx }/view/menusToUrl?url=product-con&paramName=id&paramNum="+o.id+""
			      			}
			      			if(o.type==2){
			      				t="${ctx }/view/menusToUrl?url=product-con2&paramName=id&paramNum="+o.id+""
			      			}
			      			if(o.type==3){
			      				t="${ctx }/view/menusToUrl?url=product-con3&paramName=id&paramNum="+o.id+""
			      			}
			      			if(o.type==4){
			      				t="${ctx }/view/menusToUrl?url=original-con&paramName=id&paramNum="+o.id+""
			      			}
			      			if(o.type==5){
			      				t="${ctx }/view/menusToUrl?url=resources-con&paramName=id&paramNum="+o.id+""
			      			}
			      				html+='<div class="list">'
									+'<div class="pic"><img src='+p.url+'></div><div class="name">'+o.name+'</div>'
									+'<div class="btn"><a href='+t+' target="_blank">了解详情</a></div>'
									+'</div>'
								
			      			});
						   	layer.close(index);
						    $("#home2").html(html);
						   	self.loadEventshome2();
					      },error:function(){
								layer.msg("加载失败！", {icon: 2});
								layer.close(index);
						  }
					  });
				}
			  this.loadPaginationhome3 = function(){
				  var data={
					  	locationType:"home3", 
				  }
				    var index;
				    var html = '';
				    $.ajax({
					      url:"${ctx}/view/files/getPicture",
					      data:data,
					      type:"GET",
					      beforeSend:function(){
						 	  index = layer.load(1, {
							  shade: [0.1,'#fff'] //0.1透明度的白色背景
							  });
						  }, 
			      		  success: function (result) {
			      			
			      			 $(result.data).each(function(i,o){
			      				 html+='<li><img src='+o.url+'></li>'
								+'<li><a href="#">'
								+'<div class="tit">'+o.title+'</div>'
								+'<div class="date"></div>'
								+'<div class="text">'+o.content+'</div>'
								+'<div class="more">REMO+</div>'
								+'</a>'
								+'</li>' 
								
			      			}); 
						   	layer.close(index);
						    $("#home3").html(html);
						   	self.loadEventshome2();
					      },error:function(){
								layer.msg("加载失败！", {icon: 2});
								layer.close(index);
						  }
					  });
				}
			this.loadEvents = function(){
				//图片轮播
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
			}
			this.loadEventshome2 = function(){
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
			}
   	}
   			var login = new Login();
				login.init();
			})
    
    </script>
</body>
</html>