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
        <title>Donor Management</title>
        <style>
            body{
                background-color: tomato;
            }
            .jumbotron{
                border-radius:10px;
                margin:20px;
               
            }
        </style>
    </head>
    
    <body>
        <div class="row">
          <div class="col-sm-4"></div>

     <div class="jumbotron" style="width:45%">
         <h2 style="text-align:center">Donor management</h2><br> 
         
         
         <form>
            <div class="row">
                <div class="col-sm-6">
                <label>Name</label><br>
                <input type="text" name="txt_name" class="form-control" placeholder="Enter Name">
                </div>
               <div class="col-sm-6">
               <label>Address</label><br>
               <textarea name="Address" rows="2" cols="48" class="form-control"></textarea>
               </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Age</label><br>
                <input type="Age" name="txt_age" class="form-control" placeholder="Enter Age">
                </div>
                <div class="col-sm-6">
                <label>Weight</label> <br>
               <input type="number" name="txt_num" class="form-control" placeholder="Enter Weight">
               </div>
            </div>   
            <br>
             <div class="row">
                <div class="col-sm-6">
                    <label>Blood Group</label>
            <select name="Blood Group" class="form-control">
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
                   <label>Blood Group</label>
               <select name="Blood Group" class="form-control">
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
                    <input type="radio" name="gender" value="M"/>Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="gender" value="F"/>Female
                    </div>
                    <div class="col-sm-6">
                    <label>Quantity</label> <br>
                    <input type="number" name="txt_num" class="form-control" placeholder="Enter Quantity">
                    </div>
                </div>
               <br>
                 <div class="row">
                    <div class="col-sm-6">
                    <label>Contact number</label> <br>
                    <input type="number" name="txt_num" class="form-control" placeholder="Enter number">
                    </div>
                    <div class="col-sm-6">
                    <label>Donation Date</label><br>
                    <input type="Date" name="txt_date" class="form-control" max="01-12-2026">
                    </div>
                  </div>  
               <br>
               <div class="row">
                   <div class="col-sm-6">
                   <label>Last Donation Date</label><br>
                   <input type="Date" name="txt_date" class="form-control" max="12-12-2026" >
                  </div>
                  <div class="col-sm-6">
                  <label>Medical History</label><br>
                  <textarea name="Address" rows="2" cols="48" class="form-control"></textarea>
                  </div>
                </div>  
               <br>
                    <div class="text-right">
                    <input type="submit" name="" value="submit" class="btn btn-success" >
                    </div>
               </div>
            </div>

       </div>
    </div>
 </body>
 </html>