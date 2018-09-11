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
	<style type="text/css">
    #box{
        width: 188px;
        margin: 30px auto;
        font-family: 'Microsoft YaHei';
        font-size: 14px;
    }
    input{
        width: 133px;
        border: 1px solid #e2e2e2;
        height: 30px;
        float: left;
        background-image: url(images/search.jpg);
        background-repeat: no-repeat;
        background-size: 25px;
        background-position:5px center;
        padding:0 0 0 5px;
    }
    #search{
        width: 48px;
        height: 32px;
        float: right;
        background: black;
        color: white;
        text-align: center;
        line-height: 32px;
        cursor: pointer;
    }
 
</style>
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
				<li >
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
						<li style="position:relative;top:-14px;"><div id="box">
        <input type="text" id="name" name="search" placeholder="请输入关键字">
        <div id="search">搜索</div> 
    </div></li>
					</ul>
				</div>
				<div class="crumbs">
					<ul>
						<li class="home"><a href="#">首页</a></li>
						<li><a href="#">明星产品</a></li>
						<li><a href="#">毛绒公仔</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="aboutPage">
			<div class="wrap">
				<div class="columnTitle">
					<h2 class="tit">原创形象</h2>
					<div class="entit">Original image</div>
					<div class="line"></div>
				</div>
				<div class="popupBuyNow">
					 <div class="pic"><img src="/static/picture/20180615115944874.jpg"></div>
					<div class="text">关注公众号，进入“爱萌伊人”商城即可购买</div> 
				</div>

				<div class="productList">
					<ul>
						<li id="home">
							
						</li>
												
					</ul>
				</div>
				<div class="paging" id="pager">
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
					  page:1,
				  	  size:6,
				  	  type:4,
				}
			this.init = function(){
		  		self.events();
				//注册绑定事件
				self.loadPaginationhome(data);
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
		      				 var p;
		      				for (var i = 0; i < o.files.length; i++) {
								if(o.files[i].producImagetType=="introduce"){
		      						p=o.files[i];
		      						break;
	      						}
							
							}
		      				html+='<div class="list"><a href="${ctx }/view/menusToUrl?url=product-con&paramName=id&paramNum='+o.id+'" target="_blank">'
							+'<div class="pic"><img src="'+p.url+'"></div>'
							+'<h3 class="tit">'+o.name+'</h3>'
							+'<div class="txt">'+o.details+'</div>'
							+'</a>'
							+'<div class="bottom">'
							+'<div class="price">&yen;'+o.price+'</div>'
							+'<div class="btn"><a href="${ctx }/view/menusToUrl?url=original-con&paramName=id&paramNum='+o.id+'" target="_blank">了解详情</a></div>'
							+'<div class="btn popup"><a href="javascript:void(0);">立即购买</a></div>'
							+'</div>'
							+'</div>'
		      				
		      			}); 
		      			//显示分页
					   	 laypage({
					      cont: 'pager', 
					      pages: result.data.totalPages, 
					      curr:  result.data.pageNum || 1, 
					      jump: function(obj, first){ 
					    	  if(!first){ 
					    		 
						        	var _data = {
						        			page:obj.curr,
									  		size:6,
									  		type:4,
									  		name:$('#name').val(),
								  	}
						        
						            self.loadPaginationhome(_data);
							     }
					      }
					    }); 
					   	layer.close(index);
					    $("#home").html(html);
					  //产品列表、弹出购买二维码
					    $(function(){
					    	$(".productList li .btn.popup").click(function(){
					    		$(".popupBuyNow").fadeIn(200);
					    		$(".mainFilter").fadeIn(200);
					    	});
					    	$(".mainFilter").click(function(){
					    		$(".popupBuyNow").fadeOut(200);
					    		$(".mainFilter").fadeOut(200);
					    	});
					    });
				      },error:function(){
							layer.msg("加载失败！", {icon: 2});
							layer.close(index);
					  }
				  });
			}
			  this.events = function(){
				  $('#search').on('click',function(){
						var data = {
								page:1,
							  	  size:6,
							  	  type:4,
					  			name:$('#name').val(),
					  	}
			            self.loadPaginationhome(data);
					});
			  }
   	}
   			var login = new Login();
				login.init();
			})
    
    </script>
</body>
</html>