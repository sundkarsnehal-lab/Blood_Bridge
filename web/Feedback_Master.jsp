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
        <script src="validation.js"></script>
    </head>
    <body>
        <style>
    body{
    background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
       }
.feedback-box{
    max-width:600px;
    margin:50px auto;
    background:white;
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

<div class="feedback-box">
     <div class="card-header">
                    Feedback Master
                </div> 
    <br>
          
                 <form name="Feedback_Master" action="Feedback_Master" method="post">

  
    <div class="form-group">
        <label>Customer Name</label>
        <input type="text"   name="txt_name" onkeypress="javascript:return isString(event)" class="form-control" placeholder="Enter User Name">
    </div>

  
    <div class="form-group">
        <label>Email</label>
        <input type="email" name="txt_email" class="form-control" placeholder="Enter Email">
    </div>

    
    <div class="form-group">
        <label>Blood Group</label>
        <input type="text" name="txt_Blood_Group"class="form-control" placeholder=" Enter Recieved Blood Type">
    </div>

   
   <div class="star-rating">
  <input type="radio" name="txt_rating" id="star5" value="5">
  <label for="star5">5★</label>

  <input type="radio" name="txt_rating" id="star4" value="4">
  <label for="star4">4★</label>

  <input type="radio" name="txt_rating" id="star3" value="3">
  <label for="star3">3★</label>

  <input type="radio" name="txt_rating" id="star2" value="2">
  <label for="star2">2★</label>

  <input type="radio" name="txt_rating" id="star1" value="1">
  <label for="star1">1★</label>
</div>

    
    <div class="form-group">
        <label>Feedback</label>
        <textarea class="form-control" name="txt_feedback" rows="4" placeholder="Write your feedback"></textarea>
    </div>
                  
   <div class="text-center">
                    <input type="submit" name="btn_submit" value="Feedback" class="btn btn-success btn-lg" >
                    </div>
    </div>
                 </form>

</div>

</body>
</html>
    