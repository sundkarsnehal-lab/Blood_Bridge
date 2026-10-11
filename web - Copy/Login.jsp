<%-- 
    Document   : Login.jsp
    Created on : 1 Jan, 2026, 7:51:09 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Admin_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
   
      <style>
        body{
            margin:150px;
            padding:0px;
            height:100vh;
            background:url("image1.jpg") no-repeat bottom center;
            background-size: contain;
            background-color: #fff;
        }

        .login-box{
            margin-top: 40px;
            background: rgba(255,255,255,0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            background-color:white;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5 login-box">

            <h3 class="text-center text-danger mb-4">Login</h3>

            <form>
                <div class="form-group">
                    <label>Email :</label>
                    <input type="email" class="form-control" placeholder="Enter Your Email">
                </div>

                <div class="form-group">
                    <label>Password :</label>
                    <input type="password" class="form-control" placeholder="Enter Password">
                </div>
                <div class="d-flex justify-content-between mb-3">
          <a href="#" class="text-decoration-none">Forgot password?</a>
        </div>

                <div class="form-group">
                    <label>What is your role :</label><br>
                    <input type="radio" name="role"> Admin <br>
                    <input type="radio" name="role"> Receptionist <br>
                    <input type="radio" name="role"> User
                </div>

                <button class="btn btn-primary">Login</button>
                <a href="Admin_Sign_Up.jsp" class="btn">create new account<a/>
            </form>

        </div>
    </div>
</div>

</body>
</html>