<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign-up.aspx.cs" Inherits="Final_project.sign_up" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Class Attendance A&S | Sign up</title>
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
                        <label>Full name</label>
                        <input type="text" runat="server" required="required" id="name" placeholder="Enter Full name" class="form-control"/>
                        <i class="far "></i>
                    </div>
                  
                    <div class="form-group">
                        <label>Email</label>
                        <input type="Email" runat="server" required="required" id="email" placeholder="Enter your mail" class="form-control"/>
                        
                        <i class="far fa-envelope"></i>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="text" runat="server" required="required" id="pass" placeholder="Enter password" class="form-control"/>
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="ui-alart-box">
                        <div class="icon-color-alart">
                             <div runat="server" id="confirmed" class=" alert icon-alart bg-fb2" role="alert">
                                    <i class="fas fa-exclamation bg-fb3"></i>
                           <asp:Label  Text="Account Created! Please Login." runat="server" />
                                    
                                </div>
                        <div runat="server" id="validmail" class=" alert icon-alart bg-pink2" role="alert">
                                    <i class="fas fa-times bg-pink3"></i>
                            <asp:Label  Text="Email already Exist! Please Login." runat="server" />
                                    
                                </div>
                        </div>
                        
                    </div>
                    <div class="form-group ui-alart-box">
                      
                        <asp:LinkButton runat="server" CssClass="login-btn" ID="signup" OnClick="Unnamed_Click" Text="Sign up" />
                      <%--  <button  type="submit" class="login-btn">Sign Up </button>--%>
                    </div>
                </div>
                
            </div>
            <div class="login-box">Already have account ? <a href="login.aspx">Login now!</a></div>
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
