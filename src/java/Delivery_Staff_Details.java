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
public class Delivery_Staff_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
       String Id=req.getParameter("txt_id");
       String name=req.getParameter("txt_name");
       String contactno=req.getParameter("txt_contact_no");
       String Age=req.getParameter("txt_age");
       String Email=req.getParameter("txt_email");
       String Address=req.getParameter("txt_Address");
       String Area=req.getParameter("txt_Area");
       String Deliveries=req.getParameter("txt_Deliveries");
       String vehicle=req.getParameter("txt_vehicle_no");
       String status=req.getParameter("txt_Status");
         String event=req.getParameter("btn_Submit");
       
        out.println(Id);  
       out.println(name);
       out.println(contactno);
       out.println(Age);
       out.println(Email);
       out.println(Address);
       out.println(Area);
       out.println(Deliveries);
       out.println(vehicle);
       out.println(status);
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       if(event.equals("Submit"))
           {
               String insert=db.Insert("insert into Delivery_Staff_Details ( Staff_id,Name,Contact_no,Age,Email,Address,Assigned_Area,Total_Deliveries,Vehicle_no,Status) values('"+Id+"','"+name+"','"+contactno+"','"+Age+"','"+Email+"','"+Address+"','"+Area+"','"+Deliveries+"','"+vehicle+"','"+status+"')");
               out.println(insert);

           
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Delivery_Staff_List.jsp';");
        out.println("</script>");
           }
        if(event.equals("Update"))
           {
               String update=db.Update("update Delivery_Staff_Details set Name='"+name+"',Contact_no='"+contactno+"',Age='"+Age+"',Email='"+Email+"',Address='"+Address+"',Assigned_Area='"+Area+"',Total_Deliveries='"+Deliveries+"',Vehicle_no='"+vehicle+"',Status='"+status+"' where Staff_id="+Id+" ");
               out.println(update);
           
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='Delivery_Staff_List.jsp';");
        out.println("</script>");
           }
        
        if(event.equals("Delete"))
           {
               String delete=db.Delete("delete from Delivery_Staff_Details where Staff_id='"+Id+"' ");
               out.println(delete);
           
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='Delivery_Staff_List.jsp';");
        out.println("</script>");
           }
    }
    
      
}