<%-- 
    Document   : Request_Details
    Created on : 3 Jan, 2026, 9:19:14 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Details</title>
         <style>
          body
          {
               background-color:tomato;

          }
          h2
          {
               text-align: center;
               
          }
          .jumbotron
          {
               margin-top: 50px;
          }
          
     </style>
</head>
<body>

     <div class="row">
          <div class="col-sm-4"></div>
          
     <div class="jumbotron" style="padding: 12px;"  >
          <h2 >Request Details</h2>
           <br>
          <form>
            <div class="row">
               <div class="col-sm-6">
               <label>Name</label>
               <input type="text " name="name" class="form-control" placeholder="Enter name">
               </div>
               <div class="col-sm-6">
               <label>Address</label>
               <textarea name="Address" class="form-control" rows="1" cols="20" placeholder="Enter Address"></textarea>
               </div>
            </div> 
                 <br>
               <div class="row">
                  <div class="col-sm-6">
                  <label>Gender</label><br>     
                  <input type="radio" name="gender"  value="M"/>Male 
                  <input type="radio" name="gender"  value="F"/>Female 
                  </div>
                  <div class="col-sm-6">
                  <label>Age</label>
                  <input type="Age" name="txt_age" class="form-control" placeholder="Enter Age">
                  </div>
               </div>
               <br>
                  <div class="row">
                     <div class="col-sm-6"> 
                    <label>Blood Group</label>
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
                    </div>
            
                    <div class="col-sm-6">
                    <label >Units</label>
                    <input type="number" class="form-control" placeholder="Enter Units">
                    </div>
                  </div>
                  <br>
                   <div class="row"> 
                      <div class="col-sm-6">
                      <label>Blood Type</label>   
                      <select class="form-control">
                          <option>Blood Type</option>
                          <option></option>
                          <option></option>
                          <option></option>
                          <option></option>
                      </select>
                      </div>
                   
                  <div class="col-sm-6">
                  <label>Request Date</label>
                  <input type="Date" name="txt_date" class="form-control"/>
                  </div>
                  </div>
                  <br>
                  <div class="row">
                      <div class="col-sm-6">
                      <label>Contact number</label>
                      <input type="number" class="form-control"  placeholder="Enter number">
                      </div>
                      <div class="col-sm-6">
                      <label>Status</label><br>
                      <textarea name="Status" rows="1" cols="40" class="form-control"> </textarea>
                      </div>
                   </div>
               <br>
               
                    <div class="text-right">
                         <input type="submit" name="" value="Submit" class="btn btn-success w-35">
                    </div>
               </div>
     </div>
     </form>          
          </div>
              
         
     </body>          
     </html>