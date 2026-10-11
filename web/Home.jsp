<%-- 
    Document   : Home
    Created on : 23 Feb, 2026, 8:08:42 PM
    Author     : sundk
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blood Bridge - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body{
            font-family: Arial, sans-serif;
        }

        /* Navbar */
        .navbar{
            background: linear-gradient(45deg, #b30000, #ff1a1a);
        }
        .navbar a{
            color:white !important;
            font-weight:bold;
        }

        /* Hero Section */
        .hero{
            height: 90vh;
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
                        url('blood.jpg');
            background-size: cover;
            background-position: center;
            color:white;
            display:flex;
            align-items:center;
            justify-content:center;
            text-align:center;
        }

        .hero h1{
            font-size:55px;
            font-weight:bold;
        }

        .btn-custom{
            background:#ff1a1a;
            color:white;
            border:none;
            padding:10px 25px;
            font-weight:bold;
            border-radius:25px;
        }

        .btn-custom:hover{
            background:#b30000;
        }

        /* Section */
        .section{
            padding:60px 20px;
        }

        .card{
            border:none;
            box-shadow:0 4px 15px rgba(0,0,0,0.2);
            transition:0.3s;
        }

        .card:hover{
            transform:scale(1.05);
        }

        footer{
            background:#b30000;
            color:white;
            padding:15px;
            text-align:center;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
  <div class="container">
    <a class="navbar-brand" href="#">? Blood Bridge</a>
    <div>
      <a class="nav-link d-inline" href="#">Home</a>
      <a class="nav-link d-inline" href="#">Donate</a>
      <a class="nav-link d-inline" href="#">Request</a>
      <a class="nav-link d-inline" href="#">Contact</a>
    </div>
  </div>
</nav>

<!-- Hero Section -->
<div class="hero">
    <div>
        <h1>Donate Blood, Save Life</h1>
        <p>Be the reason for someone's heartbeat ??</p>
        <button class="btn btn-custom mt-3">Become Donor</button>
    </div>
</div>

<!-- About Section -->
<div class="container section text-center">
    <h2 class="mb-4">Why Blood Bridge?</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card p-4">
                <h4>Easy Registration</h4>
                <p>Register as donor in just few steps.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card p-4">
                <h4>Quick Search</h4>
                <p>Find blood donors instantly.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card p-4">
                <h4>Secure & Trusted</h4>
                <p>100% safe and verified donors.</p>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    © 2026 Blood Bridge | All Rights Reserved
</footer>

</body>
</html>