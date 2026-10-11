<%-- 
    Document   : Donor_Details
    Created on : 7 Jan, 2026, 11:43:10 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor Details</title>
        <script src="validation.js"></script>
        <style>
            body{
                background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
            }
            .jumbotron{
                border-radius:10px;
                margin:20px;
               background-color: white;
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

     <div class="jumbotron" style="width:45%">
         <div class="card-header">
                    🩸 Donor Details
                </div>
         
         
                  <form name="Donar_Details" action="Donor_Details" method="post">
            <div class="row">
                <div class="col-sm-6">
                <label>Name</label><br>
                <input type="text" name="txt_name"  onkeypress="javascript:return isString(event)" class="form-control" placeholder="Enter Name">
                </div>
               <div class="col-sm-6">
               <label>Address</label><br>
               <textarea name="txt_Address" rows="2" cols="48" class="form-control"></textarea>
               </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Age</label><br>
                <input type="text" name="txt_age"  onkeypress="javascript:return isNumber(event)" minlength="2" maxlength="2" class="form-control" placeholder="Enter Age">
                </div>
                <div class="col-sm-6">
                <label>Weight</label> <br>
               <input type="text" name="txt_weight" onkeypress="javascript:return isNumber(event)" minlength="2" maxlength="2" class="form-control" placeholder="Enter Weight">
               </div>
            </div>   
            <br>
             <div class="row">
                <div class="col-sm-6">
                    <label>Blood Group</label>
            <select name="txt_Blood_Group" class="form-control">
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
               </div>
               <div class="col-sm-6">
                   <label>Blood Type</label>
               <select name="txt_Blood_Type" class="form-control">
                        <option>Blood Type</option>
                        <option>Plasma</option>
                        <option>Platelets</option>
                        <option>RBC</option>
                        <option>WBC</option>
                        <option>Cryo</option>
                        <option>Plasma Contains</option>
               </select>
                    </div>
               </div>
               <br>
                 <div class="row">
                    <div class="col-sm-6">
                    <label>Gender</label><br>
                    <input type="radio" name="txt_gender" value="Male"/>Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="txt_gender" value="Female"/>Female
                    </div>
                    <div class="col-sm-6">
                    <label>Quantity</label> <br>
                    <input type="text" name="txt_quantity" class="form-control" placeholder="Enter Quantity">
                    </div>
                </div>
               <br>
                 <div class="row">
                    <div class="col-sm-6">
                    <label>Contact number</label> <br>
                    <input type="text" name="txt_contact_no" onkeypress="javascript:return isContactno(event)" maxlength="10" minlength="10" class="form-control" placeholder="Enter number">
                    </div>
                    <div class="col-sm-6">
                    <label>Donation Date</label><br>
                    <input type="Date" name="txt_Ddate" class="form-control" max="01-12-2026">
                    </div>
                  </div>  
               <br>
               <div class="row">
                   <div class="col-sm-6">
                   <label>Last Donation Date</label><br>
                   <input type="Date" name="txt_Ldate" class="form-control" max="12-12-2026" >
                  </div>
                  <div class="col-sm-6">
                  <label>Medical History</label><br>
                  <textarea name="txt_medical" rows="2" cols="48" class="form-control"></textarea>
                  </div>
                </div>  
               <br>
                    <div class="text-right">
                    <input type="submit" name="btn_Submit" value="Submit" class="btn btn-success btn-lg" >
                    </div>
               </div>
            </div>

       </div>
    </div>
 </body>
 </html>