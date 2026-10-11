<%-- 
    Document   : User_List
    Created on : 14 Jan, 2026, 7:40:08 PM
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
        <%@include file="Admin_Navigation.jsp"%>
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
    <h3 class="text-center mb-4">User List</h3>

    <div class="table-box">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Request Id</th>
                    <th> Full Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Contact No</th>
                     <th>Password</th>
                     <th>Blood Group</th>
                    <th>Gender</th>
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
            String sql="select * from User_Sign_Up";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
    <tr>
        <form action="User_Sign_Up" method="POST">
       <td scope="row">
          
          <input type="text" name=""  value="<%=rs.getString("User_id")%>"/>
      
      </td>
      <td>
          
          <input type="text" class="form-control" name="txt_name" value="<%=rs.getString("name")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_address" value="<%=rs.getString("Address")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_email" value="<%=rs.getString("Email")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_Contact_no" value="<%=rs.getString("Contact_no")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_password" value="<%=rs.getString("Password")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Blood_Group" value="<%=rs.getString("Blood_Group")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_gender" value="<%=rs.getString("Gender")%>"
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
</div>

</body>
</html>