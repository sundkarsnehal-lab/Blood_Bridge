<%-- 
    Document   : Donor_List
    Created on : 13 Jan, 2026, 8:43:52 PM
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
        <title>Donor List</title>
          <style>
        body {
            background-color: #f8f9fa;
        }
        .table-box {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            margin-top:50px;
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

    <br>
    <h3 class="text-center mb-4">Donor List</h3>

    <div class="table-box">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Donor Id</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Age</th>
                    <th>Weight</th>
                    <th>Blood Group</th>
                    <th>Blood Type</th>
                    <th>Gender</th>
                   <th>Quantity</th>
                    <th>Contact No</th>
                    <th>Donation Date</th>
                    <th> Last Donation Date</th>
                    <th>Medical History</th>
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
            String sql="select * from Donor_Details";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
           
      %>
    <tr>
        <form action="Donor_Details" method="POST">
       <td scope="row">
      <input type="text" name=""  value="<%=rs.getString("Donor_id")%>"/>
      
      </td>
      <td>
          
          <input type="text" class="form-control" name="txt_name" value="<%=rs.getString("Name")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Address" value="<%=rs.getString("Address")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_age" value="<%=rs.getString("Age")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_weight" value="<%=rs.getString("Weight")%>"
      </td>
      <td>
          
           <input type="text" class="form-control" name="txt_Blood_Group" value="<%=rs.getString("Blood_Group")%>"
      </td>
      <td>
         
           <input type="text" class="form-control" name="txt_Blood_Type" value="<%=rs.getString("Blood_Type")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_gender" value="<%=rs.getString("Gender")%>"
      </td>
      
      <td>
         
           <input type="text" class="form-control" name="txt_quality" value="<%=rs.getString("Quantity")%>"
      </td>
       
       <td>
         
           <input type="text" class="form-control" name="txt_contact_no" value="<%=rs.getString("Contact_no")%>"
      </td>
      
       <td>
         
           <input type="text" class="form-control" name="txt_Ddate" value="<%=rs.getString("Donation_Date")%>"
      </td>
       <td>
         
           <input type="text" class="form-control" name="txt_Ldate" value="<%=rs.getString("Last_Donation_Date")%>"
      </td>
      
       <td>
         
           <input type="text" class="form-control" name="txt_medical" value="<%=rs.getString("Medical_History")%>"
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