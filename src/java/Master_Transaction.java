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
public class Master_Transaction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
      
       String Name=req.getParameter("txt_name");
       String Email=req.getParameter("txt_email");
       String Amount=req.getParameter("txt_amount");
     
       String Pmethod=req.getParameter("txt_method");
       String Pstatus=req.getParameter("txt_status");
       String Pdate=req.getParameter("txt_date");
        String payment=req.getParameter("payment");
         String event=req.getParameter("btn_submit");

       
       out.println(Name);
       out.println(Email);
       out.println(Amount);
       out.println(Pmethod);
       out.println(Pstatus);
       out.println(Pdate);
       
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       
       if(event.equals("Pay"))
           {
               String insert=db.Insert("insert into Master_Transaction (Name,Email,Amount,Payment_method,Payment_status,Payment_date) values('"+Name+"','"+Email+"','"+Amount+"','"+Pmethod+"','"+Pstatus+"','"+Pdate+"')");
               out.println(insert);
               
               if(payment.equals("UPI"))
               {
                   resp.sendRedirect("Phone_pay.jsp");
               }
               else
               {
                   resp.sendRedirect("Payment_Successful.jsp");
               }
              

           }
    }
    
    }
    

