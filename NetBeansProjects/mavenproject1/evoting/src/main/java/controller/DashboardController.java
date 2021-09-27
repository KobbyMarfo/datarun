/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.json.Json;
import model.User;

/**
 *
 * @author apple
 */
public class DashboardController {
    
    public int getPresidentialResult(String candid){
        Connection conn = new DB_Connection().getConnection();
        
        User model = new User();
        int count = 0;
        try{
            //Fetch record
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM presidential where candidate_id=?"); 
            ps.setString(1, candid);
            
            
            ResultSet result=ps.executeQuery();  
            while(result.next()){  
            
                count += 1;
            
                
            } 
            conn.close();
        }
        catch(SQLException e){
            //print error details to console
            System.out.println("Error Code fff: "+e.getErrorCode());
            System.out.println("Error Msg: "+e.getMessage());
            
            //Constants.ERROR_CODE = e.getErrorCode();
            //Constants.ERROR_MESSAGE = e.getMessage();
        }
        return count;
    }
    
    public int getPresidentialTotal(){
        Connection conn = new DB_Connection().getConnection();
        
        User model = new User();
        int count = 0;
        try{
            //Fetch record
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM presidential"); 
            
            
            ResultSet result=ps.executeQuery();  
            while(result.next()){  
            
                count += 1;
            
                
            } 
            conn.close();
        }
        catch(SQLException e){
            //print error details to console
            System.out.println("Error Code fff: "+e.getErrorCode());
            System.out.println("Error Msg: "+e.getMessage());
            
            //Constants.ERROR_CODE = e.getErrorCode();
            //Constants.ERROR_MESSAGE = e.getMessage();
        }
        return count;
    }
    
    public int getVicePresidentialTotal(){
        Connection conn = new DB_Connection().getConnection();
        
        User model = new User();
        int count = 0;
        try{
            //Fetch record
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM vice_presidential"); 
            
            
            ResultSet result=ps.executeQuery();  
            while(result.next()){  
            
                count += 1;
            
                
            } 
            conn.close();
        }
        catch(SQLException e){
            //print error details to console
            System.out.println("Error Code fff: "+e.getErrorCode());
            System.out.println("Error Msg: "+e.getMessage());
            
            //Constants.ERROR_CODE = e.getErrorCode();
            //Constants.ERROR_MESSAGE = e.getMessage();
        }
        return count;
    }
    
    
    
    public int getVicePresidentialResult(String candid){
        Connection conn = new DB_Connection().getConnection();
        
        User model = new User();
        int count = 0;
        try{
            //Fetch record
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM vice_presidential where candidate_id=?"); 
            ps.setString(1, candid);
            
            
            ResultSet result=ps.executeQuery();  
            while(result.next()){  
            
                count += 1;
            
                
            } 
            conn.close();
        }
        catch(SQLException e){
            //print error details to console
            System.out.println("Error Code fff: "+e.getErrorCode());
            System.out.println("Error Msg: "+e.getMessage());
            
            //Constants.ERROR_CODE = e.getErrorCode();
            //Constants.ERROR_MESSAGE = e.getMessage();
        }
        return count;
    }
    
    
    public int getTotalRegisteredVoters(){
        Connection conn = new DB_Connection().getConnection();
        
        User model = new User();
        int count = 0;
        try{
            //Fetch record
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM voters"); 
            
            
            
            ResultSet result=ps.executeQuery();  
            while(result.next()){  
            
                count += 1;
            
                
            } 
            conn.close();
        }
        catch(SQLException e){
            //print error details to console
            System.out.println("Error Code fff: "+e.getErrorCode());
            System.out.println("Error Msg: "+e.getMessage());
            
            //Constants.ERROR_CODE = e.getErrorCode();
            //Constants.ERROR_MESSAGE = e.getMessage();
        }
        return count;
    }
    
    public int getTotalTurnout(){
        Connection conn = new DB_Connection().getConnection();
        
        User model = new User();
        int count = 0;
        try{
            //Fetch record
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM validation"); 
            
            
            
            ResultSet result=ps.executeQuery();  
            while(result.next()){  
            
                count += 1;
            
                
            } 
            conn.close();
        }
        catch(SQLException e){
            //print error details to console
            System.out.println("Error Code fff: "+e.getErrorCode());
            System.out.println("Error Msg: "+e.getMessage());
            
            //Constants.ERROR_CODE = e.getErrorCode();
            //Constants.ERROR_MESSAGE = e.getMessage();
        }
        return count;
    }
    
    
    public String authUser(String json){
            try{
                URL url = new URL(WebServiceParam.AUTH_USER_LOGIN);
                HttpURLConnection con = (HttpURLConnection) url.openConnection();
                con.setRequestMethod("POST");
                con.setRequestProperty("Content-Type", "application/json");
                con.setDoOutput(true);

                this.sendData(con, json);

                if(con.getInputStream()!=null)
                return this.read(con.getInputStream());
            }catch(Exception e){
                System.out.println(e.getLocalizedMessage());
                return null;
            }    
            return null;
    }
    
    protected void sendData(HttpURLConnection con, String data) throws IOException {
        DataOutputStream wr = null;
        try {
            wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(data);
            wr.flush();
            wr.close();
        } catch(IOException exception) {
            throw exception;
        } finally {
            this.closeQuietly(wr);
        }
    }

    private String read(InputStream is) throws IOException {
        BufferedReader in = null;
        String inputLine;
        StringBuilder body;
        try {
            in = new BufferedReader(new InputStreamReader(is));

            body = new StringBuilder();

            while ((inputLine = in.readLine()) != null) {
                body.append(inputLine);
            }
            in.close();

            return body.toString();
        } catch(IOException ioe) {
            throw ioe;
        } finally {
            this.closeQuietly(in);
        }
    }

    protected void closeQuietly(Closeable closeable) {
        try {
            if( closeable != null ) {
                closeable.close();
            }
        } catch(IOException ex) {

        }
    }
    
    public static void main(String[] args){
        User u = new User("admin","admin","","","");
        Gson gson = new Gson();
        String str = gson.toJson(u);
        
        System.out.println("WS result: "+new DashboardController().authUser(str));
    }
    
}
