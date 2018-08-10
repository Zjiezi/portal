<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html class="no-js">
<head>

 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>蓝白工艺</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="${ctx }/static/tc/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${ctx }/static/tc/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx }/static/tc/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ctx }/static/tc/css/simple-line-icons.css">
    <link rel="stylesheet" href="${ctx }/static/tc/css/animate.css">
    <link rel="stylesheet" href="${ctx }/static/tc/plugins/daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" href="${ctx }/static/tc/plugins/switchery/switchery.min.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="${ctx }/static/tc/css/main.css"> 
    <link rel="stylesheet" href="${ctx }/static/tc/js/laypage/skin/laypage.css"> 
<script src="${ctx }/static/tc/js/vendor/jquery-3.3.1.min.js"></script>
<script src="${ctx }/static/tc/js/vendor/jquery.cookie.js"></script>
 <script src="${ctx }/static/tc/js/vendor/modernizr-2.6.2.min.js"></script>
 <script src="${ctx }/static/tc/js/layer/layer.js"></script>
<script type="text/javascript">
      
        
        </script>  
</head>
<body>
   <header id="header">
            <!--logo start-->
            <div class="brand">
      <!--           <a href="index.html" class="logo">
                    <i class="icon-layers"></i>
                    <span>蓝白</span>工艺</a> -->
            </div>
            
           
            <!--logo end-->
            <ul class="nav navbar-nav navbar-left">
                <li class="toggle-navigation toggle-left">
                    <button class="sidebar-toggle" id="toggle-left">
                        <i class="fa fa-bars"></i>
                    </button>
                </li>
                <li class="toggle-profile hidden-xs">
                    <button type="button" class="btn btn-default" id="toggle-profile">
                        <i class="icon-user"></i>
                    </button>
                </li>
                
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown profile hidden-xs">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="meta">
                            <span class="avatar">
                                <img src="${ctx }/static/tc/images/profile.jpg" class="img-circle" alt="">
                            </span>
                        <span class="text"> <shiro:principal/></span>
                        <span class="caret"></span>
                        </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight" role="menu">
                        <li>
                            <a href="#" id="login">
                                <span class="icon"><i class="fa fa-sign-out"></i>
                                </span>退出</a>
                        </li>
                    </ul>
                </li>
                 <li class="toggle-fullscreen hidden-xs">
                    <button type="button" class="btn btn-default expand" id="toggle-fullscreen">
                        <i class="fa fa-expand"></i>
                    </button>
                </li>
                <li class="toggle-navigation toggle-right">
                    <button class="sidebar-toggle" id="toggle-right">
                        <i class="fa fa-indent"></i>
                    </button>
                </li>
            </ul>
        </header> 
         <!--sidebar left start-->
        <aside class="sidebar sidebar-left">
            <div class="sidebar-profile">
                <div class="avatar">
                    <img class="img-circle profile-image" src="${ctx }/static/tc/images/profile.jpg" alt="profile">
                    <i class="on border-dark animated bounceIn"></i>
                </div>
                <div class="profile-body dropdown">
                    <a href="javascript:void(0);"  aria-expanded="false">
                    <h4><shiro:principal/></h4>
                    </a>
                    <small class="title">你好世界</small>
                </div>
            </div>
            <nav>
               
                <ul class="nav nav-pills nav-stacked " id="informatic">
                <li class=''><a href='#' class='index'   title='首页'><i class='fa  fa-fw fa-tachometer'></i> 首页</a></li>
                <li><a href='#'   title='产品'><i class='fa  fa-fw fa-tachometer'></i> 产品</a></li>
                </ul>
            </nav> 
            
              
        </aside>
        
        <!--sidebar left end-->
        
        <section class="main-content-wrapper">
        
</body>
        
</html>