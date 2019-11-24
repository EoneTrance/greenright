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
import javax.servlet.http.HttpSession;
import com.greenright.domain.Member;

public class AuthFilter implements Filter {

  String path[];
  String noRedirectPath[];

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    path = new String[] {"add", "update", "delete", "mypage"};
    noRedirectPath = new String[] {"add", "update", "delete", "auth"};
  }

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
      throws IOException, ServletException {
    HttpServletRequest req = (HttpServletRequest) request;
    HttpServletResponse res = (HttpServletResponse) response;
    HttpSession session = req.getSession();
    Member loginUser = (Member) session.getAttribute("loginUser");
    String servletPath = req.getRequestURI();

    if (req.getHeader("referer") != null && checkRedirectPath(req.getHeader("referer"))) {
      session.setAttribute("redirectURI", req.getHeader("referer"));
    } else if (req.getHeader("referer") == null || checkRedirectPath(req.getHeader("referer"))) {
      if (checkRedirectPath(servletPath)) {
        session.setAttribute("redirectURI", servletPath);
      }
    }

    for (String p : path) {
      if (servletPath.indexOf(p) != -1) {
        if (loginUser == null) {
          res.sendRedirect("/greenright/auth/form");
          return;
        } else {
          break;
        }
      }
    }
    chain.doFilter(request, response);
  }

  private boolean checkRedirectPath(String path) {
    for (String p : noRedirectPath) {
      if (path.indexOf(p) != -1) {
        return false;
      }
    }
    return true;
  }
}
