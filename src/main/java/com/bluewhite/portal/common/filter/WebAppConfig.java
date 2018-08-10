//package com.bluewhite.portal.common.filter;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.EnableWebMvc;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
//
///**
// * 注册拦截器  
// * @author zhangliang
// *
// */
//@EnableWebMvc
//@Configuration
//public class WebAppConfig extends WebMvcConfigurationSupport  {  
//	  
//    @Override  
//    public void addInterceptors(InterceptorRegistry registry) {  
//        //注册自定义拦截器，添加拦截路径和排除拦截路径  
//        registry.addInterceptor(new InterceptorConfig()).addPathPatterns("/**").excludePathPatterns("/backlogin");  
//    }  
//
//}
