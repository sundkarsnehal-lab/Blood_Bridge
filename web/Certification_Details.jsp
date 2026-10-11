<%-- 
    Document   : Certification_Details
    Created on : 7 Jan, 2026, 10:46:57 PM
    Author     : sundk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Receptionist_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Certification Details</title>
        <script src="validation.js"></script>
    </head>
    <body>
          <style>
            body
            {
               background: linear-gradient(to right, #fbc2eb, #a6c1ee);
     
               
            }
            .jumbotron
            {
               background-color:white;
               margin-top:30px;
               border-radius:10px;
              background-color: white;
            }
            .card-header {
            background: #dc3545;
            color: white;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            border-radius: 15px 15px 0 0;
        }
         
            h2
            {
                text-align: center;
            }
       </style>
</head>
<body>

     <div class="row">
          <div class="col-sm-4"></div>

     <div class="jumbotron" style="width:45%" >
          <div class="card-header">
                    🩸 Certification Details
                </div><br> 
         
         
         <form name="Certification_Details" action="Certification_Details" method="post">
            <label>Donor Name</label><br>
            <input type="text" value="<%=session.getAttribute("name")%>" name="txt_name" class="form-control" onkeypress="javascript:return isString(event)" class="form-control" placeholder="Enter name">
            <br>
            <div class="row">
                <div class="col-sm-6">
                    <label>Blood group</label><br>
            <select name="txt_Blood_Group" class="form-control">
                        <option selected value="<%=session.getAttribute("blood_group")%>"><%=session.getAttribute("blood_group")%></option>
                      
            </select> 
            </div>
                    <div class="col-sm-6">
                        <label>Blood Type</label>
            <select name="txt_Blood_Type" class="form-control">
                          <option selected value="<%=session.getAttribute("blood_type")%>"><%=session.getAttribute("blood_type")%></option>
                      
            </select>
                    </div>
            </div> 
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Donation Date</label><br>
                <input type="Date" value="<%=session.getAttribute("date")%>" name="txt_Ddate" class="form-control" max="01-12-2026" >
                 </div>
                <div class="col-sm-6">
                <label>Issue Date</label><br>
                <input type="Date" name="txt_Idate" class="form-control" max="01-12-2026" min="6-11-2027">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-6">
                <label>Verification code</label><br>
                <input type="text" name="txt_Code" class="form-control" onkeypress="javascript:return isNumber(event)" minlength="4" maxlength="4" class="form-control" placeholder="Enter only 4 number">    
               
                </div>
                <div class="col-sm-6">
                <label>Certification Status</label><br>
                <textarea class="form-control" name="txt_Status" rows="2" cols="48"></textarea>   
                </div>
                </div>
              <br>
              <div class="row">
                   <div class="col-sm-6">
                    <label>Contact number</label> <br>
                    <input type="text" name="txt_contact_no" value="<%=session.getAttribute("contact")%>" onkeypress="javascript:return isContactno(event)" maxlength="10" minlength="10" class="form-control" placeholder="Enter number">
                    </div>
              <div class="col-sm-6">
              <label>Issued By</label><br>
              <textarea class="form-control" name="txt_Issued" rows="2" cols="48" ></textarea>
              </div>
              </div>
              <br>
              
              <div class="row">
                   <div class="col-sm-12 ">
                       <div class="text-center">
                    <input type="submit" name="btn_Submit" value="Submit" class="btn btn-success btn-lg">
                    </div>
                   </div>
                    
                    </div>
               </div>
              
            </form>
        
    </div>
</div>
</body>
</html>
    
