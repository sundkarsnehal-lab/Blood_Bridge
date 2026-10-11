<%-- 
    Document   : Login.jsp
    Created on : 1 Jan, 2026, 7:51:09 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css"/>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script src="validation.js"></script>
   
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
    <br>
<div class="container">
   
    <div class="row justify-content-center">
        <div class="col-md-5 login-box">
           

            <h3 class="text-center text-danger mb-4">Login</h3>

            <form name="Login" action="Login" method="post">  
                <div class="form-group">
                    <label>Email :</label>
                    <input type="email" name="txt_email" class="form-control" placeholder="Enter Your Email">
                </div>

                <div class="form-group">
                    <label>Password :</label>
                    <input type="password" name="txt_password"  minlength="8" maxlength="10" class="form-control" placeholder="Enter Password">
                </div>
                
                <div class="form-group">
                    <label>What is your role :</label><br>
                    <input type="radio" name="txt_role" value="Admin"> Admin <br>
                    <input type="radio" name="txt_role" value="Receptionist"> Receptionist <br>
                    <input type="radio" name="txt_role" value="User"> User
                </div>

                <button  type="submit" value="Login" class="btn btn-primary" name="btn_Submit">Login</button>
                <a href="User_Sign_Up.jsp" class="btn" name="btn_Submit">create new account<a/>
                   
            </form>

        </div>
    </div>
</div>

</body>
</html>