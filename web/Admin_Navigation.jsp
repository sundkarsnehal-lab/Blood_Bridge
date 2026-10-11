<%-- 
    Document   : Admin_Navigation
    Created on : 25 Dec, 2025, 10:47:13 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_Navigation</title>
        <link rel="stylesheet" href="css/bootstrap.css"/>    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">

  
  <a class="navbar-brand" style="margin-left: 40px;" href="#"> 🩸 Blood Bridge</a>

  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">

      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home</a>
      </li>

       <li class="nav-item active">
        <a class="nav-link" href="Camp_Details.jsp">Camp Details</a>
      </li>

       <li class="nav-item" active>
        <a class="nav-link" href="Add_Blood.jsp">Add Blood</a>
      </li>

       <li class="nav-item" active >
        <a class="nav-link" href="Delivery_Staff_Details.jsp">Delivery Staff</a>
      </li>
      
      <li class="nav-item" active >
        <a class="nav-link" href="Reports.jsp">Reports</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="index.html">Logout</a>
      </li>


  
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="listDropdown"
           role="button" data-toggle="dropdown">
          Lists
        </a>

        <div class="dropdown-menu">
          <a class="dropdown-item" href="User_List.jsp">User List</a>
          <a class="dropdown-item" href="Donor_List.jsp">Donor List</a>
          <a class="dropdown-item" href="Feedback_List.jsp">Feedback List</a>
          <a class="dropdown-item" href="Delivery_Staff_List.jsp">Staff List</a>
          <a class="dropdown-item" href="Request_List.jsp"> Request List</a>
        </div>
      </li>

    </ul>
  </div>

</nav>

    </body>
</html>
