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
        <title>JSP Page</title>
    </head>
    <body>
       <style type="text/css">
            body
            {
               background-color: tomato;
               
            }
            
               .jumbotron
            {
                border-radius: 10px;
                margin-top: 50px;
                background-color: whitesmoke;
            }
            
            h2
            {
                text-align: center;
            }

       </style>
</head>
<body>

     <div class="row">
          <div class="col-sm-4"></div>

     <div class="jumbotron" style="width:500px">
         <h2 style="text-align: center;">Staff_Details</h2> 
         <div class="container">
         
         <form>
             <div class="row">
                <div class="col-sm-6">
                <label>Name</label><br>
                <input type="Name" name="txt_name" class="form-control" placeholder="Enter name">
                </div>
                <div class="col-sm-6">
                <label>Contact_no</label><br>
                <input type="number" name="txt_num" class="form-control" placeholder="Enter number">
                </div>
             </div>   
            <br>
             <div class="row">
                <div class="col-sm-6">
                <label>Age</label><br>
                <input type="Age" name="txt_age" class="form-control" placeholder="Enter Age">
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
                <textarea name="Address" class="form-control" rows="2" cols="48"></textarea>
                </div>
                <div class="col-sm-6">
                <label>Assigned_Area</label><br>
                <textarea name="Address" class="form-control" rows="2" cols="48"></textarea>
                </div>
            </div>    
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Total_Delivery</label><br>
                <input type="number" name="txt_num" class="form-control" placeholder="Enter Total_Delivery">
                </div>
                <div class="col-sm-6">
                <label>Status</label><br>
                <textarea name="Status" class="form-control" rows="2" cols="48"></textarea>
                </div>
             </div>   
            
            <br>
            
                    <div class="text-right">
                         <input type="submit" name="" value="Submit" class="btn btn-success btn-lg">
                    </div>
               </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>