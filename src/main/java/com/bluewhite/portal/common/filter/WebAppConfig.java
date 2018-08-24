package com.bluewhite.portal.common.filter;

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
	
	
    @Override  
    public void addInterceptors(InterceptorRegistry registry) {  
        //注册自定义拦截器，添加拦截路径和排除拦截路径  
        registry.addInterceptor(new InterceptorConfig())
        .addPathPatterns("/**")
        .excludePathPatterns("/view/**","/","/userLogin","/static/**","/upload/**");
    }
    
    @Override  
    public void addResourceHandlers(ResourceHandlerRegistry registry) {  
    	/*
         * 说明：增加虚拟路径(经过测试：在此处配置的虚拟路径，用springboot内置的tomcat时有效，
         * 用外部的tomcat也有效;所以用到外部的tomcat时不需在tomcat/config下的相应文件配置虚拟路径了,阿里云linux也没问题)
         */
    	registry.addResourceHandler("/upload/img/**").addResourceLocations("file:D:/upload/img/");
    }

}
