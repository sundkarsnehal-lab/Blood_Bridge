<%-- 
    Document   : Feedback_Master
    Created on : 7 Jan, 2026, 11:22:28 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="User_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>feedback Master</title>
    </head>
    <body>
        <style>
body{
    background:tomato;
}
.feedback-box{
    max-width:600px;
    margin:50px auto;
    background:whitesmoke;
    padding:25px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}
.btn-submit{
    background:#b08968;
    color:white;
}
.btn-submit:hover{
    background:#9c6f4a;
}
</style>
</head>

<body>

<div class="feedback-box">
    <h4 class="text-center mb-4">Feedback Master</h4>

  
    <div class="form-group">
        <label>Customer Name</label>
        <input type="text" class="form-control" placeholder="Enter User Name">
    </div>

  
    <div class="form-group">
        <label>Email</label>
        <input type="email" class="form-control" placeholder="Enter Email">
    </div>

    
    <div class="form-group">
        <label>Blood Group</label>
        <input type="text" class="form-control" placeholder=" Enter Recieved Blood Type">
    </div>

   
   <div class="star-rating">
  <input type="radio" name="rating" id="star5" value="5">
  <label for="star5">1★</label>

  <input type="radio" name="rating" id="star4" value="4">
  <label for="star4">2★</label>

  <input type="radio" name="rating" id="star3" value="3">
  <label for="star3">3★</label>

  <input type="radio" name="rating" id="star2" value="2">
  <label for="star2">4★</label>

  <input type="radio" name="rating" id="star1" value="1">
  <label for="star1">5★</label>
</div>

    
    <div class="form-group">
        <label>Feedback</label>
        <textarea class="form-control" rows="4" placeholder="Write your feedback"></textarea>
    </div>

   
    <div class="text-center">
        <button class="btn btn-success px-4">Submit</button>
 
    </div>

</div>

</body>
</html>
    