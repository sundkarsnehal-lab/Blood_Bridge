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
public class User_Sign_Up extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
       String name=req.getParameter("txt_name");
       String address=req.getParameter("txt_address");
       String password=req.getParameter("txt_password");
       String email=req.getParameter("txt_email");
       String contactno=req.getParameter("txt_contact_no");
       String BGroup=req.getParameter("txt_Blood_Group");
       String gender=req.getParameter("txt_gender");
       String event=req.getParameter("btn_Submit");
       out.println(name);
       out.println(address);
        out.println(contactno);
        out.println(email);
       out.println(password);
       out.println(BGroup);
       out.println(gender);
      
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       if(event.equals("Sign Up"))
           {
               String insert=db.Insert("insert into User_Sign_Up (Name,Address,contact_no,Email,Password,Blood_Group,Gender) values('"+name+"','"+address+"','"+contactno+"','"+email+"','"+password+"','"+BGroup+"','"+gender+"')");
               out.println(insert);

           }
       
       resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Login.jsp';");
        out.println("</script>");
       
       
    }
    
       
    }
 
