//package pl.danielzurek.filter;
//
//import org.springframework.web.filter.OncePerRequestFilter;
//import pl.danielzurek.entity.User;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//@WebFilter(description = "Check if user is logged in and if not then redirect", urlPatterns = {"/*"})
//public class LoggedInCheckFilter extends OncePerRequestFilter {
//    @Override
//    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
//        final String url = request.getRequestURL().toString();
//        if (allowedToEveryone(url)) {
//            filterChain.doFilter(request, response);
//        } else {
//            HttpSession session = request.getSession();
//            User user = (User) session.getAttribute("loggedInUser");
//            if (user == null) {
//                response.sendRedirect(request.getContextPath() + "/user/login");
//            } else {
//                filterChain.doFilter(request, response);
//            }
//        }
//    }
//    private boolean allowedToEveryone(String url) {
//        return url.endsWith("/user/register") ||
//                url.endsWith("/user/login") ||
//                url.endsWith(".css") ||
//                url.endsWith(".jpg");
//    }
//}
//
//
