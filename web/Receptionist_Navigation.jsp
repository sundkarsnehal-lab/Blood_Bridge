<%-- 
    Document   : Receptionist_Navigation
    Created on : 25 Dec, 2025, 10:50:47 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receptionist Navigation</title>
    

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">

  <!-- Brand -->
  <a class="navbar-brand" style="margin-left: 40px;" href="#">🩸 Blood Bridge</a>

  <!-- Toggle Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Menu -->
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">

      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home</a>
      </li>

       <li class="nav-item">
        <a class="nav-link" href="Blood_Category.jsp">Blood Category</a>
      </li>
      
       
      <li class="nav-item">
        <a class="nav-link" href="Donor_Details.jsp">Donor</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="Certification_Details.jsp">Certification</a>
      </li>

      
      
      <li class="nav-item">
        <a class="nav-link" href="Inventory_Details.jsp">Inventory Details</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="index.html">Logout</a>
      </li>
      
      <!-- Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="productDropdown"
           role="button" data-toggle="dropdown">
         Lists
        </a>

        <div class="dropdown-menu">
          <a class="dropdown-item" href="Certification_List.jsp">Certification List</a>
          <a class="dropdown-item" href="Request_List.jsp">Request List</a>
        </div>
      </li>

    </ul>
  </div>

</nav>
    </body>
</html>
