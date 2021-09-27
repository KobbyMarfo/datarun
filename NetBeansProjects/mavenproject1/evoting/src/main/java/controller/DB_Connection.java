
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import util.Constants;


public class DB_Connection {

    public Connection getConnection(){
        
        Connection connection = null;

        try{
            
            Class.forName(Constants.LOCAL_DB_DRIVER);
            connection = DriverManager.getConnection(Constants.LOCAL_DB_PATH,Constants.LOCAL_DB_USERNAME,Constants.LOCAL_DB_PASSWORD);
            
            
            //Class.forName(Constants.DB_DRIVER);
            //connection = DriverManager.getConnection(Constants.DB_PATH);

        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return connection;
    }
 
    public static void main(String[] args){
        DB_Connection db = new DB_Connection();
        String response = db.getConnection().toString();
        System.out.println(response);
        
        }
}
