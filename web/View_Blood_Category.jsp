
<%-- 
    Document   : View_Blood_Category
    Created on : 14 Feb, 2026, 1:33:59 PM
    Author     : sundk
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="User_Navigation.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Blood Category</title>
    </head>
    <body>
        <style>
            body
            {
                background: linear-gradient(to right, #fbc2eb, #a6c1ee);

            }
            .container
            {
                margin-left: 220px;
                padding: 10px;
                margin-top:20px;
            }
            .div1
            {
                display: inline-block;
                margin-left: 130px;
                margin-top: 50px;
                margin-right:0px;
                background-color:#ffffff;
                overflow: hidden;
                transition: 0.3s;
                border-radius: 15px;
                min-height: 450px;
            }
            .div1:hover{
                transform: translateY(-8px);
                box-shadow:0 10px 25px rgba(0,0,0,0.3);
            }

            .div1 img{
                height: 250px;
                object-fit: cover;
            }
            .btn
            {
                background-color:maroon;
                width: 80%;
               text-align:center;
            }


        </style>
    </head>
<body>
    <%
        Connection cn = null;

        Statement st = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Blood_Bridge", "root", "root");
            st = cn.createStatement();
            String sql = "select * from blood_category where Blood_Group='" + session.getAttribute("BGroup") + "'";
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                String BGroup = rs.getString("Blood_Group");
                String Image = rs.getString("Blood_Image");
                String Description = rs.getString("Description");
                String Status = rs.getString("status");

    %>



    <div class="div1">
        <form name="View_Blood_Category" action="View_Blood_Category" method="post">
            <img src="img/<%=Image%>" height="280" width="320">
            <input type="hidden" name="txt_Image" value="<%=Image%>">
             <input type="hidden" name="category" value="<%=rs.getString("Blood_Type")%>">

            <input type="hidden" name="txt_Image">
            <br></br>
            &nbsp;&nbsp;&nbsp;
            <label>Blood Group:-</label>
            <label><%=BGroup%></label>

            <input type="hidden" name="txt_Blood_Group" value="<%=BGroup%>">

            <br><br>
            &nbsp;&nbsp;&nbsp;
            <label>Description:-</label>
            <label><%=Description%></label>

            <input type="hidden" name="txt_Description" value="<%=Description%>">

            <br><br>
            &nbsp;&nbsp;&nbsp;
            <label>Status:-</label>
            <label><%=Status%></label>

            <input type="hidden" name="txt_Status" value="<%=Status%>">

            <br><br>
            &nbsp;&nbsp;&nbsp;
            <%
                if (Status.equals("Available")) {
            %>
            <button type="submit" name="btn_submit" value="Request" class="btn btn-primary">Request</button>
            <%  } else {
%>
<button type="submit" name="btn_submit" value="Request" disabled class="btn btn-primary">Request</button>

<%
                    }
                


            %>

            <br><br>
        </form>
    </div>






    <%                }

        }
        catch(Exception ex

            
            )
    {
       out.println(ex.toString());
        }


    %>                  

</body>
</html>
