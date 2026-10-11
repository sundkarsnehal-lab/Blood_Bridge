<%-- 
    Document   : Phone_pay
    Created on : 13 Jan, 2026, 9:04:12 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <link rel="stylesheet" href="css/bootstrap.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Phone Pay</title>
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
            
            .qr-img
            {
                width:180px;
                height: 180px;
                object-fit:contain;
                margin:15px auto;
                display:block;
            }
            
          
        }
    </style>
</head>
<body>

<div class="upi-card">
    <h3 class="text-center mb-4"> Phone Pay</h3>

    <form name="Phone_Pay" action="Phone_Pay" method="post">
      
        <img src="img1/QR.png" alt="QR code" class="qr-img">
        
       
        <div class="mb-3">
            <label class="form-label">Amount (₹)</label>
            <input type="text" class="form-control" value="<%=session.getAttribute("price")%>"  name="txt_amount" placeholder="Enter amount" required>
        </div>

       
        
        <div class="mb-3">
            <label class="form-label">UPI ID</label>
            <input type="text" name="txt_UPI_ID" class="form-control" placeholder="Enter UPI ID" required>
        </div>
        <br>
        
        
        
        <div class="d-grid">
            <div class="text-center">
                
                <a href="Payment_Successful.jsp" class="text-decoration-none" class="btn-btn-success">Pay Now</a><br>
             
        </div>
    </form>
</div>

</body>
</html>
    

