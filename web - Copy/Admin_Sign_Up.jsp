<%-- 
    Document   : Admin_Sign_Up
    Created on : 25 Dec, 2025, 11:20:53 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="Admin_Navigation.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Sign Up</title>

  <style>
    body {
      background-color:lightsalmon;
    }

    .jumbotron
	{
      width:70%;
      height:600px
      background-color:white;
      margin-left: auto;
      margin-right: auto;
      margin-top:40px;
      border-color:gray;
      border-radius: 6px;
	  
      
    }
  </style>
</head>

<body>


<div class="jumbotron">
<br/>
    <h2 class="text-center" style="font-weight:bold" >Sign Up</h2>
	<br/>
    <div class="row">

	 
        <div class="col-sm 4-flex align-items-center justify-content-center bg-light">
            <img src="Login.jpg" class="img-thumbnail">
        </div>

        
        <div class="col-sm-8 d-flex align-items-center">
            <div class="w-75 mx-auto">


         <form>
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Full Name">
                        </div>

                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Email">
                        </div>

                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Contact No">
                        </div>

                        <div class="mb-3">
                            <input type="password" class="form-control" placeholder="Password">
                        </div>

                        <div class="mb-3">
                            <label>Gender</label>
                            <input type="radio" name="gender"> Male
                            <input type="radio" name="gender"> Female
                        </div>

                        <div class="mb-3">
                            <select class="form-control">
                                <option>Select Blood Group</option>
                                <option>A+</option><option>A-</option>
                                <option>B+</option><option>B-</option>
                                <option>O+</option><option>O-</option>
                                <option>AB+</option><option>AB-</option>
                            </select>
                        </div>

                        <div class="d-grid">
                            <button class="btn btn-success">Sign Up</button>
                        </div>
                    </form>

 
      </div>
     
     </div>
	 </div>
	 
 

</body>
</html>