package controller.email;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class sendEmail extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String to = request.getParameter("to");
        String subject = request.getParameter("test");
        String message =  request.getParameter("test nha");
//        String user = request.getParameter("user");
//        String pass = request.getParameter("pass");
        	configEmail.send(to,subject, message);
        out.println("Mail send successfully");
    }   
}
