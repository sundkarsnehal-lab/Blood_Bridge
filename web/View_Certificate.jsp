<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Blood Donation Certificate</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- html2pdf -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

    <style>
        body{
            background: linear-gradient(135deg, #8B0000, #ff4d4d);
            font-family: 'Segoe UI', sans-serif;
        }

        .certificate-wrapper{
            padding:50px 0;
        }

        .certificate{
            background:white;
            width:85%;
            margin:auto;
            padding:50px;
            border:10px solid #b8860b;
            border-radius:20px;
            position:relative;
            box-shadow:0px 0px 30px rgba(0,0,0,0.4);
        }

        .certificate::before{
            content:"Blood Bank";
            position:absolute;
            top:40%;
            left:25%;
            font-size:80px;
            color:rgba(200,0,0,0.08);
            transform:rotate(-30deg);
            z-index:0;
        }

        .certificate-content{
            position:relative;
            z-index:1;
        }

        .logo{
            width:80px;
        }

        .title{
            font-size:42px;
            font-weight:bold;
            color:#8B0000;
        }

        .subtitle{
            font-size:20px;
            margin-top:15px;
        }

        .name{
            font-size:36px;
            font-weight:bold;
            margin:20px 0;
            color:#b30000;
        }

        .details{
            font-size:18px;
            margin-top:20px;
        }

        .signature{
            margin-top:50px;
            display:flex;
            justify-content:space-between;
        }

        .download-btn{
            margin-top:30px;
            background:#8B0000;
            color:white;
        }

        .download-btn:hover{
            background:#5c0000;
            color:white;
        }
    </style>
</head>

<body>
<%
          
Connection cn=null;
    Statement st=null;
    
try
{
 Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Blood_Bridge","root","root");
            st=cn.createStatement();
            String sql="select * from certification_details where Contact_no='"+request.getParameter("mobile")+"' and Donation_Date='"+request.getParameter("date")+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
           
      %>
    <div class="container certificate-wrapper">

    <div id="certificate" class="certificate">
        <div class="certificate-content text-center">

            <!-- Logo -->
            <img src="img1/logo.png" class="logo mb-3" alt="Logo">

            <div class="title">Blood Donation Certificate</div>

            <div class="subtitle">This is to certify that</div>

            <!-- Donor Name -->
            <div class="name"><%=rs.getString("Donor_name")%></div>

            <div class="details">
                <p><b>Blood Group:</b> <%=rs.getString("Blood_Group")%></p>
                <p><b>Blood Type:</b><%=rs.getString("Blood_Type")%></p>
                <p><b>Donation Date:</b> <%=rs.getString("Donation_Date")%></p>
                <p><b>Issue Date:</b><%=rs.getString("Issue_Date")%></p>
                <p><b>Issued By:</b><%=rs.getString("Issued_By")%></p>
            </div>

            <div class="signature">
                
                <div>
                    __Lion's blood bank_____<br>
                    Authorized name
                </div>
            </div>

        </div>
    </div>

    <div class="text-center">
        <button onclick="downloadPDF()" class="btn download-btn">
            Download PDF
        </button>
    </div>

</div>
    <%
    }
      }catch(Exception ex)
      {
       out.println(ex.toString());
      }
    
    %>


<script>
function downloadPDF() {
    var element = document.getElementById('certificate');
    var opt = {
        margin:       0.5,
        filename:     'Blood_Donation_Certificate.pdf',
        image:        { type: 'jpeg', quality: 1 },
        html2canvas:  { scale: 2 },
        jsPDF:        { unit: 'in', format: 'a4', orientation: 'landscape' }
    };

    html2pdf().set(opt).from(element).save();
}
</script>

</body>
</html>