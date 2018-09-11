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
				<li ><a href="${ctx }/view/menusToUrl?url=index">首页</a></li>
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
				<li class="on">
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
				<div class="nav two">
					<ul>
						<li class="on"><a href="${ctx }/view/menusToUrl?url=original">原创形象</a></li>
						<li ><a href="${ctx }/view/menusToUrl?url=team">设计团队</a></li>
						<li><a href="${ctx }/view/menusToUrl?url=resources">IP形象资源</a></li>
					</ul>
				</div>
				<div class="crumbs">
					<ul>
						<li class="home"><a href="#">首页</a></li>
						<li><a href="#">原创开发</a></li>
						<li><a href="#">原创形象</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="aboutPage">
			<div class="wrap">
				<div class="columnTitle">
					<h2 class="tit" id="title"></h2>
					<!-- <div class="entit">Living water hrebaceous moisturizer</div> -->
					<div class="line"></div>
				</div>
				<div class="productDetails">
					<div class="row">
						<div class="albumBox">
							<div class="swiper-container gallery-top">
							<div id="display" style="display: none;"></div>
							
								<div class="swiperList" id="home">
									<!-- <div class="list" id="5"><img src="/static/picture/20180623055705857.jpg"></div>
									<div class="list "><img src="/static/picture/20180623055705857.jpg"></div>
									<div class="list"><img src="/static/picture/20180623055705857.jpg"></div> -->
								</div>
							</div>
							<div class="swiper-container gallery-thumbs">
								<div class="swiperList" id="home2">
									<!-- <div class="list"><img src="/static/picture/20180623055705857.jpg"></div>
									<div class="list"><img src="/static/picture/20180623055705857.jpg"></div>
									<div class="list"><img src="/static/picture/20180623055705857.jpg"></div> -->
								</div>
							</div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
							<script>
								
							</script>
						</div>
						<div class="information">
							<h1 class="title"id="title2"> </h1>
							<div class="text">
								<div class="list" id="home3" style="border-bottom: 1px dashed #dfdfdf;"></div>
								<p id="home4"></p>
								<p id="home5"></p>
								<p id="home7"></p>
								<p >商品售价：<span id="home6"></span></p>
							</div>
						</div>
					</div>
					<div class="details">
						<div class="top"><span>产品描述</span></div>
						<div class="article" id="home8">
						<!--  <p><span style="color: rgb(86, 86, 86); font-family: " microsoft="" font-size:="" text-align:="" background-color:=""></span></p> 
						<p ><span style="font-size: 18px; color: rgb(88, 129, 50);"><img alt="" src="/static/picture/lADPBbCc1r61_SbNAovNBLA_1200_651.jpg"></span></p>
						<p style="white-space: normal;"></p><p style="white-space: normal;"><img alt="" src="/static/picture/lADPBbCc1r61_SbNAovNBLA_1200_651.jpg"></p>
						<p style="white-space: normal;">&nbsp;</p><p style="white-space: normal;"><strong>[适合肤质]：</strong>适合多种肤质，特别推荐中性及偏干性缺水肌肤使用。</p>
						<p style="white-space: normal;">&nbsp;</p><p style="white-space: normal;"><strong>[产品功效]：</strong>采用非洲、南美洲和中国西北三地的霍霍巴籽、沙棘果、人参、龙胆根等名贵本草植物精华研制而成。日间滋养，夜间修护，对抗肌肤脆弱、干燥、松弛等问题，细腻如丝的乳状质地，保持肌肤底层活力，提升肌肤紧致，令肌肤幼嫩透亮，如玉般晶莹细滑。</p><p style="white-space: normal;">&nbsp;</p>
						<p style="white-space: normal;"><strong>[使用方法]：</strong>取适量草本保湿乳，由面部中央向两侧轻轻涂抹，让其自然吸收。<br/><br/></p>
						<p style="text-align: center"></p><p><br/></p>						</div> -->
						<!-- <div class="nearPage">
							<div class="btn"><a href="javascript:alert('没有了');">上一页：没有了</a></div>
							<div class="btn"><a href="#">下一页：水活氨基酸洗面奶</a></div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<div class="footer">
		<div class="linkList">
			<ul>
				<li><a href="${ctx }/view/menusToUrl?url=gushi">走进蓝白</a></li>
				<li><a href="#">明星产品</a></li>
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


