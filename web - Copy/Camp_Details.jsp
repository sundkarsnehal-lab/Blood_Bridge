<%-- 
    Document   : Camp_Details
    Created on : 3 Jan, 2026, 9:09:31 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Admin_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Camp Details</title>
    </head>
    <body>
       <style>
   body
   {
      background-color:tomato;
      background-size: cover; 
     
     
   }
   .jumbotron{
       background-color: whitesmoke;
   }
   
</style>
</head>
<body>
   
   <div class="row">
      <div class="col-sm-3"></div>
      <div class="col-sm-6">
  <form>
     
  <div class="jumbotron" style=" style="height:200px">
       <div class="row justify-content-center"></div>
  <h2 style="text-align:center">Camp Details</h2>
  <br></br>
   <div class="row">
   <div class="col-sm-6">

  <label>Camp Name</label><br>
  <input type="name" class="form-control" placeholder="Enter Camp Name">
   </div>
   <div class="col-sm-6">
   <label>Organizer name</label></br>
   <input type="name" class="form-control" placeholder="Enter Organizer name">
   </div>
   </div>
   <br></br>
   
   <div class="row">
   <div class="col-sm-6">
    <label>Address</label><br>
   <textarea name="Address" class="form-control" ></textarea>
   </div>
   <div class="col-sm-6">
   <label>Date</label><br>
   <input type="date" max="2026-12-20" min="2025-12-25" name="txt_date" class="form-control">
   </div>
   </div>
   <br></br>
   <div class="row">
   <div class="col-sm-6">
   <label>Start time</label><br>
   <input type="time" class="form-control" placeholder="Enter time">
   </div>
   <div class="col-sm-6">
   <label>End time</label><br>
   <input type="time" class="form-control" placeholder="Enter time">
   </div>
   </div>
   <br></br>
   <div class="row">
   <div class="col-sm-6">
   <label>Email</label>
   <input type="Email" class="form-control" placeholder="Enter email">
   </div>
   <div class="col-sm-6">
   <label>Contact no</label><br>
   <input type="number" class="form-control" placeholder="Enter Number">
   </div>
   </div>
   <br/>
   <div class="row">
        <div class="text-right">
           <input type="submit" name="" value="Submit" class="btn btn-success btn-lg">
            
        </div>
    </div>
   </form>
   <div class="col-sm-3"></div>
   </div>
</body>
</html>
