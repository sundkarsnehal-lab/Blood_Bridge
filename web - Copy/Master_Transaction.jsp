<%-- 
    Document   : Master_Transaction
    Created on : 7 Jan, 2026, 11:14:55 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="User_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Master Transaction</title>
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
               margin-top:90px;
              
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

     <div class="jumbotron" style="width:400px">
         <br/>
         <h2>Master_Transaction</h2><br> 
         <div class="container">
         
         <form>
            <label>User Name</label><br>
            <input type="Name" name="txt_name" class="form-control" placeholder="Enter name">
            <br>
            <label>Amount</label><br>
            <input type="number" name="txt_num" class="form-control" placeholder="Enter Amount">
            <br>
            <label>Payment Method</label>
             <select class="form-control">
                        <option>Payment Method</option>
                        <option>UPI</option>
                        <option>Cash on Delivery</option>
                        <option>Phone pay</option>
                        
               </select> 
               <br><br>
               <label>Email Address</label><br>
              <textarea class="form-control" rows="2" cols="48"></textarea>
              <br>
               <label>Payment Date</label><br>
               <input type="Date" name="txt_date" class="form-control" max="01-12-2026" min="6-11-2027">
               <br>
                <label>Payment Status</label><br>
              <textarea class="form-control" rows="2" cols="48"></textarea>
              <br>
              
                <div class="text-right">
                    <input type="submit" name="" value="submit" class="btn btn-success">
                    
                </div>
            </div>
        </div>

     </div>

        </div>
        <div class="col-sm-3"></div>
    </div>
    

</body>
</html>

