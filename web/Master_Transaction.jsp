<%-- 
    Document   : Master_Transaction
    Created on : 7 Jan, 2026, 11:14:55 PM
    Author     : sundk
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="User_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Master Transaction</title>
        <script src="validation.js"></script>
    </head>
    <body>
         <style>
            body
            {
               background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
               
            }
            .jumbotron
            {
               background-color:white;
               margin-top:90px;
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
            h2
            {
                text-align: center;
            }
       </style>
</head>
<body>

     <div class="row">
          <div class="col-sm-4"></div>

     <div class="jumbotron">
          <div class="card-header">
                    🩸 Master Transaction
                </div>
         <br/>
         
         
         
         <form name="Master_Transaction" action="Master_Transaction" method="post"> 
             <div class="row">
                 <div class="col-sm-6">
                 <label>User Name</label><br>
                 <input type="Name" name="txt_name" value="<%=session.getAttribute("name")%>" onkeypress="javascript:return isString(event)"  class="form-control" placeholder="Enter name">
                 </div>
                 <div class="col-sm-6">
                 <label>Amount</label><br>
                 <input type="text" name="txt_amount" value="<%=session.getAttribute("price")%>" class="form-control" placeholder="Enter Amount">
                 </div>
             </div>    
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Payment Method</label>
                <br>
                 &nbsp;&nbsp;&nbsp;&nbsp;            
                 <input type="radio" name="payment" value="UPI"/>UPI<br>
                &nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="payment" value="Cash"/>Cash On Delivery<br>
                   
                            
                </div>
                <div class="col-sm-6">
               <label>Email</label><br>
               <input type="Email" name="txt_email" value="<%=session.getAttribute("email")%>"  class="form-control">
                </div>
            </div>    
              <br>
              <div class="row">
                  <div class="col-sm-6">
                  <label>Payment Date</label><br>
                  <%
                  Date todate=new Date();
                  SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
                  String date=format.format(todate);
                  %>
                  <input type="Date" name="txt_date" value="<%=date%>" class="form-control" >
                  </div>
                  <div class="col-sm-6">
                     
              </div>
              </div>
              <br>
              
                <div class="text-right">
                    <button type="submit" name="btn_submit" value="Pay" class="btn btn-success btn-lg">Pay</button>
                    
                </div>
            </div>
        </div>
    </form>


     </div>

        </div>
        <div class="col-sm-3"></div>
    </div>
   
    

</body>
</html>

