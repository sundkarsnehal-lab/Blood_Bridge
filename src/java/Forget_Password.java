/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sundk
 */
public class Forget_Password extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
      
       String email=req.getParameter("txt_email");
       String Npassword=req.getParameter("txt_Npassword");
       String Cpassword=req.getParameter("txt_Cpassword");
        
       
       out.println(email);
       out.println(Npassword);
       out.println(Cpassword);
      
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       
    }
    
    }
    

