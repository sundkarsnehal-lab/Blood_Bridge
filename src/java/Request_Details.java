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
import javax.servlet.http.HttpSession;


/**
 *
 * @author sundk
 */
public class Request_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        PrintWriter out=resp.getWriter();
        String name=req.getParameter("txt_name");
        String Address=req.getParameter("txt_Address");
        String Gender=req.getParameter("txt_gender");
        String Age=req.getParameter("txt_age");
        String BGroup=req.getParameter("txt_Blood_Group");
        String units=req.getParameter("txt_units");
        String BType=req.getParameter("txt_Blood_Type");
        String Rdate=req.getParameter("txt_date");
         String price=req.getParameter("total_price");
        String contact=req.getParameter("txt_Contact_no");
       
         String event=req.getParameter("btn_Submit");
       String req_id=req.getParameter("rqu_id");
       out.println(name);
       out.println(Gender);
        out.println(Age);
        out.println(BGroup);
        out.println(units);
       out.println(BType);
       out.println(Rdate);
       out.println(contact);
       out.println(Address);
        
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       
        HttpSession session=req.getSession();
        
       if(event.equals("Submit"))
           {
               String insert=db.Insert("insert into Request_Details (Name,Gender,Age,Blood_Group,units,Blood_type,Request_date,contact_no,Address,status) values('"+name+"','"+Gender+"','"+Age+"','"+BGroup+"','"+units+"','"+BType+"','"+Rdate+"','"+contact+"','"+Address+"','Pending')");
               out.println(insert);
               session.setAttribute("price", price);
               resp.sendRedirect("Master_Transaction.jsp");
               

           }     
       
         if(event.equals("Approved"))
           {
               String insert=db.Insert("update Request_Details set status='Approved' where Request_id='"+req_id+"'");
               out.println(insert);
               
               resp.sendRedirect("Request_List.jsp");

           }
    }
    
    
    
    
    }
   

