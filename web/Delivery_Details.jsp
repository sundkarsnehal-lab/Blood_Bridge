<%-- 
    Document   : Delivery_Details
    Created on : 8 Jan, 2026, 7:31:11 PM
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
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Details</title>
        <script src="validation.js"></script>

        <style>
            body
            {
                background: linear-gradient(to right, #fbc2eb, #a6c1ee);


                align-items: center;


            }
            .jumbotron
            {

                border-radius: 10px;
                margin-top: 20px;
                background: white;
            }
            .card-header {
                background: #dc3545;
                color: white;
                text-align: center;
                font-size: 22px;
                font-weight: bold;
                border-radius: 15px 15px 0 0;
            }

        </style>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-3"></div>

            <form name="Delivery_Details" action="Delivery_Details" method="post">   
                <input type="hidden" name="rqu_id" value=" <%=request.getParameter("rqu_id")%>"/>


                <div class="jumbotron">
                    <div class="card-header">
                        🩸 Delivery Details
                    </div>


                    <label>Blood Group</label><br>
                    <select class="form-control" name="txt_Blood_Group">
                        <option selected value="<%=request.getParameter("bg")%>"><%=request.getParameter("bg")%></option>
                    </select> 
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Vehicle no</label><br>
                            <input type="text" name="txt_vehicle_no" onkeypress="javascript:return isString(event)" minlength="2" maxlength="2"  class="form-control" placeholder="Enter vehicle">
                        </div>
                        <div class="col-sm-6">
                            <label> Delivery Address</label><br>
                            <textarea name="txt_Address"  class="form-control" rows="2" cols="48" placeholder="Enter address">
                                <%=request.getParameter("address")%>
                            </textarea>
                        </div>
                    </div>

                    <br>
                    <label>Staff Name</label>
                    
                    <select name="txt_name" class="form-control">
                        <option>Select Staff</option>

                        <%

                            Connection cn = null;
                            Statement st = null;

                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Blood_Bridge", "root", "root");
                                st = cn.createStatement();
                                String sql = "select * from Delivery_Staff_Details";
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {

                        %>
                        <option><%=rs.getString("Name")%></option>
                        <%            }
                            } catch (Exception ex) {
                                out.println(ex.toString());
                            }

                        %>

                    </select>

                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Select Time</label><br>
                            <input type="time" name="txt_time" class="form-control">
                        </div>
                        <div class="col-sm-6">
                            <label>Date</label>
                            <input type="Date" name="txt_date" class="form-control"/>
                        </div>
                    </div>
                    <br>
                    <label>Status</label><br>
                    <textarea class="form-control" name="txt_status" rows="2" cols="55" ></textarea>
                    <br>
                    <div class="text-center">
                        <input type="submit" name="btn_submit" value="Assign" class="btn btn-success btn-lg">


                    </div>
                </div>
        </div>
    </form>

</div>

</body>
</html>

