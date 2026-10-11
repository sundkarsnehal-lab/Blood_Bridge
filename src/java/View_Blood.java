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
public class View_Blood extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        String Image = req.getParameter("txt_Image");
        String BGroup = req.getParameter("txt_Blood_Group");
        String Price = req.getParameter("txt_Price");
        String event = req.getParameter("btn_submit");

        out.println(Image);
        out.println(BGroup);

        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);

        if (event.equals("View Blood")) {
            session.setAttribute("BGroup", BGroup);
            session.setAttribute("price", Price);

            resp.sendRedirect("View_Blood_Category.jsp");

        }

    }
}
