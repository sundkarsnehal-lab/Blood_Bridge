<%-- 
    Document   : Blood_Category
    Created on : 7 Jan, 2026, 10:58:25 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blood Category</title>
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

          <div class="jumbotron" style="margin-top:100px">
              <br/>
         <h2>Blood Category</h2><br> 
         <div class="container">
         
         <form>
            <div class="row">
                <div class="col-sm-12">
                    <label>Blood Group</label>
                    <select name="blood group" class="form-control">
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
           </div>
            <br>
                 <div class="row">
                    <div class="col-sm-12">
                        <label>Blood Type</label>
               <select name="Blood Type" class="form-control">
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
               <label>Description</label><br>
              <textarea class="form-control" rows="1" cols="48"></textarea>
              <br>
              <label>Status</label><br>
              <textarea class="form-control" rows="1" cols="48" name="txt_status"></textarea>
              <br><br>
              <div class="row">
                  <div class="col-sm-12" style="text-align:right">
                    <input type="submit" name="" value="submit" class="btn btn-success btn-block">
                                        
                    </div>
               </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
   
