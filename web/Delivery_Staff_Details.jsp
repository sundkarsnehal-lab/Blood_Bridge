<%-- 
    Document   : Delivery_Staff_Details
    Created on : 7 Jan, 2026, 9:10:01 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Admin_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Staff Details</title>
        <script src="validation.js"></script>
    </head>
    
       <style>
            body
            {
               background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
               
            }
            
               .jumbotron
            {
                border-radius: 10px;
                margin-top: 30px;
                background-color: white;
                margin-right:auto;
                margin-left:auto;
               
            }
            .card-header {
            background: #dc3545;
            color: white;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            border-radius: 15px 15px 0 0;
        }
            
            h2
            {
                text-align: center;
                
            }

       </style>
</head>
<body>
 
     <div class="row">

     <div class="jumbotron" style="width:45%">
          <div class="card-header">
                    🩸 Staff Details
                </div> 
         
         <br>
                 <form name="Delivery_Staff_Details" action="Delivery_Staff_Details" method="post">
             <div class="row">
                <div class="col-sm-6">
                <label>Name</label><br>
                <input type="Name" name="txt_name" onkeypress="javascript:return isString(event)" class="form-control" placeholder="Enter name">
                </div>
                <div class="col-sm-6">
                <label>Contact no</label><br>
                <input type="text" name="txt_contact_no" onkeypress="javascript:return isContactno(event)" maxlength="10" minlength="10" class="form-control" placeholder="Enter number">
                </div>
             </div>   
            <br>
             <div class="row">
                <div class="col-sm-6">
                <label>Age</label><br>
                <input type="text" name="txt_age" onkeypress="javascript:return isNumber(event)" minlength="2" maxlength="2"  class="form-control" placeholder="Enter Age">
                </div>
                <div class="col-sm-6">
                <label>Email</label><br>
                <input type="Email" name="txt_email" class="form-control" placeholder="Enter Email">
                </div>
             </div>   
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Address</label><br>
                <textarea name="txt_Address" class="form-control" rows="2" cols="48"></textarea>
                </div>
                <div class="col-sm-6">
                <label>Assigned Area</label><br>
                <textarea name="txt_Area" class="form-control" rows="2" cols="48"></textarea>
                </div>
            </div>    
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Total Delivery</label><br>
                <input type="text" name="txt_Deliveries" class="form-control" placeholder="Enter Total Delivery">
                </div>
                <div class="col-sm-6">
                <label>Status</label><br>
                <textarea name="txt_Status" class="form-control" rows="2" cols="48"></textarea>
                </div>
             </div>  
            <div class="row">
                <div class="col-sm-12">
                <label>Vehicle no</label><br>
                <input type="text" name="txt_vehicle_no" onkeypress="javascript:return isAlphanumric(event)"  maxlength="8"  class="form-control" placeholder="Enter vehicle">
                </div>
            </div>
            
            <br>
            
                    <div class="text-center">
                         <input type="submit" name="btn_Submit" value="Submit" class="btn btn-success btn-lg">
                    </div>
              
            </form>
       </div>  
    </div>

</body>
</html>