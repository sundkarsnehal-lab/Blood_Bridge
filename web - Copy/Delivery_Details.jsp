<%-- 
    Document   : Delivery_Details
    Created on : 8 Jan, 2026, 7:31:11 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Details</title>
    </head>
    <body>
         <style type="text/css">
            body
            {
               background-color: tomato;
               height: 100vh;
               align-items: center;
               display: flex;
               justify-content: center;
            }
            .jumbotron
            {
                padding: 20px;
                margin-top: 50px;
            }
       </style>

</head>
<body>
      <div class="row">
          <div class="col-sm-3"></div>
          
          
     <div class="jumbotron" style="width:500px"; >
          <h2 style="text-align: center";>Delivery Details</h2><br>
         <div class="container">
                <label>Blood Group</label><br>
            <select class="form-control">
                        <option>Blood Group</option>
                        <option>O+</option>
                        <option>A+</option>
                        <option>B+</option>
                        <option>AB+</option>
                        <option>O-</option>
                        <option>A-</option>
                        <option>B-</option>
                        <option>AB-</option>
               </select> 
               <br>
               <label>Delivery address</label><br>
               <textarea class="Delivery"   class="form-control" rows="2" cols="55" placeholder="Enter address"></textarea>
               <br>
               <label>Staff Name</label>
               <input type="name" name="txt_name" class="form-control" placeholder="Enter name">
               <br>
               <label>Select Time</label><br>
               <input type="time" name="txt_time" class="form-control">
               <br>
               <label>Date</label>
               <input type="Date" name="txt_date" class="form-control"/>
               <br>
               <label>Status</label><br>
               <textarea class="Status"  class="form-control" rows="2" cols="55" ></textarea>
               <br><br>
                    <div class="text-right">
                    <input type="submit" name="" value="Submit" class="btn btn-success">

                    
                    </div>
               </div>
           </div>

   </div>
     </div>
 </body>
 </html>
    
