/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sundk
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();

        String email = req.getParameter("txt_email");
        String password = req.getParameter("txt_password");
        String Role = req.getParameter("txt_role");
        String event = req.getParameter("btn_Submit");

        out.println(email);
        out.println(password);
        out.println(Role);
        if (event.equals("Login")) {
            if (Role.equals("User")) {

                Connection cn = null;
                Statement st = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bridge", "root", "root");
                    st = cn.createStatement();
                    String sql = "select * from user_sign_up where Email='" + email.toString() + "'and Password='" + password.toString() + "'";
                    ResultSet rs = st.executeQuery(sql);
                    if (rs.next()) {

                        session.setAttribute("name", rs.getString("Name"));
                        session.setAttribute("contactno", rs.getString("contact_no"));
                        session.setAttribute("address", rs.getString("Address"));
                         session.setAttribute("gender", rs.getString("gender"));
                          session.setAttribute("email", rs.getString("Email"));
                        session.setAttribute("BGroup", rs.getString("Blood_Group"));
                        resp.sendRedirect("view_Blood.jsp");
                    } else {
                        out.println("Login Faild");
                    }

                } catch (Exception ex) {
                    out.println(ex.toString());
                }

            }
            
            
             if (Role.equals("Receptionist")) {

                Connection cn = null;
                Statement st = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bridge", "root", "root");
                    st = cn.createStatement();
                    String sql = "select * from add_receptionist where Email='" + email.toString() + "'and Password='" + password.toString() + "'";
                    ResultSet rs = st.executeQuery(sql);
                    if (rs.next()) {

                       
                        resp.sendRedirect("Blood_Category.jsp");
                    } else {
                        out.println("Login Faild");
                    }

                } catch (Exception ex) {
                    out.println(ex.toString());
                }

            }
             
               if (Role.equals("Admin")) {

                   if(email.equals("snehal@gmail.com")&&password.equals("snehal21"))
                   {
                       resp.sendRedirect("Camp_Details.jsp");
                   }
                   else
                   {
                       out.println("Login Failed");
                   }

            }

        }

    }

}
