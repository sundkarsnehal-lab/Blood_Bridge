<%-- 
    Document   : Delivery_Staff_List
    Created on : 1 Feb, 2026, 8:55:15 PM
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
        <%@include file="Admin_Navigation.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Staff List</title>
    </head>
    <body>
        <style>
        body {
            background-color: #f8f9fa;
        }
        .table-box {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        th {
            background-color: #6a1b9a;
            color: white;
            text-align: center;
        }
        td {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>

<body>

    <br>
    <h3 class="text-center mb-4">🚑 Blood Delivery Staff List</h3>

    <div class="table-box">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                  
                    <th>Staff Id</th>
                    <th>Staff Name</th>
                    <th>Contact No</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Assigned Area</th>
                    <th>Total Deliveries</th>
                    <th>vehicle no</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
                 <%
          
Connection cn=null;
    Statement st=null;
    
try
{
 Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Blood_Bridge","root","root");
            st=cn.createStatement();
            String sql="select * from Delivery_Staff_Details";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
    <tr>
        <form action="Delivery_Staff_Details" method="POST">
       <td scope="row">
          
          <input type="text" name=""  value="<%=rs.getString("Staff_id")%>"/>
      
      </td>
      <td>
          
          <input type="text" class="form-control" name="txt_name" value="<%=rs.getString("Name")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Contact_no" value="<%=rs.getString("Contact_no")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_age" value="<%=rs.getString("Age")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_email" value="<%=rs.getString("Email")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_Address" value="<%=rs.getString("Address")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Area" value="<%=rs.getString("Assigned_Area")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_Deliveries" value="<%=rs.getString("Total_Deliveries")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_Vehicle_no" value="<%=rs.getString("Vehicle_no")%>"
      </td>
       
       <td>
         
           <input type="text" class="form-control" name="txt_Status" value="<%=rs.getString("Status")%>"
      </td>
      
      <td>
      <input type="Submit" name="btn_Submit" value="Update" class="btn btn-primary">
      </td>
      <td>
      <input type="submit" name="btn_Submit" value="Delete" class="btn btn-danger">
       </td>
        </form>
    </tr>
    <%
    }
      }catch(Exception ex)
      {
       out.println(ex.toString());
      }
    
    %>
    
  
            </tbody>
        </table>
    </div>


</body>
</html>