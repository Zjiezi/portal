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
    <%@include file="decorator/leftbar.jsp"%> 
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
						<div class="col-xs-8 col-sm-8 col-md-8">
							<div class="input-group"> 
								<table><tr><td>产品编号:</td><td><input type="text" name="number" id="number" class="form-control search-query number" /></td>
								<td>&nbsp&nbsp&nbsp&nbsp</td>
								<td>产品名称:</td><td><input type="text" name="name" id="name" class="form-control search-query name" /></td>
								</tr></table> 
								<span class="input-group-btn">
									<button type="button" class="btn btn-info btn-square btn-sm btn-3d searchtask">
										查&nbsp找
									</button>
								</span>
								<td>&nbsp&nbsp&nbsp&nbsp</td>
								<span class="input-group-btn">
									 <button type="button" id="addproduct" class="btn btn-success  btn-sm btn-3d pull-right">
									 新增产品
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
                                        	<th class="text-center">产品序号</th>
                                            <th class="text-center">产品编号</th>
                                            <th class="text-center">产品名</th>
                                            <th class="text-center">单价</th>
                                            <th class="text-center">操作</th>
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
        
                
                    
               
           
        <!--隐藏框 产品新增开始  -->
<div id="addDictDivType" style="display: none;">
			<div class=" col-xs-12  col-sm-12  col-md-12 ">
				<!-- PAGE CONTENT BEGINS -->
				 <div class="panel panel-default">
                            
                            <div class="panel-body">
                                <form action="#" class="dropzone" id="my-awesome-dropzone" enctype="multipart/form-data">
                                </form>

                            </div>
                        </div>
				<form class="form-horizontal addDictDivTypeForm">
				<div class="row col-xs-12  col-sm-12  col-md-12 ">
				<div class="form-group">
                           <label class="col-sm-3 col-md-2 control-label">产品名:</label>
                              <div class="col-sm-3 col-md-3">
                                  <input type="text" id="productName" class="form-control ">
                              </div>
                               <div >
                            <label class="col-sm-2 col-md-2 control-label" >产品编号:</label>
                                <div class="col-sm-3 col-md-3">
                                  <input type="text"   id="productNumber"  class="form-control ">
                                </div>
                                </div>
                    	</div>
                    	<div class="form-group">
                           <label class="col-sm-3 col-md-2 control-label">产品单价:</label>
                              <div class="col-sm-3 col-md-3">
                                  <input type="text" id="productPrice"  class="form-control ">
                              </div>
                               <div >
                            <label class="col-sm-2 col-md-2 control-label" >产品备注:</label>
                                <div class="col-sm-3 col-md-3">
                                  <input type="text"   placeholder="可不填" id="productRemark"  class="form-control ">
                                </div>
                                </div>
                    	</div>
                 <div class="form-group">
                 <label class="col-sm-2 col-md-2 control-label" >详情介绍:</label>
                      <div class="col-sm-8 " > 
                      <textarea rows="7" cols="50" class="form-control" id="details"></textarea>
                      
                      </div>
                 </div>
                 <div class="form-group">
                      <div class="col-sm-6" id="productId"> </div>
                 </div>
</div>
</form>
</div>
</div>
<!--隐藏框 产品新增结束  -->

     
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
 
  /*  $(document).ready(function() {
        $('#example').dataTable();
    });  */
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
				      url:"${ctx}/product/productPage",
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
		      				+'<td class="text-center id">'+o.id+'</td>'
		      				+'<td class="text-center edit number">'+o.number+'</td>'
		      				+'<td class="text-center edit name">'+o.name+'</td>'
		      				+'<td class="text-center edit price">'+o.price+'</td>'
							+'<td class="text-center"><button class="btn btn-xs btn-info  btn-trans update" data-id='+o.id+'>编辑</button>  <button class="btn btn-xs btn-primary btn-trans addprocedure" data-id='+o.id+' data-name='+o.name+'>添加工序</button> <button class="btn btn-xs btn-success btn-trans addbatch" data-id='+o.id+' data-name='+o.name+'>填写批次</button></td></tr>'
							
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
								  	}
						        
						            self.loadPagination(_data);
							     }
					      }
					    });  
					   	layer.close(index);
					   	 $("#tablecontent").html(html); 
					   	self.loadEvents();
					   
				      },error:function(){
							layer.msg("加载失败！", {icon: 2});
							layer.close(index);
					  }
				  });
			}
			
			this.loadEvents = function(){
				//修改方法
				$('.update').on('click',function(){
					
					var that=$(this);
					var id=that.data('id');
					var datate={
							id:id,
					}
					var th="";
					$.ajax({
					      url:"${ctx}/product/productPage",
					      data:datate,
					      type:"GET",
					      beforeSend:function(){
						 	  index = layer.load(1, {
							  shade: [0.1,'#fff'] //0.1透明度的白色背景
							  });
						  }, 
			      		  success: function (result) {
			      			
			      			 $(result.data.rows).each(function(i,o){
			      				
			      				$("#productNumber").val(o.number);
			      				$("#productName").val(o.name);
			      				$("#productPrice").val(o.price);
			      				$("#productRemark").val(o.remark);
			      				$("#details").val(o.details);
			      				$(o.files).each(function(j,k){
			      				th='<img src='+k.url+'>'
			      					
			      				$("#my-awesome-dropzone").html(th);
			      				})
			      			}); 
						   	layer.close(index);
					      },error:function(){
								layer.msg("加载失败！", {icon: 2});
								layer.close(index);
						  }
					  });
					
					
					
					var _index
					var index
					var postData
					var dicDiv=$('#addDictDivType');
					_index = layer.open({
						  type: 1,
						  skin: 'layui-layer-rim', //加上边框
						  area: ['60%', '80%'], 
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
							  postData={
									  number:$("#productNumber").val(),
									  name:$("#productName").val(),
									  price:$("#productPrice").val(),
									  remark:$("#productRemark").val(),
									  details:$("#details").val(),
									  filesIds:arr,
							  }
							  $.ajax({
									url:"${ctx}/product/addProduct",
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
				});
			}
			this.events = function(){
				//查询
				$('.searchtask').on('click',function(){
					var data = {
				  			page:1,
				  			size:13,
				  			type:1,
				  			name:$('#name').val(),
				  			number:$('#number').val(),
				  	}
		            self.loadPagination(data);
				});
				
				
				//新增产品
				$('#addproduct').on('click',function(){
					
					var _index
					var index
					var postData
					var dicDiv=$('#addDictDivType');
					_index = layer.open({
						  type: 1,
						  skin: 'layui-layer-rim', //加上边框
						  area: ['60%', '80%'], 
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
							  postData={
									  number:$("#productNumber").val(),
									  name:$("#productName").val(),
									  price:$("#productPrice").val(),
									  remark:$("#productRemark").val(),
									  details:$("#details").val(),
									  filesIds:arr,
							  }
							  $.ajax({
									url:"${ctx}/product/addProduct",
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
