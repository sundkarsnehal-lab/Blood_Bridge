<%-- 
    Document   : Payment_Successful
    Created on : 14 Feb, 2026, 3:56:56 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="User_Navigation.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Successful</title>
    </head>
    <body>
        <style>
    body{
        background: linear-gradient(135deg, #e53935, #1e88e5);
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    .success-box{
        background: #fff8f0;
        padding: 40px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0 5px 15px rgba(0,0,0,0.3);
    }
    .success-icon{
        font-size: 60px;
        color: green;
    }
</style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="success-box">
                <div class="success-icon">✔</div>
                <h2 class="mt-3 text-success">Payment Successful!</h2>
                <p class="mt-3">Thank you for your payment 🩸</p>
                <p>Your order has been placed successfully.</p>

                <a href="User_My_Request.jsp" class="btn btn-success mt-3">My Blood Bookings</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
   
