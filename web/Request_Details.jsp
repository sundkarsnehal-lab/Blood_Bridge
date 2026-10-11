<%-- 
    Document   : Request_Details
    Created on : 3 Jan, 2026, 9:19:14 AM
    Author     : sundk
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="User_Navigation.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Details</title>
        <script src="validation.js"></script>
        <style>
            body
            {
                background: linear-gradient(to right, #fbc2eb, #a6c1ee);


            }
            h2
            {
                text-align: center;

            }
            .jumbotron
            {
                margin-top: 50px;
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

        </style>
    </head>
    <body>

        <div class="row">
            <div class="col-sm-4"></div>

            <div class="jumbotron">
                <div class="card-header">
                    🩸 Request Details
                </div>
                <br>

                <form name="Request_Details" action="Request_Details" method="post"> 
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Name</label>
                            <input type="text " name="txt_name" value="<%=session.getAttribute("name")%>" onkeypress="javascript:return isString(event)" class="form-control" placeholder="Enter name">
                        </div>
                        <div class="col-sm-6">
                            <label>Address</label>
                            <textarea name="txt_Address" class="form-control"  rows="2" cols="20" placeholder="Enter Address">
                                <%=session.getAttribute("address")%>
                            </textarea>
                        </div>
                    </div> 
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Gender</label><br>     

                            <input type="text"  name="txt_gender" class="form-control" readonly value="<%=session.getAttribute("gender")%>"/>
                        </div>
                        <div class="col-sm-6">
                            <label>Age</label>
                            <input type="Age" name="txt_age" onkeypress="javascript:return isNumber(event)"minLength="2" maxLength="2" class="form-control" placeholder="Enter Age" required="please enter Age">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-6"> 
                            <label>Blood Group</label>

                            <input type="text"  name="txt_Blood_Group" class="form-control" readonly value="<%=session.getAttribute("BGroup")%>"/>

                        </div>

                        <div class="col-sm-6">
                            <label >Units</label>
                            <input type="number" name="txt_units" value="1" onchange="sum();" id="qty" onkeypress="javascript:return isNumber(event)"  class="form-control" placeholder="Enter Units">
                            <input type="hidden" name="price" id="price" value="<%=session.getAttribute("price")%>"/>


                            <script>
                                sum();
                                function sum() {
                                    var txtFirstNumberValue = document.getElementById('qty').value;
                                    var txtSecondNumberValue = document.getElementById('price').value;
                                    var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue);
                                    if (!isNaN(result)) {
                                        document.getElementById('total_price').value = result;
                                    }
                                }
                            </script>
                        </div>
                    </div>
                    <br>
                    <div class="row"> 
                        <div class="col-sm-6">
                            <label>Blood Type</label>   
                            <select class="form-control" name="txt_Blood_Type">
                                <option selected value="<%=session.getAttribute("category")%>"><%=session.getAttribute("category")%></option>
                            </select>
                        </div>

                        <div class="col-sm-6">
                            <label>Request Date</label>
                            <%
                                Date todate = new Date();

                                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                                String date = format.format(todate);
                            %>
                            <input type="Date"  name="txt_date" readonly value="<%=date%>" class="form-control"/>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Contact number</label>
                            <input type="text"  name="txt_Contact_no" value="<%=session.getAttribute("contactno")%>" onkeypress="javascript:return isContactno(event)" class="form-control"  placeholder="Enter number">
                        </div>
                        <div class="col-sm-6">
                            <label>Price</label>
                            <input type="text"  value="<%=session.getAttribute("price")%>" name="total_price"  id="total_price"  class="form-control"  placeholder="Enter number">

                        </div>
                    </div>
                    <br>

                    <div class="text-right">
                        <input type="submit" name="btn_Submit" value="Submit" class="btn btn-success btn-lg">
                    </div>
            </div>
        </div>
    </form>          
</div>


</body>          
</html>