<script type="text/javascript" src="${ctx }/static/tc/js/vendor/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${ctx }/static/tc/js/layer/layer.js"></script>
<script src="${ctx }/static/tc/js/laypage/laypage.js"></script> 
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
		  	var data={
		  			"${paramName}":"${paramNum}",
				}
			this.init = function(){
				
				//注册绑定事件
				self.evens();
				self.loadPaginationhome(data);
				self.loadPaginationhome3(data);
				self.loadPaginationhome4(data);
			}
			//加载分页
			  this.loadPaginationhome = function(data){
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
			      				var roleidArray = new Array();
			      				roleidArray=o.size
			      				var str1;
			      				if(roleidArray!=null){
			      				 str1=roleidArray.join(" ") 
			      				}else{
			      					str1=""
			      				}
			      				 $('#title').text(o.name)
			      				$('#title2').text(o.name)
			      				$('#home4').text("产品尺寸:"+str1)
			      				$('#home5').text("产品说明:"+o.details)
			      				$('#home6').text("¥"+o.price)
			      				$('#home7').text('填充物: '+o.filler+" "+"面料: "+o.fabric)
			      				$(o.files).each(function(j,k){
			      					if(k.producImagetType=="introduce"){
			      				html+='<div class="list '+k.id+'"><img src="'+k.url+'"></div>'
			      					}
			      				})
			      			}); 
			      			
						   	layer.close(index);
						    $("#home").html(html);
						    $("#home2").html(html);
							self.lod();
					      },error:function(){
								layer.msg("加载失败！", {icon: 2});
								layer.close(index);
						  }
					  });
				  
				 
			}
			  this.loadPaginationhome3 = function(data){
				  var index;
				    var html = '';
				    var htmltw="";
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
			      				$(o.files).each(function(j,k){
			      					if(k.producImagetType=="introduce"){
			      				html+='<img class="ss" data-id="'+k.id+'"  data-src="'+k.url+'" style="width: 70px;margin-top: 6px;margin-right: 12px;border: 1px;color: blue;border: 1px dashed #dfdfdf;"" src="'+k.url+'">'
			      				}
			      				})
			      				
			      			}); 
			      			
						   	layer.close(index);
						    $("#home3").html(html);
							self.lod();
					      },error:function(){
								layer.msg("加载失败！", {icon: 2});
								layer.close(index);
						  }
					  });
				  
				 
			}
			  this.loadPaginationhome4 = function(data){
				  var index;
				    var html = '';
				    var htmltw="";
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
			      				$(o.files).each(function(j,k){
			      					if(k.producImagetType=="details"){
			      				html+='<p style="white-space: normal;"></p><p style="white-space: normal;"><img alt="" src="'+k.url+'"></p>'
			      				}
			      				})
			      				
			      			}); 
			      			
						   	layer.close(index);
						    $("#home8").html(html);
							self.lod();
					      },error:function(){
								layer.msg("加载失败！", {icon: 2});
								layer.close(index);
						  }
					  });
				  
				 
			}
			this.lod=function(){
				var galleryTop = new Swiper('.gallery-top', {
					wrapperClass : 'swiperList',
					slideClass : 'list',
					spaceBetween: 10,				//list之间的距离
					effect : 'slide',				//滑动效果
					autoplay: false,				//自动滑动
					speed:400,						//滑动速度
					slidesPerView: 1,				//可视个数
					simulateTouch : true,			//鼠标模拟触摸
					allowTouchMove: true,			//触摸滑动
					grabCursor : true,				//手掌鼠标
					//loop:true,						//环路
					// loopedSlides: 10,
				});
				var galleryThumbs = new Swiper('.gallery-thumbs', {
					wrapperClass : 'swiperList',
					slideClass : 'list',
					spaceBetween: 12,				//list之间的距离
					centeredSlides: true,			//居中
					slidesPerView: 4,				//可视个数
					slideToClickedSlide: true,		//击list会过渡到这个list
					simulateTouch : true,			//鼠标模拟触摸
					allowTouchMove: true,			//触摸滑动
					grabCursor : true,				//手掌鼠标
					//loop: true,						//环路
						// loopedSlides: 10,
					//左右按钮
					navigation: {
						prevEl: '.swiper-button-next',
						nextEl: '.swiper-button-prev',
					},
				});
				galleryTop.controller.control = galleryThumbs;
				galleryThumbs.controller.control = galleryTop;
				 $('.ss').mouseover(function(){
					 $(this).css("border","2px solid red")
					 $("#display").css("display","block")
					 var html="";
						var src= $(this).data('src');
						html='<div class="list"><img src="'+src+'"></div>'
						 $("#display").html(html);
					  })
					  $('.ss').mouseout(function(){
						  $(this).css("border","1px dashed #dfdfdf")
					 $("#display").css("display","none")
					  })
			}
			  this.evens=function(){
			  }
   	}
   			var login = new Login();
				login.init();
			})
    
    </script>
</body>
</html>