
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
                  min-height: 100vh;
                  background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
            }
            .jumbotron
            {
               background-color:white;
               border-radius:10px;
               margin-left:auto;
               margin-right:auto;
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
          

          <div class="jumbotron" style="margin-top:30px">
        <div class="card-header">
                    🩸 Blood Category
                </div>
              </br>
       
         
         <form name="Blood_Category" action="Blood_Category" method="post">
            <div class="row">
                <div class="col-sm-12">
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
           </div>
            <br>
            <div class="mb-3">
                        <label class="form-label">Blood Image</label>
                        <input type="file" class="form-control"name="txt_Image" accept="image/*"
                               onchange="previewImage(event,'catPreview')">
                    </div>
            <br>
                 <div class="row">
                    <div class="col-sm-12">
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
               <label>Description</label><br>
              <textarea name="txt_Description" class="form-control" rows="2" cols="48"></textarea>
              <br>
              <label>Status</label><br>
              <select name="txt_Status" class="form-control">
                        <option>Available</option>
                        <option>Not Available</option>
                        </select>
              </br>
              <div class="row">
                  <div class="col-sm-12" style="text-align:right">
                    <input type="submit" name="btn_Submit" value="Submit" class="btn btn-success btn-lg">
                                        
                    </div>
               </div>
            </form>
       
    </div>
</div>
</body>
</html>
   
