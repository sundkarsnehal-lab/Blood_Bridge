<%-- 
    Document   : Camp_List
    Created on : 30 Jan, 2026, 8:52:56 AM
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
        <title>Camp_List</title>
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
            background-color: #b71c1c;
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
    <h3 class="text-center mb-4">🗓 Blood Donation Camp List</h3>

    <div class="table-box">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Sr No</th>
                    <th>Camp Name</th>
                    <th>Organizer</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Camp Date</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Contact No</th>
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
            String sql="select * from Camp_Details";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
    <tr>
        <form action="Camp_Details" method="POST">
       <td scope="row">
          
           <input type="text" class="form-control" name="" value="<%=rs.getString("Camp_id")%>"
      
      </td>
      <td>
          
          <input type="text" class="form-control" name="txt_CName" value="<%=rs.getString("Camp_name")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_OName" value="<%=rs.getString("Organizer_name")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Address" value="<%=rs.getString("Address")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_date" value="<%=rs.getString("Date")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_STime" value="<%=rs.getString("Start_time")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_ETime" value="<%=rs.getString("End_time")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="email" value="<%=rs.getString("Email")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_Contact_no" value="<%=rs.getString("Contact_no")%>"
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