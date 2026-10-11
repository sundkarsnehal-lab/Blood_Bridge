
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sundk
 */
public class Database {
    Connection cn=null;
    Statement st=null;
    
    String Connectdb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bridge","root","root");
            return ("Database Connected");
            
        }catch(Exception ex)
        {
            return (ex.toString());
            
        } 
    }
    String Insert(String sql)
    {
         try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return ("Record Inserted");
        }catch(Exception ex)
        {
            return(ex.toString());
        }
    }
    


String Update(String sql)
    {
         try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return ("Record Updated");
        }catch(Exception ex)
        {
            return(ex.toString());
        }   
    }
     
          String Delete(String sql)
    {
         try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return ("Record Deleted");
        }catch(Exception ex)
        {
            return(ex.toString());
        }   
    
    }
}
