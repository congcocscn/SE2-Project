package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Util.Constant;
import model.User;
import service.UserService;
import service.impl.UserServiceImpl;

@WebServlet(urlPatterns = "/login")

public class Login extends HttpServlet{
	
	UserService userService = new UserServiceImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		if (session != null && session.getAttribute("account") != null) {
			resp.sendRedirect(req.getContextPath()+ "/AirlineReservationSystem/");
			return;
		}
		// Check cookie
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("email")) {
					session = req.getSession(true);
					session.setAttribute("email", cookie.getValue());
					resp.sendRedirect(req.getContextPath()+ "/AirlineReservationSystem/");
					return;
				}
			}
		}

		req.getRequestDispatcher("view/client/login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  String email = req.getParameter("email");
	        System.out.println(email);
	        
	        String password = req.getParameter("password");
	        System.out.println(password);
	        
	        boolean isRememberMe = false;
	        String remember = req.getParameter("remember");
	        
	        if("on".equals(remember)){
	            isRememberMe = true;
	        }
	        String alertMsg="";
	        
	        if(email.isEmpty() || password.isEmpty()){
	            alertMsg = "Email and password can't be empty!";
	            req.setAttribute("alert", alertMsg);
	            req.getRequestDispatcher("/view/client/login.jsp").forward(req, resp);
	            return;
	        }
	      
	        
	        User user = userService.login(email, password);
	        
	        
	        if(user!=null){
	            HttpSession session = req.getSession(true);
	            session.setAttribute("account", user);
	            session.setAttribute("name", user.getFamilyName());

	            if(isRememberMe){
	                saveRemeberMe(resp, email);
	            }
	           
	            resp.sendRedirect(req.getContextPath()+"/");
	        }else{
	            alertMsg = "Email or password isn't correct";
	            req.setAttribute("alert", alertMsg);
	            req.getRequestDispatcher("/view/client/login.jsp").forward(req, resp);
	        }
	    }
	    
	    private void saveRemeberMe(HttpServletResponse response, String email){
	        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, email);
	        cookie.setMaxAge(30*60);
	        response.addCookie(cookie);
	    }

}
