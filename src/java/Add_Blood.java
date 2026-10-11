
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
public class Add_Blood extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       String Id=req.getParameter("txt_Blood_id");
       String BGroup=req.getParameter("txt_Blood_Group");
       String Image=req.getParameter("txt_Image");
       String Quantity=req.getParameter("txt_Quantity");
       String Price=req.getParameter("txt_Price");
       String CDate=req.getParameter("txt_Cdate");
       String EDate=req.getParameter("txt_Edate");
       String Status=req.getParameter("txt_Status");
       String event=req.getParameter("btn_Submit");
       
        out.println(Id);
       out.println(BGroup);
       out.println(Image);
       out.println(Quantity);
       out.println(Price);
       out.println(CDate);
       out.println(EDate);
       out.println(Status);
       
       
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       if(event.equals("Add Blood"))
           {
               String insert=db.Insert("insert into Add_Blood (Blood_Group,Blood_Image,Quantity,Price,Collection_Date,Expiry_Date,Status) values('"+BGroup+"','img1/"+Image+"','"+Quantity+"','"+Price+"','"+CDate+"','"+EDate+"','"+Status+"')");
               out.println(insert);
               resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Add_Blood.jsp';");
        out.println("</script>");
           }
       if(event.equals("Update"))
           {
               String update=db.Update("update add_blood set Blood_Group='"+BGroup+"',Blood_Image='"+Image+"',Quantity='"+Quantity+"',Price='"+Price+"',Collection_Date='"+CDate+"',Expiry_Date='"+EDate+"',Status='"+Status+"' where Blood_id="+Id+" ");
               out.println(update);
           
               resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='Add_Blood_List.jsp';");
        out.println("</script>");
           }
         if(event.equals("Delete"))
           {
               String delete=db.Delete("delete from add_blood where Blood_id='"+Id+"' ");
               out.println(delete);
           
                 resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='Add_Blood.jsp';");
        out.println("</script>");
        
           }
    }
       
    }
    
