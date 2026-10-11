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
public class Certification_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       String Id=req.getParameter("txt_id");
       String Donor=req.getParameter("txt_name");
       String Bgroup=req.getParameter("txt_Blood_Group");
       String BType=req.getParameter("txt_Blood_Type");
       String Ddate=req.getParameter("txt_Ddate");
       String Idate=req.getParameter("txt_Idate");
       String Vcode=req.getParameter("txt_Code");
       String status=req.getParameter("txt_Status");
       String Contact=req.getParameter("txt_contact_no");
       String Issued=req.getParameter("txt_Issued");
       String event=req.getParameter("btn_Submit");
       
       out.println(Id);
       out.println(Donor);
       out.println(Bgroup);
        out.println(BType);
       out.println(Ddate);
      out.println(Idate);
      out.println(Vcode);
      out.println(status);
      out.println(Contact);
       out.println(Issued);
       
      
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
        if(event.equals("Submit"))
           {
               String insert=db.Insert("insert into Certification_Details (Donor_name,Blood_Group,Donation_Date,Blood_Type,Issued_By,Issue_Date,Verification_code,Contact_no,Certification_Status) values('"+Donor+"','"+Bgroup+"','"+Ddate+"','"+BType+"','"+Issued+"','"+Idate+"','"+Vcode+"','"+Contact+"','"+status+"')");
               out.println(insert);

           
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Certification_List.jsp';");
        out.println("</script>");
    }
        if(event.equals("Update"))
           {
               String update=db.Update("update Certification_Details set Donor_name='"+Donor+"',Blood_Group='"+Bgroup+"',Donation_Date='"+Ddate+"',Blood_Type='"+BType+"',Blood_Group='"+Bgroup+"',Blood_Type='"+BType+"',Issued_By='"+Issued+"',Issue_Date='"+Idate+"',Verification_Code='"+Vcode+"',Contact_no='"+Contact+"',Certification_Status='"+status+"' where Certificate_id="+Id+" ");
               out.println(update);
           
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='Certification_List.jsp';");
        out.println("</script>");
           }
        
        if(event.equals("Delete"))
           {
               String delete=db.Delete("delete from Certification_Details where Certificate_id='"+Id+"' ");
               out.println(delete);
           
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='Certification_List.jsp';");
        out.println("</script>");
           }
       
    }
    

}