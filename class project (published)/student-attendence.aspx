<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student-attendence.aspx.cs" Inherits="Final_project.student_attendence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Student Attendence</title>
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
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Data Table CSS -->
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
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
                    <h3>Student Attendence</h3>
                    <ul>
                        <li>
                            <a href="index.aspx">Home</a>
                        </li>
                        <li>Attendence</li>
                    </ul>
                </div>
                <!-- Breadcubs Area End Here -->
                <div class="row">
                    <!-- Student Attendence Search Area Start Here -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="heading-layout1">
                                    <div class="item-title">
                                        <h3>Student Attendence</h3>
                                    </div>
                                   
                                </div>
                                <div class="new-added-form">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-6 col-12 form-group">
                                            <label>Select Course</label>
                                           <asp:DropDownList ID="courselist" CssClass="select2" runat="server">
                                      
                                   </asp:DropDownList>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-12 form-group">
                                            <label runat="server" id="testing">Day Number</label>
                                            <input type="text" class="form-control" id="daypicked"  runat="server"  />
                                        </div>
                                      
                                        <div class="col-12 form-group mg-t-8">
                                            <asp:LinkButton CssClass="btn-fill-lg btn-gradient-yellow btn-hover-bluedark" ID="search" OnClick="search_Click" Text="Find Attendance" runat="server" />
                                           <asp:LinkButton OnClick="Unnamed_Click" Text="Show Table" CssClass="btn-fill-lg bg-blue-dark btn-hover-yellow" runat="server" />
                                           
                                        </div>
                                      
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Student Attendence Search Area End Here -->
                    <!-- Student Attendence Area Start Here -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="heading-layout1">
                                    <div class="item-title">
                                        <h3>Attendence Sheet </h3>
                                    </div>
                                 
                                </div>
                               

                            </div>
                            <div class="card-body">
                                <%--<asp:Button Text="Refresh" ID="refresh" CssClass="btn-fill-xl radius-30 text-light shadow-light-sea-green bg-light-sea-green" OnClick="btnSaveToExcel_Click" runat="server" />--%>
                                <div class="row">
                                <asp:CheckBoxList CssClass="custom-radio" ID="checkaaa" runat="server">
                                   
                                </asp:CheckBoxList>
                                    </div>
                                <div class="ui-btn-wrap">
                                    <asp:LinkButton CssClass="btn-fill-lmd radius-30 text-light shadow-true-v bg-true-v" ID="confirmattend" OnClick="confirmattend_Click" Text="Submit Attendance" runat="server" />
                                    
                                    <div runat="server" id="attendsubmit" class="alert icon-alart bg-light-green2" role="alert">
                                          <i class="far fa-hand-point-right bg-light-green3"></i>
                                          <asp:Label  Text="Well done! You successfully updated the attendace." runat="server" /> 
                                    </div>
                                      <%--<div class="align-self-center">--%>
                                             <asp:LinkButton ID="ExportToExcelButton" CssClass=" align-self-center btn-fill-xl radius-30 text-light shadow-light-sea-green bg-light-sea-green" OnClick="ExportToExcelButton_Click" Text="Download" runat="server" />
                                       <%-- </div>--%>
                                    
                                </div>

                                <div class="table-responsive">
                                    
                                     

                                    <table class="table display data-table text-nowrap">
                                        <thead>
                                            <tr>
                                                <asp:Panel  ID="theader" runat="server">

                                                </asp:Panel>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Panel ID="tbody" runat="server">

                                            </asp:Panel>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- Student Attendence Area End Here -->
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
    <!-- Scroll Up Js -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- Custom Js -->
    <script src="js/main.js"></script>
                <!-- Data Table Js -->
    <script src="js/jquery.dataTables.min.js"></script>



        </div>
    </form>
</body>
</html>
