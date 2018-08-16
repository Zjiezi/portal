package com.bluewhite.portal.common.filter;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 注册拦截器  
 * @author zhangliang
 *
 */
@Configuration
public class WebAppConfig implements WebMvcConfigurer  {  
	
    @Value("${web.upload-path}")
    private String path; 
	
    @Override  
    public void addInterceptors(InterceptorRegistry registry) {  
        //注册自定义拦截器，添加拦截路径和排除拦截路径  
        registry.addInterceptor(new InterceptorConfig())
        .addPathPatterns("/**")
        .excludePathPatterns("/backLogin","/userLogin","/","/static/**","/menusToUrl",path);
    }
    
//    @Override  
//    public void addResourceHandlers(ResourceHandlerRegistry registry) {  
//    	registry.addResourceHandler("/upload/img/**").addResourceLocations("file:path");
//    }

}
