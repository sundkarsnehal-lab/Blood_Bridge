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
public class Delivery_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String Bgroup = req.getParameter("txt_Blood_Group");
        String vehicle = req.getParameter("txt_vehicle_no");

        String DAddress = req.getParameter("txt_Address");
        String Name = req.getParameter("txt_name");
        String Time = req.getParameter("txt_time");
        String Date = req.getParameter("txt_date");
        String Status = req.getParameter("txt_status");
        String event = req.getParameter("btn_submit");
        String req_id = req.getParameter("rqu_id");

        out.println(Bgroup);
        out.println(vehicle);
        out.println(DAddress);
        out.println(Name);
        out.println(Date);
        out.println(Time);
        out.println(Status);
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);

        if (event.equals("Assign")) {
            String insert = db.Insert("insert into Delivery_Details (Blood_Group,Vehicle_no,Delivery_Address,Name,Delivery_date,Delivery_Time,Status) values('" + Bgroup + "','" + vehicle + "','" + DAddress + "','" + Name + "','" + Date + "','" + Time + "','" + Status + "')");
            out.println(insert);
            db.Insert("update request_details set Status='Deliver' where Request_id='"+req_id+"'");
            resp.sendRedirect("Request_List.jsp");
        }
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Delivery_Details.jsp';");
        out.println("</script>");

    }

}
