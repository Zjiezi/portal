package com.bluewhite.portal.common.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class InterceptorConfig  implements HandlerInterceptor{  
	  
  
    /** 
     * 进入controller层之前拦截请求 
     * @param httpServletRequest 
     * @param httpServletResponse 
     * @param o 
     * @return 
     * @throws Exception 
     */  
    @Override  
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {  
    	
        HttpSession session = httpServletRequest.getSession();  
        if(!StringUtils.isEmpty(session.getAttribute("user"))){  
            return true;  
        }else{  
        	httpServletResponse.sendRedirect("/");
            return false;  
        }  
    }  
  
// 处理请求完成后视图渲染之前的处理操作;  
    @Override  
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {  
    }  
  
//  视图渲染之后的操作;  
    @Override  
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {  
    }  
    
    
    
}  
