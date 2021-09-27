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
public class RequestVerification_1 extends HttpServlet {

    String id;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RequestVerification_1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RequestVerification_1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        id =  request.getParameter("id");
        
        Connection conn = new DB_Connection().getConnection();
        String name = "";
        String val = "0";
        try{
            
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM validation where voter_id=?");
            ps.setString(1, id);
            ResultSet result=ps.executeQuery();  
            while(result.next()){
                name = result.getString(2);
                val = result.getString(3);
            }
            
            //System.out.println("Validation: "+val);
     
            if(val.equals("1")){
               System.out.println("Verified");
               response.sendRedirect("pres-voting.jsp?id="+id+"&name="+name);
            }else{
                response.sendRedirect("cant-vote.jsp?id="+id);
                System.out.println("cant-vote.jsp.jsp?id="+id);
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
