<%-- 
    Document   : Certification_Details
    Created on : 7 Jan, 2026, 10:46:57 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Certification Details</title>
    </head>
    <body>
          <style>
            body
            {
               background-color: tomato;
               
            }
            .jumbotron
            {
               background-color:whitesmoke;
               margin-top:50px;
               border-radius:10px;
              
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

     <div class="jumbotron" style="width:45%" >
         <h2>Certification Details</h2><br> 
         <div class="container">
         
         <form>
            <label>Donor_Name</label><br>
            <input type="name" name="txt_name" class="form-control" placeholder="Enter name">
            <br>
            <div class="row">
                <div class="col-sm-6">
                    <label>Blood group</label><br>
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
                        <label>Blood Type</label>
            <select name="Blood Type" class="form-control">
                        <option>Blood_Type</option>
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
                <label>Donation Date</label><br>
                <input type="Date" name="txt_date" class="form-control" max="01-12-2026" >
                 </div>
                <div class="col-sm-6">
                <label>Issue Date</label><br>
                <input type="Date" name="txt_date" class="form-control" max="01-12-2026" min="6-11-2027">
                </div>
            </div>
            <br>
              <label>Issued By</label><br>
              <textarea class="form-control" rows="2" cols="48" ></textarea>
              <br>
              <label>Verification code</label><br>
              <input type="number" name="txt_num" class="form-control" placeholder="Enter only 4 number">
              <br>
              <label>Certification Status</label><br>
              <textarea class="form-control" rows="2" cols="48"></textarea>
              <br>
              <div class="row">
                   <div class="col-sm-6 ">
                    <input type="submit" name="" value="submit" class="btn btn-success w-50">
                    </div>
                    <div class="col-sm-6">
                    <input type="Saved Certification" name="" value="Download" class="btn btn-primary w-50">
                    </div>
                    </div>
               </div>
              
            </form>
        </div>
    </div>
</div>
</body>
</html>
    
