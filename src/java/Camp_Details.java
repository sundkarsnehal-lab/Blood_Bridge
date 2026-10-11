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
public class Camp_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
           String Id=req.getParameter("txt_Camp_id");
       String Cname=req.getParameter("txt_CName");
       String Oname=req.getParameter("txt_OName");
       String Address=req.getParameter("txt_Address");
       String Date=req.getParameter("txt_date");
       String Stime=req.getParameter("txt_STime");
       String Etime=req.getParameter("txt_ETime");
       String Email=req.getParameter("email");
       String contactno=req.getParameter("txt_Contact_no");
       String event=req.getParameter("btn_Submit");
        out.println(Id);
       out.println(Cname);
       out.println(Oname);
       out.println(Address);
       out.println(Date);
       out.println(Stime);
       out.println(Etime);
       out.println(Email);
       out.println(contactno);
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
        if(event.equals("Submit"))
           {
               String insert=db.Insert("insert into Camp_Details ( Camp_id,Camp_name,Organizer_name,Address,Date,Start_time,End_time,Email,Contact_no) values('"+Cname+"','"+Oname+"','"+Address+"','"+Date+"','"+Stime+"','"+Etime+"','"+Email+"','"+contactno+"','"+Id+"')");
               out.println(insert);

       
            
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Camp_Details.jsp';");
        out.println("</script>");
           }
        if(event.equals("Update"))
           {
               String update=db.Update("update Camp_Details set Camp_name='"+Cname+"',Organizer_name='"+Oname+"',Address='"+Address+"',Date='"+Date+"',Start_time='"+Stime+"',End_time='"+Etime+"',Email='"+Email+"',Contact_no='"+contactno+"' where Camp_id="+Id+" ");
               out.println(update);
           
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='Camp_List.jsp';");
        out.println("</script>");
           }
        if(event.equals("Delete"))
           {
               String delete=db.Delete("delete from Camp_Details where Camp_id='"+Id+"' ");
               out.println(delete);
           
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='Camp_List.jsp';");
        out.println("</script>");
           }
    }
    

}
     