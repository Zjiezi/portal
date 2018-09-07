<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />



<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
   <link rel="stylesheet" type="text/css" href="${ctx }/static/tc/lun/style.css">
   <link rel="stylesheet" type="text/css" href="${ctx }/static/tc/css/dropzone.css"> 
  <link rel="stylesheet" type="text/css" href="${ctx }/static/tc/css/basic.css">
</head>
  
<body>
    <section id="main-wrapper" class="theme-default">
    <%@include file="../decorator/leftbar.jsp"%> 
        <!--main content start-->
       
            <section id="main-content" class="animated fadeInUp">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">产品信息</h3>
                                <div class="actions pull-right">
                                    <i class="fa fa-expand"></i>
                                    <i class="fa fa-chevron-down"></i>
                                </div>
                            </div>
      <div class="row" style="height: 30px; margin:15px 0 10px">
			<div class="col-xs-8 col-sm-8  col-md-8">
				<form class="form-search" >
					<div class="row">
						<div class="col-xs-11 col-sm-11 col-md-11">
							<div class="input-group"> 
								<table><tr>
								<td>客户名称:</td><td><input type="text" name="name" id="name" class="form-control search-query name" /></td>
								</tr></table> 
								<span class="input-group-btn">
									<button type="button" class="btn btn-info btn-square btn-sm btn-3d searchtask">
										查&nbsp找
									</button>
								</span>
								<td>&nbsp&nbsp&nbsp&nbsp</td>
								<span class="input-group-btn">
									 <button type="button" id="addproduct" class="btn btn-success  btn-sm btn-3d pull-right">
									 新增客户
									 </button>
								</span>
								  
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                        	<th class="text-center">时间</th>
                                            <th class="text-center">客户名</th>
                                            <th class="text-center">客户电话</th>
                                            <th class="text-center">客户邮箱</th>
                                            <th class="text-center">客户留言</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablecontent">
                                        
                                    </tbody>
                                </table>
                                <div id="pager" class="pull-right">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
                        
                   
            </section>
        </section>

     
    </section>

    <script src="${ctx }/static/tc/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="${ctx }/static/tc/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx }/static/tc/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${ctx }/static/tc/plugins/switchery/switchery.min.js"></script>
    <script src="${ctx }/static/tc/plugins/pace/pace.min.js"></script>
    <script src="${ctx }/static/tc/plugins/fullscreen/jquery.fullscreen-min.js"></script>
    <script src="${ctx }/static/tc/js/src/app.js"></script>
     <script src="${ctx }/static/tc/js/laypage/laypage.js"></script> 
    <script src="${ctx }/static/tc/plugins/dataTables/js/jquery.dataTables.js"></script>
    <script src="${ctx }/static/tc/plugins/dataTables/js/dataTables.bootstrap.js"></script>
    <script src="${ctx }/static/tc/js/laydate-icon/laydate.js"></script>
     <script src="${ctx }/static/tc/js/vendor/dropzone.min.js"></script>
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
				  		size:13,
				} 
			this.init = function(){
				
				//注册绑定事件
				self.events();
				self.loadPagination(data);
			}
			//加载分页
			  this.loadPagination = function(data){
			    var index;
			    var html = '';
			    $.ajax({
				      url:"${ctx}/message/messagePage",
				      data:data,
				      type:"GET",
				      beforeSend:function(){
					 	  index = layer.load(1, {
						  shade: [0.1,'#fff'] //0.1透明度的白色背景
						  });
					  }, 
		      		  success: function (result) {
		      			
		      			 $(result.data.rows).each(function(i,o){
		      				html +='<tr>'
		      				+'<td class="text-center id">'+o.createdAt+'</td>'
		      				+'<td class="text-center edit name">'+o.username+'</td>'
		      				+'<td class="text-center edit name">'+o.phone+'</td>'
		      				+'<td class="text-center edit name">'+o.email+'</td>'
		      				+'<td class="text-center edit name">'+o.message+'</td></tr>'
							
		      			}); 
		      			self.setIndex(result.data.pageNum);
				        //显示分页
					   	 laypage({
					      cont: 'pager', 
					      pages: result.data.totalPages, 
					      curr:  result.data.pageNum || 1, 
					      jump: function(obj, first){ 
					    	  if(!first){ 
					    		 
						        	var _data = {
						        			page:obj.curr,
									  		size:13,
									  		type:1,
									  		name:$('#name').val(),
								  			number:$('#number').val(),
								  			type:$("#selectstatee").val(),
								  	}
						        
						            self.loadPagination(_data);
							     }
					      }
					    });  
					   	layer.close(index);
					   	 $("#tablecontent").html(html); 
				      },error:function(){
							layer.msg("加载失败！", {icon: 2});
							layer.close(index);
					  }
				  });
			}
			
			this.events = function(){
				//查询
				$('.searchtask').on('click',function(){
					var data = {
				  			page:1,
				  			size:13,
				  			name:$('#name').val(),
				  	}
		            self.loadPagination(data);
				});
				//新增产品
				$('#addproduct').on('click',function(){
					$("#my-awesome-dropzone").text("");
					var _index
					var index
					var postData
					var dicDiv=$('#addDictDivType');
					_index = layer.open({
						  type: 1,
						  skin: 'layui-layer-rim', //加上边框
						  area: ['60%', '90%'], 
						  btnAlign: 'c',//宽高
						  maxmin: true,
						  title:"新增产品",
						  content: dicDiv,
						  btn: ['确定', '取消'],
						  yes:function(index, layero){
							  var a=$("#productId").text();
							  a=a.substring(0,a.length-1);
							  var arr=new Array();
							  arr=a
							  if($("#productName").val()==""){
								  return layer.msg("产品名不能为空", {icon: 2});
							  }
							  postData={
									  name:$("#productName").val(),
									  details:$("#details").val(),
									  filesIds:arr,
							  }
							  $.ajax({
									url:"${ctx}/customer/addCustomer",
									data:postData,
						            traditional: true,
									type:"post",
									beforeSend:function(){
										index = layer.load(1, {
											  shade: [0.1,'#fff'] //0.1透明度的白色背景
											});
									},
									
									success:function(result){
										if(0==result.code){
											layer.msg("添加成功！", {icon: 1});
											$('#addDictDivType').hide();
											$(".addDictDivTypeForm")[0].reset();
											var data = {
								        			page:self.getIndex(),
											  		size:13,
											  		name:$('#name').val(),
										  	}
											self.loadPagination(data);
											$(".dz-started").text("");
											$("#productId").text("");
										}else{
											layer.msg("添加失败", {icon: 2});
										}
										
										layer.close(index);
									},error:function(){
										layer.msg(result.message, {icon: 2});
										layer.close(index);
									}
								});
							},
						  end:function(){
							  $('.addDictDivTypeForm')[0].reset(); 
							  $('#addDictDivType').hide();
						  }
					});
				})
			}
   	}
   			var login = new Login();
				login.init();
			})
    
    </script>
     
</body>

</html>
