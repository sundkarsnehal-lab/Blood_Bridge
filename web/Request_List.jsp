<%-- 
    Document   : Request_List
    Created on : 13 Jan, 2026, 8:27:20 PM
    Author     : sundk
--%>

<%@page import="java.sql.Connection"%>
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
        <title>User List</title>
        <style>
            body {
                background-color: #f8f9fa;
                padding: 10px;
            }
            .table-box {
                background: #ffffff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            }
            th {
                background-color: #c62828;
                color: white;
                text-align: center;
            }
            td {
                text-align: center;
                vertical-align: middle;
            }
            .btn-group-custom
            {
                margin-bottom: 25px;
            }
            .table-box{
                margin-bottom: 40px;
            }
        </style>
    </head>

    <body>
        <br>

        <h3 class="text-center mb-4">Request List</h3>

        <div class="table-box">
            <form action="Request_List.jsp" method="GET" class=" text-center btn-group-custom">
                <input type="submit" name="btn" value="Pending" class="btn btn-danger"/>
                <input type="submit" name="btn" value="Approved" class="btn btn-success"/>
                <input type="submit" name="btn" value="Deliver" class="btn btn-primary"/>
            </form>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Request Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Age</th>
                        <th>Blood Group</th>
                        <th>units</th>
                        <th>Blood Type</th>
                        <th>Request Date</th>
                        <th>Contact No</th>
                        <th>Address</th>
                        <th>Status</th>
                        <th>Action</th>

                    </tr>
                </thead>

                <tbody>
                    <%

                        Connection cn = null;
                        Statement st = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Blood_Bridge", "root", "root");
                            st = cn.createStatement();
                            String sql = "select * from Request_Details where Status='" + request.getParameter("btn") + "'";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {

                    %>
                    <tr>
              
                    <td scope="row">

                        <%=rs.getString("Request_id")%>

                    </td>
                    <td>

                        <%=rs.getString("Name")%>
                    </td>
                    <td>

                        <%=rs.getString("Gender")%>
                    </td>
                    <td>

                        <%=rs.getString("Age")%>
                    </td>
                    <td>

                        <%=rs.getString("Blood_Group")%>
                    </td>
                    <td>

                        <%=rs.getString("units")%>
                    </td>
                    <td>

                        <%=rs.getString("Blood_Type")%>
                    </td>

                    <td>

                        <%=rs.getString("Request_date")%>
                    </td>

                    <td>

                        <%=rs.getString("Contact_no")%>
                    </td>

                    <td>
                        <%=rs.getString("Address")%>
                    </td>

                    <td>

                        <%=rs.getString("Status")%>
                    </td>
                    
                    <td>
                    <input type="submit" name="btn_Submit" value="Delete" class="btn btn-danger">
                    </td>
                    <td>
                        
                            <%
                                if (rs.getString("Status").equals("Pending")) {
                            %>
                            <form action="Request_Details" method="POST">
                            <input type="submit" name="btn_Submit" value="Approved" class="btn btn-success"/>
                            <input type="hidden" name="rqu_id" value=" <%=rs.getString("Request_id")%>"/>
                        </form>
                        <%} if (rs.getString("Status").equals("Approved")) {

                        %>
                        <form action="Delivery_Details.jsp" method="POST">
                            <input type="submit" name="btn_Submit" value="Deliver" class="btn btn-primary"/>
                            <input type="hidden" name="rqu_id" value=" <%=rs.getString("Request_id")%>"/>
                             <input type="hidden" name="address" value=" <%=rs.getString("Address")%>"/>
                           <input type="hidden" name="bg" value=" <%=rs.getString("Blood_Group")%>"/>
                          
                        </form>

                        <%}

                        
                        

                        %>


                    </td>



                    </tr>
                    <%            }
                        } catch (Exception ex) {
                            out.println(ex.toString());
                        }

                    %>


                    </tbody>
            </table>
        </div>'


    </body>
</html>