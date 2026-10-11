<%-- 
    Document   : Reports
    Created on : 5 Mar, 2026, 10:59:40 AM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/bootstrap.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Reports </title>
    </head>
    <body>
    <title>Reports Page</title>
    <style>
       

body{
    margin:0;
    font-family: Arial, sans-serif;
    background:#f8f9fa;
}



.header{
    background:#b30000;
    color:white;
    padding:20px;
    text-align:center;
    font-size:28px;
    font-weight:bold;
    letter-spacing:1px;
}



.container{
    display:flex;
    justify-content:center;
    align-items:center;
    flex-direction:column;
    margin-top:60px;
}



.report-btn{
    width:260px;
    padding:15px;
    margin:12px;
    font-size:16px;
    border:none;
    border-radius:8px;
    background:#e60000;
    color:white;
    cursor:pointer;
    transition:0.3s;
    box-shadow:0 4px 8px rgba(0,0,0,0.1);
}

.report-btn:hover{
    background:#990000;
    transform:scale(1.05);
}

</style>
</head>

<body>
    <form action="View_report.jsp" method="post">
<div class="header">
🩸 Blood Bank Reports
</div>

<div class="container">

<button type="submit" name="btn" value="Donor Report" class="report-btn">Donor Report</button>
<button  type="submit" name="btn" value="Add category Report" class="report-btn">Add Category Report</button>
<button  type="submit" name="btn" value="Master Transaction Report" class="report-btn">Master Transaction Report</button>
<button type="submit" name="btn" value="Camp Report" class="report-btn">Camp Report</button>
<button type="submit" name="btn" value="Certification Report" class="report-btn">Certification Report</button>

</div>
    </form>
</body>
</html>

    