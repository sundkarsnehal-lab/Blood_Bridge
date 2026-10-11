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
public class Add_Receptionist extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       String name=req.getParameter("txt_name");
       String Password=req.getParameter("txt_pass");
        String Email=req.getParameter("txt_email");
       String Contactno=req.getParameter("txt_contact_no");
       String Gender=req.getParameter("txt_gender");
       String Address=req.getParameter("txt_address");
       String event=req.getParameter("btn_Submit");
       out.println(name);
       out.println(Password);
       out.println(Email);
       out.println(Contactno);
       out.println(Gender);
       out.println(Address);
       
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       if(event.equals("Submit"))
           {
               String insert=db.Insert("insert into Add_Receptionist (name,Password,Email,Contact_no,Gender,Address) values('"+name+"','"+Password+"','"+Email+"','"+Contactno+"','"+Gender+"','"+Address+"')");
               out.println(insert);
             resp.setContentType("text/html;charset=UTF-8");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Records Inserted');");
             out.println("location='Add_Receptionist.jsp';");
             out.println("</script>");
       
            }

    }
    }
    

