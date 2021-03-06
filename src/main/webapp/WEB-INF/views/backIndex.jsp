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
						<div class="col-xs-11 col-sm-11 col-md-11">
							<div class="input-group"> 
								<table><tr><td>产品编号:</td><td><input type="text" name="number" id="number" class="form-control search-query number" /></td>
								<td>&nbsp&nbsp&nbsp&nbsp</td>
								<td>产品名称:</td><td><input type="text" name="name" id="name" class="form-control search-query name" /></td>
								<td>&nbsp&nbsp&nbsp&nbsp</td>
								<td>产品类型:</td><td><select class="form-control" id="selectstatee"><option value="1">毛绒公仔</option><option value="2">家居用品</option><option value="3">IP衍生品</option><option value="4">原创形象</option><option value="5">IP形象资源</option></select></td>
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
                            <div><table><tr>
								<td>图片类型:</td><td><select class="form-control" id="selecttype"><option value="introduce">产品</option><option value="details">产品描述</option><option value="bursting">爆款图片</option></select></td>
								</tr></table></div>
                            <div class="panel-body">
                                <form action="#" class="dropzone" id="my-awesome-dropzone" enctype="multipart/form-data">
                                </form>

                            </div>
                 </div>
				<form class="form-horizontal addDictDivTypeForm">
				<div class="row col-xs-12  col-sm-12  col-md-12 " id="tabs">
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
                           <label class="col-sm-3 col-md-2 control-label">填充物:</label>
                              <div class="col-sm-3 col-md-3">
                                  <input type="text" id="filler"  class="form-control ">
                              </div>
                               <div >
                            <label class="col-sm-2 col-md-2 control-label" >面料:</label>
                                <div class="col-sm-3 col-md-3">
                                  <input type="text"  id="fabric"  class="form-control ">
                                </div>
                                </div>
                    	</div>
                    	<div class="form-group">
                            <label class="col-sm-2 col-md-2 control-label" >爆款类型:</label>
                                <div class="col-sm-6 col-md-6">
                                  <select class="form-control" id="burselect"><option value="0">非爆款</option><option value="1">爆款</option></select>
                                </div>
                                </div>
                    	<div class="form-group">
                            <label class="col-sm-2 col-md-2 control-label" >产品尺寸:</label>
                                <div class="col-sm-6 col-md-6">
                                  <input type="text"    id="productsize"  class="form-control size">
                                </div>
                                  <div class="col-sm-2 col-md-1"><input type="button" class="btn btn-sm  btn-success form-control" id="save" value="添加"></input></div>
                                </div>
                    	</div >
                 <div class="form-group">
                 <label class="col-sm-2 col-md-2 control-label" >详情介绍:</label>
                      <div class="col-sm-8 " > 
                      <textarea rows="7" cols="50" class="form-control" id="details"></textarea>
                      
                      </div>
                 </div>
                 <div class="form-group hidden">
                      <div class="col-sm-6" id="productId"> </div>
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
				  		type:$("#selectstatee").val(),
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
							+'<td class="text-center"><button class="btn btn-xs btn-info  btn-trans update" data-id='+o.id+' data-name='+o.name+'>编辑</button>  <button class="btn btn-xs btn-danger btn-trans delete" data-id='+o.id+'>删除</button></td></tr>'
							
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
					   	self.loadEvents();
					   
				      },error:function(){
							layer.msg("加载失败！", {icon: 2});
							layer.close(index);
					  }
				  });
			}
			
			this.loadEvents = function(){
				$('.delete').on('click',function(){
					var that=$(this);
					var postData = {
							ids:$(this).data('id'),
					}
					var index;
					 index = layer.confirm('确定删除吗', {btn: ['确定', '取消']},function(){
					$.ajax({
						url:"${ctx}/product/deleteProduct",
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
							that.parent().parent().hide();
							layer.close(index);
							}else{
								layer.msg("删除失败！", {icon: 1});
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
					var name=that.data('name');
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
			      				$("#filler").val(o.filler);
								$("#fabric").val(o.fabric);
			      				$("#productNumber").val(o.number);
			      				$("#productName").val(o.name);
			      				$("#productPrice").val(o.price);
			      				$("#productRemark").val(o.remark);
			      				$("#productsize").val(o.size);
			      				$("#details").val(o.details);
			      				$('#burselect').each(function(j,k){
			      					var id=o.productType;
			      					$(k).val(id);
			      				})
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
						  area: ['60%', '90%'], 
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
							  var size=new Array()
							  $($('.size')).each(function(){
								  size.push($(this).val())
								  
							  })
							  postData={
               						  id:id,
									  number:$("#productNumber").val(),
									  name:$("#productName").val(),
									  price:$("#productPrice").val(),
									  remark:$("#productRemark").val(),
									  details:$("#details").val(),
									  filesIds:arr,
									  size:size,
									  type:$("#selectstatee").val(),
									  filler:$("#filler").val(),
									  fabric:$("#fabric").val(),
									  productType:$("#burselect").val(),
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
											  		type:$("#selectstatee").val(),
											} 
											$("#productId").text("");
											var data = {
								        			page:self.getIndex(),
											  		size:13,
											  		type:1,
											  		name:$('#name').val(),
										  			number:$('#number').val(),
										  			type:$("#selectstatee").val(),
										  	}
											self.loadPagination(data);
											$('.sizeto').remove();
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
									  type:$("#selectstatee").val(),
									  filler:$("#filler").val(),
									  fabric:$("#fabric").val(),
									  productType:$("#burselect").val(),
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
											
											$("#productId").text("");
											var data = {
								        			page:self.getIndex(),
											  		size:13,
											  		type:1,
											  		name:$('#name').val(),
										  			number:$('#number').val(),
										  			type:$("#selectstatee").val(),
										  	} 
											self.loadPagination(data);
											$('.sizeto').remove();
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
							  $('.sizeto').remove();
							
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
				  			type:$("#selectstatee").val(),
				  	}
		            self.loadPagination(data);
				});
				
				//新增尺寸
				$('#save').on('click',function(){
					var trHtml=""
					trHtml='<div class="form-group sizeto">'
                        +'<label class="col-sm-2 col-md-2 control-label" >产品尺寸:</label>'
                        +'<div class="col-sm-6 col-md-6">'
                        +'<input type="text" class="form-control size">'
                        +'</div>'
                        +'</div>'
                        $("#tabs").append(trHtml); 
				})
				
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
							  var size=new Array()
							  $($('.size')).each(function(){
								  size.push($(this).val())
							  })
							  if($("#productName").val()==""){
								  return layer.msg("产品名不能为空", {icon: 2});
							  }
							  postData={
									  number:$("#productNumber").val(),
									  name:$("#productName").val(),
									  price:$("#productPrice").val(),
									  remark:$("#productRemark").val(),
									  details:$("#details").val(),
									  filesIds:arr,
									  size:size,
									  type:$("#selectstatee").val(),
									  filler:$("#filler").val(),
									  fabric:$("#fabric").val(),
									  productType:$("#burselect").val(),
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
											var data = {
								        			page:self.getIndex(),
											  		size:13,
											  		type:1,
											  		name:$('#name').val(),
										  			number:$('#number').val(),
										  			type:$("#selectstatee").val(),
										  	}
											self.loadPagination(data);
											$(".dz-started").text("");
											$("#productId").text("");
											 $('.sizeto').remove();
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
							  $('.sizeto').remove();
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
