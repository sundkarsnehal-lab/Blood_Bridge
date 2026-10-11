<%-- 
    Document   : User_My_Request
    Created on : 17 Feb, 2026, 2:24:59 PM
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
        <%@include file="User_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
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
            background-color: #c62828;
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

<div class="container mt-5">
    <h3 class="text-center mb-4">Request List</h3>

    <div class="table-box">
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
            String sql="select * from Request_Details where contact_no='"+session.getAttribute("contactno")+"'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
    <tr>
        <form action="Request_Details" method="POST">
       <td scope="row">
          
         <%=rs.getString("Request_id")%>"
      
      </td>
      <td>
          
    <%=rs.getString("Name")%>
      </td>
      <td>
         
          <%=rs.getString("Gender")%>
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_age" value="<%=rs.getString("Age")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_Blood_Group" value="<%=rs.getString("Blood_Group")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_units" value="<%=rs.getString("units")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Blood_Type" value="<%=rs.getString("Blood_Type")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_date" value="<%=rs.getString("Request_date")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_Contact_no" value="<%=rs.getString("Contact_no")%>"
      </td>
      
       <td>
         
           <input type="text" class="form-control" name="txt_Address" value="<%=rs.getString("Address")%>"
      </td>
       
       <td>
         
           <input type="text" class="form-control" name="txt_status" value="<%=rs.getString("Status")%>"
      </td>
      
      
     
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
    </div>'</form>
</div>

</body>
</html>