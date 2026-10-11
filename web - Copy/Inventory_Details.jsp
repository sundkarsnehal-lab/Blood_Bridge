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
 
    <body>
      <style type="text/css">
            body
            {
               background-color: tomato;
            }
            .jumbotron{
                border-radius:10px;
                margin-top:30px;
                padding:25px;
            }
       </style>

</head>
<body>
      <div class="row">
          <div class="col-sm-4"></div>
          
          
     <div class="jumbotron">
          <h2 style="text-align:center">Inventory Details</h2>

          <form>
               <div class="row">
                    <div class="col-sm-6">
                    <label>Blood Group</label><br>
                    <input type="text" name="" class="form-control" placeholder="Enter Blood_Group" >
                    </div><br>
                    <div class="col-sm-6">
                    <label>Blood Type</label><br>
               <select class="form-control">
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
                    <input type="number" name="" class="form-control"  placeholder="Enter quantity ">
                    </div><br>
                    <div class="col-sm-6">
                    <label>Bag number</label><br>
                    <input type="number" name="" class="form-control" placeholder="Enter Bag_number">
                    </div>
               </div>
                
                <br>
                <div class="row"> 
                    <div class="col-sm-6">
                    <label>Collection Date</label>
                    <input type="Date" name="txt_date" max="10-01-2026" min="5-01-2026" class="form-control">
                    </div><br>
                    <div class="col-sm-6">
                    <label>Expiry Date</label><br>
                    <input type="Date" name="txt_date" max="12-03-2026" class="form-control">
                   </div>
                </div> 
                 <br><br>
                 <div class="row">
                    <div class="col-sm-6">
                    <label>Status</label><br>
                    <textarea name="Status" row="5" cols="20" class="form-control"></textarea>
                    </div>
                   <div class="col-sm-6">
                   <label>Last Update</label><br>
                   <textarea name="Update" rows="1" cols="20" class="form-control"></textarea> 
                   </div> 
                 </div>  
                <br>
                <label>Location</label><br>
                <input type="radio" name="gender" value="H"/>Hot
                <br>
                <input type="radio" name="gender" value="M"/>Medium
                <br>
                <input type="radio" name="gender" value="C"/>Cold
                <br><br>

                <div class="row">
                  <div class="col-sm-12">
                       <div class="text-right">
                   <input type="submit" name="" value="submit" class="btn btn-success">
                  </div > 
               </div>
     </div>
          </form>
</body>
</html>
   
