<%-- 
    Document   : Google_Pay
    Created on : 13 Jan, 2026, 9:06:46 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="User_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Google Pay</title>
        <script src="validation.js"></script>
    </head>
    <body>
         <style>
        body {
            background: linear-gradient(135deg, #e53935, #1e88e5);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .upi-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 30px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>

<div class="upi-card">
    <h3 class="text-center mb-4">Google Pay</h3>

     <form name="Google_Pay" action="Google_Pay" method="post">     
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text"  name="txt_name" onkeypress="javascript:return isString(event)" class="form-control" placeholder="Enter your name" required>
        </div>

        
        <div class="mb-3">
            <label class="form-label">Amount (₹)</label>
            <input type="number" name="txt_amount" class="form-control" placeholder="Enter amount" required>
        </div>

        
        <div class="mb-3">
            <label class="form-label">UPI ID</label>
            <input type="text" name="txt_UPI_ID" onkeypress="javascript:return isAlphanumric(event)" class="form-control" placeholder="Enter UPI ID" required>
        </div>

        
        <div class="d-grid">
            <div class="text-right">
            <button type="submit" class="btn btn-success btn-lg">Pay Now</button>
        </div>
    </form>
</div>

</body>
</html>
    
    
