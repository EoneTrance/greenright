package com.greenright.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthFilter implements Filter{

  String path[];
  
  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    path = new String[] {"update", "delete"};
  }
  
  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
      throws IOException, ServletException {
    HttpServletRequest req = (HttpServletRequest)request;
    HttpServletResponse res = (HttpServletResponse)response;
    String servletPath = req.getRequestURI();
    
    for (String p : path) {
      if (servletPath.endsWith(p)) {
        if (req.getSession().getAttribute("loginUser") == null) {
          res.sendRedirect("../greenright/auth/form");
          return;
        } else {
          break;
        }
      }
    }
    chain.doFilter(request, response);
  }
}
