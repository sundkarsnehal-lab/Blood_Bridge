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
import javax.servlet.http.HttpSession;

/**
 *
 * @author sundk
 */
public class Donor_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String Id = req.getParameter("txt_id");
        String name = req.getParameter("txt_name");
        String Address = req.getParameter("txt_Address");
        String Age = req.getParameter("txt_age");
        String weight = req.getParameter("txt_weight");
        String BGroup = req.getParameter("txt_Blood_Group");
        String BType = req.getParameter("txt_Blood_Type");
        String Gender = req.getParameter("txt_gender");
        String quantity = req.getParameter("txt_quantity");
        String contact = req.getParameter("txt_contact_no");
        String Ddonation = req.getParameter("txt_Ddate");
        String Ldonation = req.getParameter("txt_Ldate");
        String Medical = req.getParameter("txt_medical");
        String event = req.getParameter("btn_Submit");

        out.println(Id);
        out.println(name);
        out.println(Age);
        out.println(weight);
        out.println(Gender);
        out.println(BGroup);
        out.println(BType);
        out.println(contact);
        out.println(Ddonation);
        out.println(Ldonation);
        out.println(Address);
        out.println(quantity);
        out.println(Medical);

        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        HttpSession session = req.getSession();
        if (event.equals("Submit")) {
            String insert = db.Insert("insert into Donor_Details (Name,Age,weight,Gender,Blood_Group,Blood_type,Contact_no,Donation_Date,Last_Donation_Date,Address,Quantity,Medical_History) values('" + name + "','" + Age + "','" + weight + "','" + Gender + "','" + BGroup + "','" + BType + "','" + contact + "','" + Ddonation + "','" + Ldonation + "','" + Address + "','" + quantity + "','" + Medical + "')");
            out.println(insert);
            session.setAttribute("name", name);
            session.setAttribute("blood_group", BGroup);

            session.setAttribute("blood_type", BType);
            session.setAttribute("contact", contact);
            session.setAttribute("date", Ddonation);

            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Records Inserted');");
            out.println("location='Certification_Details.jsp';");
            out.println("</script>");
        }

        if (event.equals("Update")) {
            String update = db.Update("update Donor_Details set Name='" + name + "',Age='" + Age + "',Weight='" + weight + "',Gender='" + Gender + "',Blood_Group='" + BGroup + "',Blood_Type='" + BType + "',Contact_no='" + contact + "',Donation_Date='" + Ddonation + "',Last_Donation_Date='" + Ldonation + "',Address='" + Address + "',Quantity='" + quantity + "',Medical_History='" + Medical + "' where Donor_id=" + Id + " ");
            out.println(update);
        }
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Donor_List.jsp';");
        out.println("</script>");

        if (event.equals("Delete")) {
            String delete = db.Delete("delete from Donor_Details where Donor_id='" + Id + "' ");
            out.println(delete);
        }
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='Donor_List.jsp';");
        out.println("</script>");

    }

}
