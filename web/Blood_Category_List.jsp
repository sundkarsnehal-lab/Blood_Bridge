<%-- 
    Document   : Blood_Category_List
    Created on : 16 Feb, 2026, 7:09:56 PM
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
        <%@include file="Admin_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blood Category List</title>
    </head>
    <style>
        body{
    background:#F8F9Fa;
    
}
.table-box{
    background:#FFFFFF;
    padding:20px;
    border-radius:10px;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
}
.table thead{
    background:#b1a49b;
    color:white;
}
th{
    background-color: #b71c1c;
    color:white;
    
}
</style>
</head>

<body>

<div class="container mt-5">
    <h3 class="text-center mb-4">Blood Category</h3>

    <div class="table-box">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Category Id</th>
                    <th>Blood Group</th>
                    <th>Blood Image</th>
                    <th>Blood Type</th>
                    <th>Description</th>
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
            String sql="select * from Blood_Category";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
      <tr>
              <form action="Blood_Category" method="POST">
       
        <td>
          
          <input type="text" class="form-control" name="txt_Id" value="<%=rs.getString("Category_id")%>"
      </td>
      <td>
          
          <input type="text" class="form-control" name="txt_Blood_Group" value="<%=rs.getString("Blood_Group")%>"
      </td>
       <td>
          
          <input type="text" class="form-control" name="txt_Image" value="<%=rs.getString("Blood_Image")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Blood_Type" value="<%=rs.getString("Blood_Type")%>"
      </td>
       <td>
          
          <input type="text" class="form-control" name="txt_Description" value="<%=rs.getString("Description")%>"
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
</div>

    </body>
</html>
