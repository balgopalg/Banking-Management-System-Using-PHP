<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank of Bhadrak</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="/banking/assets/javascript/app.js"></script>
    <?php
    require $_SERVER['DOCUMENT_ROOT'] . "/banking/assets/php/config.php";
    require_once $_SERVER['DOCUMENT_ROOT'] . "/banking/assets/php/prac.php";
    if (isset($_POST['submit'])) {
        session_start();
        $email = strtolower($_POST['email']);
        $pass = $_POST['password'];
        if ($email == '' || $pass == '') {
            echo "<script>alert('invalid');</script>";
            exit();
        }

        if ($email == 'admin' && $pass == 'admin') {
            $_SESSION["isLoggedin"] = true;
            $_SESSION["lastLogin"] = time();
            $_SESSION["email"] = $email;
            header("location: ./components/admin/admin_dashboard.php");
        } else {
            $error_message = 'Please enter valid email and password';
        }
    }

    ?>
</head>

<body style="flex-direction: column;">
    <nav class="navbar login-page">
        <div class="top-nav">
            <div>
                <a href="#">
                    <img src="./images/logo.jpg" alt="">
                    <p>Bank Of Bhadrak</p>
                </a>
            </div>
            <div class="help-line">
                <i class="fa-solid fa-phone"></i>
                <div>
                    National Helpline No
                    <br>
                    <a href="">
                        +918260429141
                    </a>
                </div>
            </div>
        </div>
    </nav>
    <div class="bottom-nav">
        <div class="signin s1">
            <ul>
                <li><a href="/banking/index.php">HOME</a></li>
                <li><a href="/banking/components/extra/about-us.php">ABOUT US</a></li>
                <li><a href="/banking/components/extra/products.php">PRODUCTS</a></li>
                <li><a href="/banking/components/extra/rates.php">RATES</a></li>
                <li><a href="/banking/components/extra/contactus.php">CONTACT US</a></li>
            </ul>
        </div>
        <div class="dropdown login-page">
            <span class="material-symbols-outlined users">account_circle</span>
            <div class="items">
                <a href="customer_login.php">Customer</a>
                <a href="employee_login.php">Staff</a>
                <a href="admin_login.php">Admin</a>
            </div>
        </div>
    </div>
    <main class="clogin-main" style="height:355px;">
        <div class="bank-title">
            <h3>Welcome to Bank of Bhadrak</h3>
            <h1>ADMIN LOGIN</h1>
        </div>
        <div class="wrapper">
            <section class="form login">
                <form action="admin_login.php" method="POST" enctype="multipart/form-data" autocomplete="off">
                    <div class="error-text"></div>
                    <div class="field input">
                        <label>Email Address</label>
                        <input type="text" name="email" placeholder="Enter your admin email" required>
                    </div>
                    <div class="field input">
                        <label>Password</label>
                        <input type="password" name="password" placeholder="Enter your password" required>
                        <i class="fas fa-eye"></i>
                    </div>
                    <script src="/banking/assets/javascript/pass-show-hide.js"></script>
                    <div class="field button">
                        <input type="submit" name="submit" value="Log in">
                    </div>
                </form>
            </section>
        </div>
    </main>
    <footer class="login-page">
        <p>&copy; 2024 Bank of Bhadrak. All rights reserved. |
            <a href="/banking/components/extra/about-us.php">About Us</a> |
            <a href="/banking/components/extra/products.php">Services</a> |
            <a href="/banking/components/extra/faqs.php">FAQs</a> |
            <a href="/banking/components/extra/terms-conditions.php">Terms and Conditions</a> |
            <a href="/banking/components/extra/privacy-policy.php">Privacy Policy</a>
        </p>
    </footer>
</body>

</html>
<?php
if (isset($error_message)) {
    echo "<script>var err = document.getElementsByClassName('error-text')[0];
        err.innerText = '$error_message';
        err.style.display='block';
        </script>";
}
?>