<%-- 

    Document   : User_Sign_Up
    Created on : 14 Jan, 2026, 7:47:19 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><%@include file="Admin_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Sign_Up</title>
    </head>
    <body>
        
    <style>
        body {
            background: url('hand_blood.jpeg') no-repeat center center/cover;
            
           
        }

        .blur-box {
            width: 420px;
            padding: 30px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px rgba(0,0,0,0.2);
            margin-top: 40px;
            margin-left: 40px;
        }

        .form-control {
            background: rgba(255,255,255,0.7);
        }
    </style>
    <script src="validation.js"></script>
  
</head>

<body>

<div class="blur-box">
    <h3 class="text-center mb-4"> User Sign Up</h3>

     <form name="User_Sign_Up" action="User_Sign_Up" method="post"> 
        <div class="mb-3">
            <input type="text" class="form-control" name="txt_name" onkeypress="javascript:return isString(event)" placeholder="Full Name">
        </div>
        
        <div class="mb-3">
        
            <textarea rows="2" cols="48" class="form-control" name="txt_address" placeholder="Address"></textarea>
        </div>

        <div class="mb-3">
            <input type="email" class="form-control" name="txt_email" placeholder="Email">
        </div>

        <div class="mb-3">
            <input type="text" name="txt_contact_no" onkeypress="javascript:return isContactno(event)" maxlength="10" minlength="10" class="form-control" placeholder="Contact No">
        </div>

        <div class="mb-3">
            <input type="password" class="form-control" name="txt_password" placeholder="Password">
        </div>

        <div class="mb-3">
            <select class="form-control" name="txt_Blood_Group">
                <option>Select Blood Group</option>
                <option>A+</option>
                <option>A-</option>
                <option>B+</option>
                <option>B-</option>
                <option>O+</option>
                <option>O-</option>
                <option>AB+</option>
                <option>AB-</option>
            </select>
        </div>
        <div class="mb-3">
            <label>Gender</label><br>
                            <input type="radio"name="txt_gender" value="male"/> male
                            <input type="radio" name="txt_gender" value="female"/>female
                            <input type="radio" name="txt_gender" value="other"/>other
                        </div>

        <button class="btn btn-danger w-100" name="btn_Submit" value="Sign Up">Sign Up</button>
    </form>
</div>

</body>
</html>
