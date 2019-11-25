//package com.greenright.interceptor;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import org.springframework.web.servlet.HandlerInterceptor;
//
//public class LoginCheckInterceptor implements HandlerInterceptor {
//  @Override
//  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//      throws Exception {
//    if(request.getSession().getAttribute("loginUser") == null) {
//      response.sendRedirect("/greenright/auth/form");
//    }
//    return true;
//  }
//}
