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

@WebServlet(urlPatterns = "/register")
public class register extends HttpServlet {
	UserService userService = new UserServiceImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		HttpSession session = req.getSession(false);
//		if (session != null && session.getAttribute("account") != null) {
//			resp.sendRedirect(req.getContextPath()+ "/waiting");
//			return;
//		}
//		// Check cookie
//		Cookie[] cookies = req.getCookies();
//		if (cookies != null) {
//			for (Cookie cookie : cookies) {
//				if (cookie.getName().equals("email")) {
//					session = req.getSession(true);
//					session.setAttribute("email", cookie.getValue());
//					resp.sendRedirect(req.getContextPath()+ "/");
//					return;
//				}
//			}
//		}
//
		req.getRequestDispatcher("view/client/register_account.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  String email = req.getParameter("email");
	      
	        
	        String password = req.getParameter("password");
	        String repeat_password = req.getParameter("repeat_password");
	        String phoneNumber = req.getParameter("phoneNumber");
	        System.out.println(phoneNumber);
	        String givenName=req.getParameter("givenName");
	        String familyName=req.getParameter("familyName");
	        System.out.println(password);
	        System.out.println(repeat_password);
	        boolean isRememberMe = false;
	        String remember = req.getParameter("remember");
	        
	        if("on".equals(remember)){
	            isRememberMe = true;
	        }
	        String alertMsg="";
	        if(!password.equalsIgnoreCase(repeat_password)) {
	        	System.out.print("NOT EQUAL");
	        	 resp.sendRedirect(req.getContextPath()+"/register");
	        }else {
	        	 User newuser=new User();
	 	        newuser.setEmail(email);
	 	        newuser.setFamilyName(familyName);
	 	        newuser.setGivenName(givenName);
	 	        newuser.setPassword(password);
	 	        newuser.setPhoneNumber(phoneNumber);
	 	        boolean exitUser=userService.checkExistEmail(email);
	 	        if(exitUser==true) {
	 	        	System.out.print("exit");
	 	        	resp.sendRedirect(req.getContextPath()+"/register");
	 	        }else {
	 	        	 User user = userService.register(newuser);
	 	 	        System.out.print(user);
	 	 	        
	 	 	        if(user!=null){
	 	 	            HttpSession session = req.getSession(true);
	 	 	            session.setAttribute("account", user);

	 	 	            if(isRememberMe){
	 	 	                saveRemeberMe(resp, email);
	 	 	            }
	 	 	           resp.sendRedirect(req.getContextPath()+"/");
	 	 	            //req.getRequestDispatcher("/view/client/searchResult.jsp").forward(req, resp);
	 	 	            
	 	 	        }else{
	 	 	            alertMsg = "Register not successful";
	 	 	            req.setAttribute("alert", alertMsg);
	 	 	            System.out.print("not success");
//	 	 	            req.getRequestDispatcher("/view/client/register.jsp").forward(req, resp);
	 	 	            resp.sendRedirect(req.getContextPath()+"/register");
	 	 	        }
	 	        }
	 	       
	        }
//	        if(email.isEmpty() || password.isEmpty()){
//	            alertMsg = "Email and password can't be empty!";
//	            req.setAttribute("alert", alertMsg);
//	            req.getRequestDispatcher("/view/client/login.jsp").forward(req, resp);
//	            return;
//	        }
	      
	        
	       
	    }
	    
	    private void saveRemeberMe(HttpServletResponse response, String email){
	        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, email);
	        cookie.setMaxAge(30*60);
	        response.addCookie(cookie);
	    }
}
