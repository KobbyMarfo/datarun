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
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author apple
 */
public class Pres_Voting extends HttpServlet {

    String id;
    String cand;
    String name;
    
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
        try {
            id = request.getParameter("id");
            cand =  request.getParameter("optradio");
            name =  request.getParameter("name");
            
            Connection conn = new DB_Connection().getConnection();
            System.out.println(id+" - "+cand);
            
            PreparedStatement ps1 = conn.prepareStatement("Insert into presidential (voter_id,candidate_id,create_time) values (?,?,?)");
            ps1.setString(1, id);
            ps1.setString(2, cand);
            ps1.setString(3, new SimpleDateFormat("yyyy-MM-dd hh:ss:mm").format(new Date()));
            
            int result1 = ps1.executeUpdate();
            if(result1 != 0){
               System.out.println("Verified");
               response.sendRedirect("vice.jsp?id="+id+"&name="+name);
            }else{
                response.sendRedirect("failed1.jsp?id="+id);
                System.out.println("failed1.jsp?id="+id);
            }
            conn.close();
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Pres_Voting.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error Code: "+ex.getErrorCode());
            if(ex.getErrorCode()==1062){
                response.sendRedirect("alvoted.jsp?id="+id);
            }
            if(ex.getErrorCode()==1452){
                response.sendRedirect("failed1.jsp?id="+id);
            }
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
