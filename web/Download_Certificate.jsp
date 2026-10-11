<%-- 
    Document   : Download_Certificate
    Created on : 27 Feb, 2026, 10:20:08 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download Certificate</title>
    </head>
    <body>
       <style>
        body{
            background: linear-gradient(to right, #fbc2eb, #a6c1ee);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card{
            width: 400px;
            padding: 30px;
            border-radius: 15px;
        }

        .btn-danger{
            width: 100%;
        }
    </style>
</head>
<body>
    <form action="View_Certificate.jsp" method="POST">
<div class="card shadow">
    <h4 class="text-center mb-4 text-danger">🩸 Blood Donation Certificate</h4>

    <div class="mb-3">
        <label class="form-label">Donor Mobile Number</label>
        <input type="text" name="mobile" class="form-control" placeholder="Enter Mobile Number">
    </div>

    <div class="mb-3">
        <label class="form-label">Donation Date</label>
        <input type="date" name="date" class="form-control">
    </div>

    <button type="submit" class="btn btn-danger">Download Certificate</button>
</div>


    </form>

</body>
</html>
