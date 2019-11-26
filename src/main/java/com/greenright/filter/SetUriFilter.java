package com.greenright.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class SetUriFilter implements Filter {

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
      throws IOException, ServletException {
    HttpServletRequest req = (HttpServletRequest) request;
    String servletPath = req.getRequestURI();
    String path = servletPath.substring(servletPath.lastIndexOf("/") + 1);
    request.setAttribute("title", "GreenRight - " + path);

    chain.doFilter(request, response);
  }
}
