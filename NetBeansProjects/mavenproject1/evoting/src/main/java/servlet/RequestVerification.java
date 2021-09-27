/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.DB_Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author apple
 */
public class RequestVerification extends HttpServlet {

    String id;
    String user;
    String name = "";
    String by = "";
    String time = "";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        id =  request.getParameter("id");
        user =  request.getParameter("admin");
        
        Connection conn = new DB_Connection().getConnection();
        
        try{
            
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM voter where voter_id=?");
            ps.setString(1, id);
            ResultSet result=ps.executeQuery();  
            while(result.next()){
                name = result.getString(2);
            }
            
            
            PreparedStatement ps1 = conn.prepareStatement("Insert into validation (voter_id,name,validation_status,username,create_time) values (?,?,?,?,?)"); 
            ps1.setString(1, id);
            ps1.setString(2, name);
            ps1.setString(3, "1");
            ps1.setString(4, "admin");
            
            ps1.setString(5, new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
            
            int result1 = ps1.executeUpdate();
            if(result1 != 0){
               System.out.println("Verified");
               response.sendRedirect("verified.jsp?id="+id+"&name="+name+"&by="+by+"&time="+time);
            }else{
                response.sendRedirect("failed.jsp?id="+id);
                System.out.println("failed.jsp?id="+id);
            }
            conn.close();
        }
        catch(SQLException e){
            //print error details to console
            System.out.println("Error Code: "+e.getErrorCode());
            System.out.println("Error Msg: "+e.getMessage());
            if(e.getErrorCode()==1062){
                response.sendRedirect("alverified.jsp?id="+id+"&name="+name);
            }
            if(e.getErrorCode()==1452){
                response.sendRedirect("failed.jsp?id="+id);
            }
            //Constants.ERROR_CODE = e.getErrorCode();
            //Constants.ERROR_MESSAGE = e.getMessage();
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
