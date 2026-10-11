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
public class Inventory_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       String Bgroup=req.getParameter("txt_Blood_Group");
       String BType=req.getParameter("txt_Blood_Type");
       String quantity=req.getParameter("txt_quantity");
       String Bag=req.getParameter("txt_Bnumber");
       String Cdate=req.getParameter("txt_Cdate");
       String Edate=req.getParameter("txt_Edate");
       String status=req.getParameter("txt_Status");
       String Update=req.getParameter("txt_Update");
       String Location=req.getParameter("txt_location");
         String event=req.getParameter("btn_submit");
       
        out.println(quantity);
        out.println(Cdate);
        out.println(Edate);
        out.println(Update);
        out.println(Location);  
        out.println(Bag);
        out.println(status);
        out.println(Bgroup);
        out.println(BType);
      
    
        
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       if(event.equals("Submit"))
           {
               String insert=db.Insert("insert into Inventory_Details (Quantity,Collection_Date,Expiry_Date,Last_Update,Location,Bag_number,Status,Blood_Group,Blood_Type) values('"+quantity+"','"+Cdate+"','"+Edate+"','"+Update+"','"+Location+"','"+Bag+"','"+status+"','"+Bgroup+"','"+BType+"')");
               out.println(insert);

           
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Inventory_Details.jsp';");
        out.println("</script>");
           }
    }
    
    }
    

