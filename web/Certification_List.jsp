<%-- 
    Document   : Certification_List
    Created on : 1 Feb, 2026, 8:48:47 PM
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
        <title>Certification List</title>
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
            background-color: #ad1457;
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
    <h3 class="text-center mb-4">Blood Donation Certification List</h3>

    <div class="table-box">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    
                    <th>Certificate Id</th>
                    <th>Donor Name</th>
                    <th>Blood Group</th>
                    <th>Blood Type</th>
                    <th>Donation Data</th>
                    <th>Issue Date</th>
                    <th>Verification code</th>
                    <th>Certification Status</th>
                    <th>Issued By</th>
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
            String sql="select * from Certification_Details";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
    <tr>
        <form action="Certification_Details" method="POST">
       <td scope="row">
          
          <input type="text" name=""  value="<%=rs.getString("Certificate_id")%>"/>
      
      </td>
      <td>
          
          <input type="text" class="form-control" name="txt_name" value="<%=rs.getString("Donor_name")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Blood_Group" value="<%=rs.getString("Blood_Group")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Blood_Type" value="<%=rs.getString("Blood_Type")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_Ddate" value="<%=rs.getString("Donation_Date")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_Idate" value="<%=rs.getString("Issue_Date")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Code" value="<%=rs.getString("Verification_code")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_Status" value="<%=rs.getString("Certification_Status")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_Issued" value="<%=rs.getString("Issued_By")%>"
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
        </table>
    </div>
</div>

</body>
</html>
    
