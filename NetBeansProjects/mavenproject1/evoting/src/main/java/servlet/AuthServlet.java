/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import model.User;
import controller.UserController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.WebUserProfile;
import org.json.JSONObject;


/**
 *
 * @author apple
 */
public class AuthServlet extends HttpServlet {

        String username;
        String password;
        User user;
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet AuthServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AuthServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        username = request.getParameter("username");
        password = request.getParameter("password");
        user = new User(username,password);
        UserController controller = new UserController();
        
        user = controller.getAuthentication(username, password);
        
        try{
        if(user.getUsername().equals(username) && user.getPassword().equals(password)){
            System.out.println("Success");
            WebUserProfile.FULLNAME = user.getName();
            WebUserProfile.USERNAME = user.getUsername();
            WebUserProfile.ROLE = user.getRole();
            response.sendRedirect("official.jsp");
        }else{
           System.out.println("Failed");
            response.sendRedirect("index.jsp");
        }
        }catch(Exception e){
            System.out.println("Failed");
            response.sendRedirect("index.jsp");
        }
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
