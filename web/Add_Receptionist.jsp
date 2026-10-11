<%-- 
    Document   : Add_Receptionist
    Created on : 10 Jan, 2026, 8:29:27 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Receptionist</title>
        <script src="validation.js"></script>
    </head>
   
        <style>
            body
            {
               background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
               
            }
            .jumbotron
            {
               background-color: white;
               margin-top: 20px;
               padding: 20px;
               border-radius:10px;
            }
            
            .card-header {
            background: #dc3545;
            color: white;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            border-radius: 15px 15px 0 0;
        }
           
       </style>
</head>
<body>
   
   <div class="row">
          <div class="col-sm-4"></div>

     <div class="jumbotron">
         <div class="card-header">
                    🩸 Add Receptionist
                </div>
         <br> 
         <div class="container">
         
         <form name="Add_Receptionist" action="Add_Receptionist" method="post">
            <label>Name</label><br>
            <input type="text"  class="form-control"name="txt_name" onkeypress="javascript:return isString(event)" placeholder="Enter Name">
            <br>
            <label>Password</label><br>
            <input type="Password" name="txt_pass"  class="form-control"maxlength="8" minlength="8" placeholder="Enter Password">
            <br>
            <label>Email</label><br>
            <input type="Email" name="txt_email" class="form-control" placeholder="Enter Email">
            <br>
            <label>Contact Number</label><br>
            <input type="text"  name="txt_contact_no" onkeypress="javascript:return isContactno(event)" maxlength="10" minlength="10" class="form-control" placeholder="Enter number">
            <br>
            <label>Gender</label><br>
                  <input type="radio" name="txt_gender"  value="Male"/>Male
                  <input type="radio" name="txt_gender"  value="Female"/>Female 
            <br><br>
            <label>Address</label><br>
            <textarea class="form-control" name="txt_address" rows="2" cols="45"></textarea>
            <br>
             <div class="text-right">
                    <input type="submit" name="btn_Submit" value="Submit" class="btn btn-success btn-lg">
                    </div>
               </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
   
