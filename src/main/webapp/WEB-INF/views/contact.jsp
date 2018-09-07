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
				<li ><a href="${ctx }/view/menusToUrl?url=index">首页</a></li>
				<li>
					<a href="${ctx }/view/menusToUrl?url=gushi">走进蓝白</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=gushi">品牌故事</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=wenhua">品牌文化</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=rongyu">资质荣誉</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=news">最新资讯</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="${ctx }/view/menusToUrl?url=product">明星产品</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=product">单品介绍</a></li>
							<li><a href="product.html">套装介绍</a></li>
						</ul>
					</div>
				</li>
				<li>
				<li>
					<a href="${ctx }/view/menusToUrl?url=product">原创开发</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=original">原创形象</a></li>
							<li><a href="product.html">设计团队</a></li>
							<li><a href="product.html">IP形象资源</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="ketang.html">定制合作</a>
					<div class="sub">
						<ul>
							<li><a href="${ctx }/view/menusToUrl?url=customer">合作客户</a></li>
							<li><a href="${ctx }/view/menusToUrl?url=customized">定制流程</a></li>
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
					<li class="on">
						<a href="contact.html">联系我们</a>
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
				<div class="nav two">
					<ul>
						<li class="on"><a href="contact.html">联系我们</a></li>
					</ul>
				</div>
				<div class="crumbs">
					<ul>
						<li class="home"><a href="/">首页</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="aboutPage">
						<div class="wrap">
				<div class="columnTitle">
					<h2 class="tit">扬州蓝白</h2>
					<div class="entit">Contact</div>
					<div class="line"></div>
				</div>
				<div class="contact">
					<div class="address">
						<div class="list"><div class="icon"><img src="/static/picture/call-ico1.png"/></div><div class="text">联系电话<br/>0755-82563097、18928449007</div></div><div class="list"><div class="icon"><img src="/static/picture/call-ico2.png"/></div><div class="text">邮箱<br/>aimengyiren@126.com</div></div><div class="list"><div class="icon"><img src="/static/picture/call-ico3.png"/></div><div class="text">深圳市福田区福田街道深南大道辅路2003号华嵘世纪大厦2005单元</div></div>					</div>
					<div class="map">
						<script type="text/javascript" src="/static/js/c2f5b6ae64604623a29de2301e2a996b.js"></script>
						<div id="allmap"></div>
						<script type="text/javascript">
							// 百度地图API功能
							var map = new BMap.Map("allmap");    // 创建Map实例
							map.centerAndZoom(new BMap.Point(114.072542,22.544629), 20);  // 初始化地图,设置中心点坐标和地图级别
							//添加地图类型控件
							map.addControl(new BMap.MapTypeControl({
								mapTypes:[
									BMAP_NORMAL_MAP,
									BMAP_HYBRID_MAP
								]}));
							map.setCurrentCity("扬州");          // 设置地图显示的城市 此项是必须设置的
							// map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放

							//添加缩放控件
							var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
							var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
							/*缩放控件type有四种类型:
							BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮*/
							map.addControl(top_left_control);
							map.addControl(top_left_navigation);

							//添加标注信息
							var point = new BMap.Point(119.410834,32.456961);
							var marker = new BMap.Marker(point);  // 创建标注
							map.addOverlay(marker);              // 将标注添加到地图中
							map.centerAndZoom(point, 20);
							var opts = {
								width : 200,     // 信息窗口宽度
								height: 50,     // 信息窗口高度
								title : "扬州市蓝白工艺品有限公司" , // 信息窗口标题
								enableMessage:true,//设置允许信息窗发送短息
							}
							var infoWindow = new BMap.InfoWindow("地址：扬州市邗江区西湖镇小官桥东路56号", opts);  // 创建信息窗口对象
							//map.openInfoWindow(infoWindow,point); //加载页面开启信息窗口
							marker.addEventListener("click", function(){
								map.openInfoWindow(infoWindow,point); //开启信息窗口
							});
						</script>
					</div>
					<!-- <div class="message">
						<div class="columnTitle">
							<div class="tit">在线留言</div>
							<div class="entit">期待您的宝贵的意见和建议，欢迎及时向我们反馈，以便我们更好地为您服务。</div>
							<div class="line"></div>
						</div>
						<div class="messageBox">
							<div class="inputBox">
								<div class="box">
									<div class="tit">您的姓名：</div>
									<div class="inpu"><input type="text" name="" id="name"></div>
								</div>
							</div>
							<div class="inputBox">
								<div class="box">
									<div class="tit">联系电话：</div>
									<div class="inpu"><input type="text" name="" id="shouji"></div>
								</div>
							</div>
							<div class="inputBox">
								<div class="box">
									<div class="tit">联系邮箱：</div>
									<div class="inpu"><input type="text" name="" id="email"></div>
								</div>
							</div>
							<div class="textareaBox">
								<div class="box">
									<textarea id="content"></textarea>
								</div>
							</div>
							<div class="btn"><input type="button" id="but" name="" value="提交留言"></div>
						</div>
						<script type="text/javascript">
						$(function () {
							$("#but").click(function () {
								var name = $("#name").val();
								var shouji = $("#shouji").val();
								var email = $("#email").val();
								var content = $("#content").val();
								$(document).ajaxStart(function (){
							    	$("#but").attr("value", "提交中...");
							 	 });
							  	$(document).ajaxStop(function (){
							    	$("#but").attr("value", "提交留言");
							  	});	
								$.ajax({
									url:"http://www.aimengyiren.com/index.php?m=guestbook&c=index&a=ajaxsave",
									data:{name:name, shouji:shouji, email:email, content:content},
									type:"POST",
									dataType:"json",
									success: function (res) {
										if (res.info == 1) {
											alert(res.info);
											window.location.reload();	
										} else {
											alert(res.info);
										}	
										return false;
										
									}	
								})

							})
						})
						</script>
					</div> -->
				</div>
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
					  	locationType:"home2", 
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
			      				html+='<div class="list">'
									+'<div class="pic"><img src='+o.url+'></div><div class="name">'+o.title+'</div>'
									+'<div class="btn"><a href="https://detail.tmall.com/item.htm?spm=a220m.1000862.1000725.1.656f2c77mJXn1B&id=564708959015&areaId=321000&is_b=1&cat_id=2&rn=0a9806721babd4e2d2ad127f9ed3fe22" target="_blank">了解详情</a></div>'
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