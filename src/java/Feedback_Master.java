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
public class Feedback_Master extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
       String name=req.getParameter("txt_name");
       String email=req.getParameter("txt_email");
       String BGroup=req.getParameter("txt_Blood_Group");
       String rating=req.getParameter("txt_rating");
       String feedback=req.getParameter("txt_feedback");
       String event=req.getParameter("btn_submit");
       
       out.println(name);
       out.println(email);
       out.println(BGroup);
       out.println(rating);
       out.println(feedback);
      
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       if(event.equals("Feedback"))
           {
               String insert=db.Insert("insert into Feedback_Master (name,Email,Blood_Group,Ratings,Feedback) values('"+name+"','"+email+"','"+BGroup+"','"+rating+"','"+feedback+"')");
               out.println(insert);

           }
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Feedback_Master.jsp';");
        out.println("</script>");

    }
    
    }
    

