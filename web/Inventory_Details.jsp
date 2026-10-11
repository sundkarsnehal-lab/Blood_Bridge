<%-- 
    Document   : Inventory_Details
    Created on : 7 Jan, 2026, 9:50:12 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Details</title>
        <script src="validation.js"></script>
 
    <body>
      <style>
            body
            {
               background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
     
            }
            .jumbotron{
                border-radius:10px;
                margin-top:30px;
                padding:25px;
                width:45%;
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
          
          
     <div class="jumbotron">
          <div class="card-header">
                    🩸 Inventory Details
                </div>
         <br>

           <form name="Inventory_Details" action="Inventory_Details" method="post">     
               <div class="row">
                    <div class="col-sm-6">
                    <label>Blood Group</label><br>
                    <select class="form-control" name="txt_Blood_Group">
                        <option>O+</option>
                        <option>O-</option>
                        <option>A+</option>
                        <option>A-</option>
                        <option>B+</option>
                        <option>B-</option>
                        <option>AB+</option>
                        <option>AB-</option>
                </select> 
                    </div><br>
                    <div class="col-sm-6">
                    <label>Blood Type</label><br>
               <select class="form-control" name="txt_Blood_Type">
                        <option>Whole Blood</option>
                        <option>Cryo(Cryoprecipitate)</option>
                        <option>Plasma</option>
                        <option>Plasma Contains</option>
                        <option>WBC</option>
                        <option>RBC</option>
                        <option>Platelets</option>
                </select> 
                    </div>
               </div> <br>    
                <div class="row">
                    <div class="col-sm-6">
                    <label>Quantity</label><br>
                    <input type="text" name="txt_quantity" onkeypress="javascript:return isNumber(event)" class="form-control"  placeholder="Enter quantity ">
                    </div><br>
                    <div class="col-sm-6">
                    <label>Bag number</label><br>
                    <input type="text" name="txt_Bnumber" onkeypress="javascript:return isNumber(event)" class="form-control" placeholder="Enter Bag Number">
                    </div>
               </div>
                
                <br>
                <div class="row"> 
                    <div class="col-sm-6">
                    <label>Collection Date</label>
                    <input type="Date" name="txt_Cdate" max="10-01-2026" min="5-01-2026" class="form-control">
                    </div><br>
                    <div class="col-sm-6">
                    <label>Expiry Date</label><br>
                    <input type="Date" name="txt_Edate" max="12-03-2026" class="form-control">
                   </div>
                </div> 
                 <br><br>
                 <div class="row">
                    <div class="col-sm-6">
                    <label>Status</label><br>
                    <textarea name="txt_Status" row="5" cols="20" class="form-control"></textarea>
                    </div>
                   <div class="col-sm-6">
                   <label>Last Update</label><br>
                   <textarea name="txt_Update" rows="1" cols="20" class="form-control"></textarea> 
                   </div> 
                 </div>  
                <br>
                <label>Location</label><br>
                <input type="radio" name="txt_location" value="Hot"/>Hot
                <br>
                <input type="radio" name="txt_location" value="Medium"/>Medium
                <br>
                <input type="radio" name="txt_location" value="Cold"/>Cold
                <br><br>

                <div class="row">
                  <div class="col-sm-12">
                       <div class="text-center">
                           <button type="submit" name="btn_submit" value="Submit" class="btn btn-success btn-lg">Submit</button>
                  </div > 
               </div>
     </div>
          </form>
</body>
</html>
   
