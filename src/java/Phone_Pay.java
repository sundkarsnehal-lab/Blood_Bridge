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
public class Phone_Pay extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       String name=req.getParameter("txt_name");
       String Amount=req.getParameter("txt_amount");
       String UPI=req.getParameter("txt_UPI_ID");
       String event=req.getParameter("btn_Submit");
       out.println(name);
       out.println(Amount);
       out.println(UPI);
       
       
    
    }

    
}