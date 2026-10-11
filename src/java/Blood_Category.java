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
public class Blood_Category extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
     PrintWriter out=resp.getWriter();
     String Id=req.getParameter("txt_Id");
       String BloodGroup=req.getParameter("txt_Blood_Group");
       String Image=req.getParameter("txt_Image");
       String BloodType=req.getParameter("txt_Blood_Type");
        String Description=req.getParameter("txt_Description");
       String Status=req.getParameter("txt_Status");
        String event=req.getParameter("btn_Submit");
        
       out.println(Id); 
       out.println(BloodGroup);
       out.println(Image);
       out.println(BloodType);
       out.println(Description);
       out.println(Status);
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       if(event.equals("Submit"))
           {
               String insert=db.Insert("insert into Blood_Category (Blood_Group,Blood_Image,Blood_Type,Description,Status) values('"+BloodGroup+"','img1"+Image+"','"+BloodType+"','"+Description+"','"+Status+"')");
               out.println(insert);
            
               resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Blood_Category_List.jsp';");
        out.println("</script>");
           }
           if(event.equals("Update"))
           {
               String update=db.Update("update Blood_Category set Blood_Group='"+BloodGroup+"',Blood_Image='"+Image+"',Blood_Type='"+BloodType+"',Description='"+Description+"',Status='"+Status+"' where Category_id="+Id+" ");
               out.println(update);
           
                   resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='Blood_Category_List.jsp';");
        out.println("</script>");
           }
       if(event.equals("Delete"))
           {
               String delete=db.Delete("delete from Blood_Category where Category_id='"+Id+"' ");
               out.println(delete);
           
                resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='Blood_Category_List.jsp';");
        out.println("</script>");
           }
            }
}
    

