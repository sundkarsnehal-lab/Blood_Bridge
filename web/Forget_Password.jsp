<%-- 
    Document   : Forget_Password
    Created on : 20 Jan, 2026, 9:11:39 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="User_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget password</title>
        <script src="validation.js"></script>
    </head>
    <style>
        body {
        background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
        }
        .Forget{
            background: #FFFFFF;
            padding:30px;
            border-radius:10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
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
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="Forget Password">
              <div class="card-header">
                     Forget Password
                </div>
                <br>
                 <form name="Forget_Password" action="Forget_Password" method="post">
                   <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" class="form-control" name="txt_email" placeholder="Enter Email">
                    </div>
                         <div class="mb-3">
                        <label class="form-label">New Password</label>
                        <input type="password" name="txt_Npassword" minlength="8" maxlength="10" class="form-control" placeholder="Enter Password">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Confirm Password</label>
                        <input type="password" name="txt_Cpassword"  minlength="8" maxlength="10" class="form-control" placeholder="Enter Password">
                    </div>
                                    
                    <div class="text-right">
                        <button type="submit" class="btn btn-primary px-4">Next</button>
                      
                    </div>
                </form>

            </div>

        </div>
    </div>
</div>

</body>
</html>
    
