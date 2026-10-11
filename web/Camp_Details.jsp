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
        <script src="validation.js"></script>
    </head>
    <body>
       <style>
   body
   {
      background-size: cover; 
     background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
   }
   .jumbotron{
       background-color: white;
       margin-top:30px;
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
<body>
   
   <div class="row">
      <div class="col-sm-3"></div>
      <div class="col-sm-6">
  <form name="Camp_Details" action="Camp_Details" method="post">
     
  <div class="jumbotron">
       
   <div class="card-header">
                    🩸 Camp Details
                </div>
 
  <br></br>
   <div class="row">
   <div class="col-sm-6">

  <label>Camp Name</label><br>
  <input type="text" name="txt_CName" class="form-control" onkeypress="javascript:return isString(event)" placeholder="Enter Camp Name">
   </div>
   <div class="col-sm-6">
   <label>Organizer name</label></br>
   <input type="text" name="txt_OName" class="form-control" onkeypress="javascript:return isString(event)"  placeholder="Enter Organizer name">
   </div>
   </div>
   <br></br>
   
   <div class="row">
   <div class="col-sm-6">
    <label>Address</label><br>
   <textarea name="txt_Address" class="form-control" ></textarea>
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
   <input type="time" name="txt_STime" class="form-control" placeholder="Enter Start Time">
   </div>
   <div class="col-sm-6">
   <label>End time</label><br>
   <input type="time" name="txt_ETime" class="form-control" placeholder="Enter End Time">
   </div>
   </div>
   <br></br>
   <div class="row">
   <div class="col-sm-6">
   <label>Email</label>
   <input type="Email" name="email" class="form-control" placeholder="Enter email">
   </div>
   <div class="col-sm-6">
   <label>Contact no</label><br>
   <input type="text" name="txt_Contact_no" onkeypress="javascript:return isContactno(event)" maxlength="10" minlength="10" class="form-control" placeholder="Enter Number">
   </div>
   </div>
   <br/>
   <div class="row">
       <div class="col-sm-12">
        <div class="text-right">
           <input type="submit" name="btn_Submit" value="Submit" class="btn btn-success btn-lg">
            
        </div>
    </div>
   </form>
   <div class="col-sm-3"></div>
   </div>
</body>
</html>
