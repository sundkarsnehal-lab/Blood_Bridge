<%-- 
    Document   : Feedback_List
    Created on : 13 Jan, 2026, 7:37:43 PM
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
        <title>Feedback List</title>
   <style>
body{
    background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
    
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
    <h3 class="text-center mb-4">Feedback List</h3>

    <div class="table-box">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Feedback Id</th>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Order ID</th>
                    <th>Rating</th>
                    <th>Feedback</th>
                    
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
            String sql="select * from feedback_master";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
      <tr>
              <form action="Feedback_Master" method="POST">
       
        <td>
          
       <%=rs.getString("Feedback_id")%>
      </td>
      <td>
          
          <%=rs.getString("name")%>
      </td>
      <td>
         
           <%=rs.getString("Email")%>
      </td>
      <td>
         
           <%=rs.getString("Blood_Group")%>
      </td>
      <td>
          
           <%=rs.getString("Ratings")%>
      </td>
      <td>
          
           <%=rs.getString("feedback")%>
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