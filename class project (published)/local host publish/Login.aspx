<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final_project.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Class Attendance A&S | Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Normalize CSS -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/main.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="css/all.min.css">
    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="fonts/flaticon.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Modernize js -->
    <script src="js/modernizr-3.6.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <!-- Preloader Start Here -->
    <div id="preloader"></div>
    <!-- Preloader End Here -->
    <!-- Login Page Start Here -->
    <div class="login-page-wrap">
        <div class="login-page-content">
            <div class="login-box">
                <div class="item-logo">
                    <img src="img/logo2.png" alt="logo">
                </div>
                <div action="login.aspx" class="login-form">
                    <div class="form-group">
                        <label>Email</label>
                        <input runat="server" id="email" type="text" required="email"  placeholder="Enter Email" class="form-control"/>
                        <i class="far fa-envelope"></i>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input runat="server" id="pass" type="text" placeholder="Enter password" class="form-control"/>
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="form-group d-flex align-items-center justify-content-between">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="remember-me">
                            <label for="remember-me" class="form-check-label">Remember Me</label>
                        </div>
                        
                        <a href="#" class="forgot-btn">Forgot Password?</a>
                    </div>
                    <div class="form-group">
                        <a runat="server" id="errore" class="forgot-btn">Wrong Email or password !</a>
                        <asp:LinkButton CssClass="login-btn" ID="loginn" runat="server" OnClick="loginn_Click" Text="Login" />
                        <%--<button  type="submit" class="login-btn">Login </button>--%>
                    </div>
                </div>
                
            </div>
            <div class="sign-up">Don't have an account ? <a href="sign-up.aspx">Signup now!</a></div>
        </div>
    </div>
    <!-- Login Page End Here -->
    <!-- jquery-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Scroll Up Js -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- Custom Js -->
    <script src="js/main.js"></script>
        </div>
    </form>
</body>
</html>
