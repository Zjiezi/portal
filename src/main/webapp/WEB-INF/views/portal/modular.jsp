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
						<div class="col-xs-8 col-sm-8 col-md-8">
							<div class="input-group"> 
								<table><tr><td>模块选择:</td><td><select class="form-control" id="selectstate"><option value="home">首页</option><option value="home2">中</option></select></td>
								</tr></table> 
								<span class="input-group-btn">
									<button type="button" class="btn btn-info btn-square btn-sm btn-3d searchtask" id="searchtask">
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
                                      <!--  <div class="panel panel-default">
                            <div class="panel-body" id="wang">
                                <form action="#" class="dropzone" id="my-awesome-dropzone"  enctype="multipart/form-data">
                                </form>

                            </div>
                        </div> -->
                                        <tr>
                                        	<th class="text-center">图片序号</th>
                                            <th class="text-center">图片名</th>
                                            <th class="text-center">图片标题</th>
                                            <th class="text-center">图片内容</th>
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
                           <label class="col-sm-3 col-md-2 control-label">图片标题:</label>
                              <div class="col-sm-3 col-md-3">
                                  <input type="text" id="title"  class="form-control ">
                              </div>
                               <div >
                            <label class="col-sm-2 col-md-2 control-label" >图片名:</label>
                                <div class="col-sm-3 col-md-3">
                                  <input type="text"    id="imgName"  class="form-control ">
                                </div>
                                </div>
                    	</div>
                 <div class="form-group">
                 <label class="col-sm-2 col-md-2 control-label" >详情介绍:</label>
                      <div class="col-sm-8 " > 
                      <textarea rows="7" cols="50" class="form-control" id="content"></textarea>
                      
                      </div>
                 </div>
</div>
</form>
</div>
</div>

     
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
     <script id="load" role='reload' src="${ctx }/static/tc/js/vendor/dropzone.min.js"></script>
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
				  		locationType:$('#selectstate').val(),
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
				      url:"${ctx}/files/getPicture",
				      data:data,
				      type:"GET",
				      beforeSend:function(){
					 	  index = layer.load(1, {
						  shade: [0.1,'#fff'] //0.1透明度的白色背景
						  });
					  }, 
		      		  success: function (result) {
		      			 $(result.data).each(function(i,o){
		      				html +='<tr>'
			      				+'<td class="text-center id">'+o.id+'</td>'
			      				+'<td class="text-center edit number">'+o.name+'</td>'
			      				+'<td class="text-center edit name">'+o.title+'</td>'
			      				+'<td class="text-center edit price">'+o.content+'</td>'
								+'<td class="text-center"><button class="btn btn-xs btn-info  btn-trans update" data-id='+o.id+' data-name='+o.name+'>编辑</button>  <button class="btn btn-xs btn-danger btn-trans delete" data-id='+o.id+'>删除</button></td></tr>'
		      			}); 
			      			$("#tablecontent").html(html);
		      			self.setIndex(result.data.pageNum);
				        //显示分页
					   	 laypage({
					      cont: 'pager', 
					      pages: result.data.totalPages, 
					      curr:  result.data.pageNum || 1, 
					      jump: function(obj, first){ 
					    	  if(!first){ 
					    		 
						        	var _data = {
						        			locationType:$('#selectstate').val(),
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
				//删除图片
				$('.dz-success-mark').on('click',function(){
  					var thate=$(this);
  					var postData={
  							id:$(this).data('id'),
  					}
  					var index;
					 index = layer.confirm('确定删除吗', {btn: ['确定', '取消']},function(){
					$.ajax({
						url:"${ctx}/files/deletefiles",
						data:postData,
						type:"GET",
						beforeSend:function(){
							index = layer.load(1, {
								  shade: [0.1,'#fff'] //0.1透明度的白色背景
								});
						},
						
						success:function(result){
							if(0==result.code){
							layer.msg("删除成功！", {icon: 1});
							thate.parent().hide();
							layer.close(index);
							}else{
								layer.msg("删除失败！", {icon: 2});
								layer.close(index);
							}
						},error:function(){
							layer.msg("操作失败！", {icon: 2});
							layer.close(index);
						}
					});
					 })
  				})
			
  				
  				
  				
  			//修改方法
				$('.update').on('click',function(){
					
					var that=$(this);
					var id=that.data('id');
					var name=that.data('id');
					var datate={
							id:id,
					}
					var th="";
					$.ajax({
					      url:"${ctx}/files/getPictureOne",
					      data:datate,
					      type:"GET",
					      beforeSend:function(){
						 	  index = layer.load(1, {
							  shade: [0.1,'#fff'] //0.1透明度的白色背景
							  });
						  }, 
			      		  success: function (result) {
			      			
			      			 $(result.data).each(function(i,o){
			      				
			      				$("#title").val(o.title);
			      				$("#productRemark").val(o.remark);
			      				$("#details").val(o.details);
			      				$(o.files).each(function(j,k){
			      				th+='<div class="dz-preview dz-processing dz-image-preview dz-success"><div class="dz-details"><img data-dz-thumbnail alt='+k.name+' src='+k.url+'></div><div class="dz-success-mark" data-id="'+k.id+'"></div></div>'
			      				
			      				})
			      				 $("#my-awesome-dropzone").html(th); 
			      				$('.dz-success-mark').on('click',function(){
			      					var thate=$(this);
			      					var postData={
			      							id:$(this).data('id'),
			      					}
			      					var index;
									 index = layer.confirm('确定删除吗', {btn: ['确定', '取消']},function(){
									$.ajax({
										url:"${ctx}/files/deletefiles",
										data:postData,
										type:"GET",
										beforeSend:function(){
											index = layer.load(1, {
												  shade: [0.1,'#fff'] //0.1透明度的白色背景
												});
										},
										
										success:function(result){
											if(0==result.code){
											layer.msg("删除成功！", {icon: 1});
											thate.parent().hide();
											layer.close(index);
											}else{
												layer.msg("删除失败！", {icon: 2});
												layer.close(index);
											}
										},error:function(){
											layer.msg("操作失败！", {icon: 2});
											layer.close(index);
										}
									});
									 })
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
						  title:name,
						  content: dicDiv,
						  btn: ['确定', '取消'],
						  yes:function(index, layero){
							  var a=$("#productId").text();
							  a=a.substring(0,a.length-1);
							  var arr=new Array();
							  arr=a
							  postData={
               						  id:id,
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
											layer.msg("修改成功", {icon: 1});
											var data={
													page:self.getIndex(),
											  		size:13,	
											  		
											} 
											$("#productId").text("");
											self.loadPagination(data);
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
							  var a=$("#productId").text();
							  a=a.substring(0,a.length-1);
							  var arr=new Array();
							  arr=a
							  var id=that.data('id');
							  postData={
               						  id:id,
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
											layer.msg("修改成功", {icon: 1});
											$("#productId").text("");
											var data={
													page:self.getIndex(),
											  		size:13,	
											  		
											} 
											self.loadPagination(data);
										}else{
											layer.msg("添加失败", {icon: 2});
										}
										
										layer.close(index);
									},error:function(){
										layer.msg(result.message, {icon: 2});
										layer.close(index);
									}
								});
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
							locationType:$('#selectstate').val(),
				  	}
		            self.loadPagination(data);
				});

			}
   	}
   			var login = new Login();
				login.init();
			})
    
    </script>
     
</body>

</html>
