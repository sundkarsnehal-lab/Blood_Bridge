<%-- 
    Document   : Add_Blood
    Created on : 30 Jan, 2026, 8:15:51 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Admin_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Blood</title>
        <script src="validation.js"></script>
    </head>
    <body>
        
     <style>
        body {
           background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
            
            justify-content: center;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0,0,0,0.3);
        }

        .card-header {
            background: #dc3545;
            color: white;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            border-radius: 20px;
        }

        .btn-custom {
            background: #dc3545;
            color: white;
            font-weight: bold;
        }

        .btn-custom:hover {
            background: #b02a37;
        }
    </style>
</head>
<body>

<div class="container" style="margin-top:30px">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    🩸 Add Blood Details
                </div>

                <div class="card-body">
                      <form name="Add_Blood" action="Add_Blood" method="post">

                    
                          
                        <div class="mb-3">
                            <label class="form-label">Blood Group</label>
                            <select class="form-control" name="txt_Blood_Group" required>
                                <option value="Blood_Group">Select Blood Group</option>
                                <option>A+</option>
                                <option>A-</option>
                                <option>B+</option>
                                <option>B-</option>
                                <option>AB+</option>
                                <option>AB-</option>
                                <option>O+</option>
                                <option>O-</option>
                            </select>
                        </div>

                        <div class="mb-3">
                        <label class="form-label">Blood Image</label>
                        <input type="file" class="form-control"name="txt_Image" accept="image/*"
                               onchange="previewImage(event,'catPreview')">
                    </div>
                        <div class="mb-3">
                            <a href="Add_Blood.jsp"></a>
                            <label class="form-label">Quantity (in ml)</label>
                            <input type="number" name="txt_Quantity" onkeypress="javascript:return isNumber(event)" class="form-control" placeholder="Enter quantity" required>
                        </div>
                          
                          <div class="mb-3">
                            <a href="Add_Blood.jsp"></a>
                            <label class="form-label">Price</label>
                            <input type="text" name="txt_Price" onkeypress="javascript:return isNumber(event)" class="form-control" placeholder="Enter Price" required>
                        </div>
                      
                        <div class="mb-3">
                            <label class="form-label">Collection Date</label>
                            <input type="date" name="txt_Cdate" class="form-control" required>
                        </div>

                        
                        <div class="mb-3">
                            <label class="form-label">Expiry Date</label>
                            <input type="date" name="txt_Edate" class="form-control" required>
                        </div>

                        
                        <div class="mb-3">
                            <label class="form-label">Blood Status</label>
                            <select class="form-control" name="txt_Status">
                                <option>Available</option>
                                <option>Not Available</option>
                            </select>
                        </div>

                        
                        
                        <div class="d-grid gap-2">
                             <div class="text-right">
                            <button type="Submit" value="Add Blood" name="btn_Submit" class="btn btn-success">Add Blood</button>
                            
                        </div>

                      </form>
                </div>
                          
            </div
        </div>
    </div>
</div>

</body>
</html>
