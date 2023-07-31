<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add-class.aspx.cs" Inherits="Final_project.add_class" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add Class</title>
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
    <!-- Select 2 CSS -->
    <link rel="stylesheet" href="css/select2.min.css">
    <!-- Date Picker CSS -->
    <link rel="stylesheet" href="css/datepicker.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">

    <!-- Modernize js -->
    <script src="js/modernizr-3.6.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div id="preloader"></div>

        <div id="wrapper" class="wrapper bg-ash">
            <div class="navbar navbar-expand-md header-menu-one bg-light">
            <div class="nav-bar-header-one">
                <div class="header-logo">
                    <a href="index.aspx">
                        <img src="img/logo.png" alt="logo">
                    </a>
                </div>
                  <div class="toggle-button sidebar-toggle">
                    <button type="button" class="item-link">
                        <span class="btn-icon-wrap">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="d-md-none mobile-nav-bar">
               <button class="navbar-toggler pulse-animation" type="button" data-toggle="collapse" data-target="#mobile-navbar" aria-expanded="false">
                    <i class="far fa-arrow-alt-circle-down"></i>
                </button>
                <button type="button" class="navbar-toggler sidebar-toggle-mobile">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
            <div class="header-main-menu collapse navbar-collapse" id="mobile-navbar">
                <ul class="navbar-nav">
                    <li class="navbar-item header-search-bar">
                        <div class="input-group stylish-input-group">
                            <span class="input-group-addon">
                                <button type="submit">
                                    
                                </button>
                            </span>
                            
                        </div>
                    </li>
                </ul>
               <ul class="navbar-nav">
                    <li class="navbar-item dropdown header-admin">
                        <a class="navbar-nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">
                            <div class="admin-title">
                                <h5 runat="server" id="userid1" class="item-title">User</h5>
                               
                            </div>
                            <div class="admin-img">
                                <img src="img/figure/admin.jpg" alt="Admin">
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="item-header">
                                <h6 runat="server" id="userid" class="item-title">User</h6>
                            </div>
                            <div class="item-content">
                                <ul class="settings-list">
                                    <li><a href="#"><i class="flaticon-user"></i>My Profile</a></li>
                                    <li><a href="#"><i class="flaticon-gear-loading"></i>Account Settings</a></li>
                                    <li><a href="login.aspx"><i class="flaticon-turn-off"></i>Log Out</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    </ul>
        </div>


            </div>


            <%--Page area --%>
            <div class="dashboard-page-one">
            <!-- Sidebar Area Start Here -->
           <div class="sidebar-main sidebar-menu-one sidebar-expand-md sidebar-color">
               <div class="mobile-sidebar-header d-md-none">
                    <div class="header-logo">
                        <a href="index.aspx"><img src="img/logo1.png" alt="logo"></a>
                    </div>
               </div>
                <div class="sidebar-menu-content">
                    <ul class="nav nav-sidebar-menu sidebar-toggle-view">
                        <li class="nav-item ">
                            <a href="index.aspx" class="nav-link"><i class="flaticon-dashboard"></i><span>Dashboard</span></a>
                          
                        </li>
                    

                       
                      
                        
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-maths-class-materials-cross-of-a-pencil-and-a-ruler"></i><span>Class</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="all-student.aspx" class="nav-link"><i class="fas fa-angle-right"></i>All Students</a>
                                </li>
                                <li class="nav-item">
                                    <a href="all-class.aspx" class="nav-link"><i class="fas fa-angle-right"></i>Add New Student</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-class.aspx" class="nav-link"><i class="fas fa-angle-right"></i>Add New Class</a>
                                </li>
                            </ul>
                        </li>


                        
                        <li class="nav-item">
                            <a href="class-routine.aspx" class="nav-link"><i class="flaticon-calendar"></i><span>Class Routine</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="student-attendence.aspx" class="nav-link"><i class="flaticon-checklist"></i><span>Attendence</span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a href="account-settings.aspx" class="nav-link"><i class="flaticon-settings"></i><span>Account</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Sidebar Area End Here -->
            <div class="dashboard-content-one">


             <!-- Breadcubs Area Start Here -->
                <div class="breadcrumbs-area">
                    <h3>Classes</h3>
                    <ul>
                        <li>
                            <a href="index.aspx">Home</a>
                        </li>
                        <li>Add New Class</li>
                    </ul>
                </div>
                <!-- Breadcubs Area End Here -->
                <!-- Add Class Area Start Here -->
                <div class="card height-auto">
                    <div class="card-body">
                        <div class="heading-layout1">
                            <div class="item-title">
                                <h3>Add New Class Schedule</h3>
                            </div>
                         
                        </div>
                        <div class="new-added-form">
                            <div class="row">
                                <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label>Teacher Name *</label>
                                    <input type="text" runat="server" id="name" placeholder="" class="form-control">
                                </div>
                               
                                <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label>Course *</label>
                                    
                                 <input type="text" runat="server" id="course" placeholder="" class="form-control"/>


                                       <%-- <asp:DropDownList CssClass="select2" ID="twest" runat="server">
                                          
                                        </asp:DropDownList>
                                  --%>
                                    
                                    
                                </div>
                                <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label>Department</label>
                                    <input type="text" runat="server" id="dept" placeholder="" class="form-control"/>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label>Number of Student *</label>
                                   <input runat="server" id="studnum" type="text" placeholder="" class="form-control"/>
                                </div>
                                
                                <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label id="testing" runat="server">Class Time *</label>
                                    <input  runat="server" id="classtime" type="text" placeholder="" class="form-control" />
                                </div>

                                <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label id="Label1" runat="server">Number of Course Days *</label>
                                    <input  runat="server" id="courseday" type="text" placeholder="" class="form-control" />
                                </div>
                              
                               
                                
                                <div class="col-md-6 form-group"></div>
                                <div class="col-12 form-group mg-t-8">
                                    <asp:LinkButton CssClass="btn-fill-lg btn-gradient-yellow btn-hover-bluedark" Text="Save" runat="server" ID="submit" OnClick="submit_Click" />
                                  
                                    
                                    


                                     <%--   Added Success alrert bos --%>

                                   <span runat="server" id="successalert" class="ui-alart-box">
                                   <div class="icon-color-alart"> 

                                   
                                      <div class="alert icon-alart bg-light-green2" role="alert">
                                          <i class="far fa-hand-point-right bg-light-green3"></i>
                                          <asp:Label ID="alertforstud" Text="You successfully added a new Course." runat="server" />  
                                    </div>
                                       </div>
                                   </span>

                                   <%--Error alert--%>
                                   <span runat="server" id="errorstuda" class="ui-alart-box">
                                       <div class="icon-color-alart">
                                   <div class="alert icon-alart bg-pink2" role="alert">
                                    <i class="fas fa-times bg-pink3"></i>
                                       <asp:Label  Text="Error, Try again !" runat="server" /> 
                                </div>
                                           </div>
                                       </span>
                              <%--     Alrert box ends here--%>


                                    <button type="reset" class="btn-fill-lg bg-blue-dark btn-hover-yellow">Reset</button>
                                </div>

                                
                               
                          
                               
                                
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="card height-auto">

                        <div class="card-body">
                             <div class="heading-layout1">
                            <div class="item-title">
                                <h3>Assing Course</h3>
                            </div>
                          
                             </div>
                            <div class="new-added-form">
                             <div class="row">
                               <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label runat="server" id="testcour">Course Name *</label>
                                   <asp:DropDownList ID="courselist" o CssClass="select2" runat="server">
                                      
                                   </asp:DropDownList>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-12 form-group">
                                    <label runat="server" id="rolltest">Student Roll *</label>
                                    <asp:DropDownList CssClass="select2" ID="rolllist" runat="server">
                                       
                                    </asp:DropDownList>
                                </div>
                                
                           </div>
                                <div class="row">
                                    <asp:LinkButton ID="assign9999"  OnClick="tus_Click" CssClass="btn-fill-lg btn-gradient-yellow btn-hover-bluedark" Text="Assign" runat="server" />

                                        <%--   Added Success alrert bos --%>

                                   <span runat="server" id="assigncourse" class="ui-alart-box">
                                   <div class="icon-color-alart"> 

                                   
                                      <div class="alert icon-alart bg-light-green2" role="alert">
                                          <i class="far fa-hand-point-right bg-light-green3"></i>
                                          <asp:Label Text="Well done! You successfully Assigned the student." runat="server" />  
                                    </div>
                                       </div>
                                   </span>

                              <%--     Alrert box ends here--%>
                                </div>

                        </div>


                        </div>

                        


                    </div>

                <!-- Add Class Area End Here -->
                <footer class="footer-wrap-layout1">
                    <div class="copyright">© Copyrights <a href="#">akkhor</a> 2019. All rights reserved. Designed by <a href="#">PsdBosS</a></div>
                </footer>
            </div>
        </div>
        <!-- Page Area End Here -->
    </div>
    <!-- jquery-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Select 2 Js -->
    <script src="js/select2.min.js"></script>
    <!-- Date Picker Js -->
    <script src="js/datepicker.min.js"></script>
    <!-- Scroll Up Js -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- Custom Js -->
    <script src="js/main.js"></script>

           

        </div>
    </form>
</body>
</html>
