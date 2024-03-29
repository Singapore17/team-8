<%-- 
    Document   : myTasks.jsp
    Created on : Sep 29, 2017, 2:47:51 PM
    Author     : Tan Kee Hock
--%>

<%@page import="cog.team8.entities.Job"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Community Child Carer App</title>

        <!-- Bootstrap CSS -->    
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="css/elegant-icons-style.css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" rel="stylesheet" />    
        <!-- full calendar css-->
        <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
        <!-- easy pie chart-->
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <!-- owl carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
        <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link rel="stylesheet" href="css/fullcalendar.css">
        <link href="css/widgets.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
        <link href="css/xcharts.min.css" rel=" stylesheet">	
        <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    </head>

    <body>
        <!-- container section start -->
        <section id="container" class="">


            <header class="header dark-bg">
                <div class="toggle-nav">
                    <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
                </div>

                <!--logo start-->
                <a href="index.html" class="logo">Care for<span class="lite"> U </span></a>
                <!--logo end-->

                <div class="nav search-row" id="top_menu">
                    <!--  search form start -->
                    <ul class="nav top-menu">                    
                        <li>
                            <form class="navbar-form">
                                <input class="form-control" placeholder="Search" type="text">
                            </form>
                        </li>                    
                    </ul>
                    <!--  search form end -->                
                </div>

                <div class="top-nav notification-row">                
                    <!-- notificatoin dropdown start-->
                    <ul class="nav pull-right top-menu">

                        <!-- task notificatoin start -->
                        <li id="task_notificatoin_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="icon-task-l"></i>
                                <span class="badge bg-important">6</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-blue"></div>
                                <li>
                                    <p class="blue">You have 6 pending letter</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Design PSD </div>
                                            <div class="percent">90%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                                <span class="sr-only">90% Complete (success)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">
                                                Project 1
                                            </div>
                                            <div class="percent">30%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                                <span class="sr-only">30% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Digital Marketing</div>
                                            <div class="percent">80%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Logo Designing</div>
                                            <div class="percent">78%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                                <span class="sr-only">78% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Mobile App</div>
                                            <div class="percent">50%</div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar"  role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                                <span class="sr-only">50% Complete</span>
                                            </div>
                                        </div>

                                    </a>
                                </li>
                                <li class="external">
                                    <a href="#">See All Tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- task notificatoin end -->
                        <!-- inbox notificatoin start-->
                        <li id="mail_notificatoin_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="icon-envelope-l"></i>
                                <span class="badge bg-important">5</span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-blue"></div>
                                <li>
                                    <p class="blue">You have 5 new messages</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Greg  Martin</span>
                                            <span class="time">1 min</span>
                                        </span>
                                        <span class="message">
                                            I really like this admin panel.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Bob   Mckenzie</span>
                                            <span class="time">5 mins</span>
                                        </span>
                                        <span class="message">
                                            Hi, What is next project plan?
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Phillip   Park</span>
                                            <span class="time">2 hrs</span>
                                        </span>
                                        <span class="message">
                                            I am like to buy this Admin Template.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Ray   Munoz</span>
                                            <span class="time">1 day</span>
                                        </span>
                                        <span class="message">
                                            Icon fonts are great.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all messages</a>
                                </li>
                            </ul>
                        </li>
                        <!-- inbox notificatoin end -->
                        <!-- alert notification start-->
                        <li id="alert_notificatoin_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                                <i class="icon-bell-l"></i>
                                <span class="badge bg-important">7</span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-blue"></div>
                                <li>
                                    <p class="blue">You have 4 new notifications</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-primary"><i class="icon_profile"></i></span> 
                                        Friend Request
                                        <span class="small italic pull-right">5 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="icon_pin"></i></span>  
                                        John location.
                                        <span class="small italic pull-right">50 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="icon_book_alt"></i></span> 
                                        Project 3 Completed.
                                        <span class="small italic pull-right">1 hr</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-success"><i class="icon_like"></i></span> 
                                        Mick appreciated your work.
                                        <span class="small italic pull-right"> Today</span>
                                    </a>
                                </li>                            
                                <li>
                                    <a href="#">See all notifications</a>
                                </li>
                            </ul>
                        </li>
                        <!-- alert notification end-->
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="profile-ava">
                                    <img alt="" src="img/avatar1_small.jpg">
                                </span>
                                <span class="username">Jenifer Smith</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li class="eborder-top">
                                    <a href="#"><i class="icon_profile"></i> My Profile</a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                                </li>
                                <li>
                                    <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                                </li>
                                <li>
                                    <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                                </li>
                                <li>
                                    <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                                </li>
                            </ul>
                        </li>
                        <!-- user login dropdown end -->
                    </ul>
                    <!-- notificatoin dropdown end-->
                </div>
            </header>      
            <!--header end-->

            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu">                
                        <li class="active">
                            <a class="" href="index.html">
                                <i class="icon_house_alt"></i>
                                <span>Home</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_document_alt"></i>
                                <span>Activities</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">                         
                                <li><a class="" href="myTasks.html">My Tasks</a></li>
                                <li><a class="" href="availableJobs.html">Available Jobs</a></li>
                                <li><a class="" href="myBiddings.html">My Bidding</a></li>
                            </ul>
                        </li>       
                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 class="page-header"><i class="fa fa fa-bars"></i> Pages</h3>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                                <li><i class="fa fa-bars"></i>Activities</li>
                                <li><i class="fa fa-square-o"></i>My Tasks</li>
                            </ol>
                        </div>
                    </div>
                    <!-- page start-->
                    <div class="col-md-6 portlets">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="pull-left">Create a Task</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>  
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-body">
                                <div class="padd">

                                    <div class="form quick-post">
                                        <!-- Edit profile form (not working)-->
                                        <form class="form-horizontal">
                                            <!-- Title -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="title">Title</label>
                                                <div class="col-lg-10"> 
                                                    <input type="text" class="form-control" id="title" placeholder="Enter Title">
                                                </div>
                                            </div>   
                                            <!-- Content -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="description">Description</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" id="description" placeholder="Enter Task Description"></textarea>
                                                </div>
                                            </div>  
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="date">Date</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" id="date" placeholder="dd/mm/yyyy"></textarea>
                                                </div>
                                            </div>  

                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="startTime" >Start time</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" id="startTime" placeholder="HH:MM"></textarea>
                                                </div>
                                            </div>  
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="endTime">End time</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" id="endTime" placeholder="HH:MM"></textarea>
                                                </div>
                                            </div>  
                                            <!-- Cateogry -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2">Payment</label>
                                                <div class="col-lg-10">                               
                                                    <select class="form-control">
                                                        <option value="">- Choose Payment Type -</option>
                                                        <option value="1">Cash</option>
                                                        <option value="2">Services</option>
                                                        <option value="3">Barter Trade</option>
                                                    </select>  
                                                </div>
                                            </div>    
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="tags">Payment Amount</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" id="tags" placeholder="$">
                                                </div>
                                            </div>
                                            <!-- Tags -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="tags">Special Requirements</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" id="comments">
                                                </div>
                                            </div>

                                            <!-- Buttons -->
                                            <div class="form-group">
                                                <!-- Buttons -->
                                                <div class="col-lg-offset-2 col-lg-9">
                                                    <button onclick="submitForm()" class="btn btn-primary">Publish</button>
                                                    <script>
                                                        function submitForm() {
                                                            $.ajax({
                                                                url: 'NewJob',
                                                                type: 'post',
                                                                contentType: 'application/x-www-form-urlencoded',
                                                                data: {
                                                                    date: $('#date').val(),
                                                                    startTime: $('#startTime').val(),
                                                                    endTime: $('#endTime').val(),
                                                                    description: $('#description').val(),
                                                                    title: $('#title').val(),
                                                                    comments: $('#comments').val(),
                                                                },
                                                                success: function(data){
                                                                    alert(data);
                                                                },
                                                                error: function( jqXhr, textStatus, errorThrown ){
                                                                    console.log( errorThrown );
                                                                }
                                                            });
                                                        }
                                                    </script>
                                                    <button class="btn btn-danger">Cancel</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>


                                </div>
                                <div class="widget-foot">
                                    <!-- Footer goes here -->
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6 portlets">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Tasks Created
                            </div>
                            <div class="panel-body">
                                <b>Task 1:</b><p>Fetch Adric from school on 25 October 2017, 01800: 1900</p>
                                <div class="padd">
                                    <table class="col-lg-12 table">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Location</th>
                                                <th>Fees (per hr)</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Chang Ying</td>
                                                <td>Lim</td>
                                                <td>Blk 652 Hougang Ave 8</td>
                                                <td>$7/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success" >View</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Chun Hua</td>
                                                <td>Hong</td>
                                                <td>Blk 231 Hougang Street 21</td>
                                                <td>$5/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success" >View</a></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Bao Zhai</td>
                                                <td>Lee</td>
                                                <td>Blk 173 Hougang Avenue 1</td>
                                                <td>$6/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success" >View</a></td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Mei</td>
                                                <td>Liu</td>
                                                <td>Blk 544 Hougang Ave 8</td>
                                                <td>$6/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success" >View</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <%
                                    ServletContext context = session.getServletContext();
                                    ArrayList<Job> jobs = (ArrayList<Job>) context.getAttribute("avaliableJobs");
                                    int i = 2;
                                    for(Job job: jobs) {
                                        if(job.getOwner().getName().equals("Chen Xiao Mei")) {
                                            out.print("<b>Task " + i + ":</b><p>" + job.getTitle() + ", on " + job.getDate() + " " + job.getStartTime() + " - " + job.getEndTime() + "</p>");
                                            i++;
                                            
                                            out.print("<table class=\"col-lg-12 table\"><thead><tr><th>#</th><th>First Name</th><th>Last Name</th><th>Location</th><th>Fees (per hr)</th><th></th></tr></thead><tbody>");
                                            out.print("<tr><td colspan=\"4\">No Bids yet</td></tr></tbody></table>");
                                        }
                                    }
                                    
                                %>
<!--                                <b>Task 2:</b><p>2 children on 18 October 2017, 9am-6pm</p>
                                <div class="padd">
                                    <table class="col-lg-12 table">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Location</th>
                                                <th>Fees (per hr)</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Ying Ying</td>
                                                <td>Lim</td>
                                                <td>Blk 652 Hougang Ave 8</td>
                                                <td>$7/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Meilin</td>
                                                <td>Hong</td>
                                                <td>Blk 231 Hougang Street 21</td>
                                                <td>$5/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Jie Ying</td>
                                                <td>Lee</td>
                                                <td>Blk 173 Hougang Avenue 1</td>
                                                <td>$6/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Hui Fang</td>
                                                <td>Liu</td>
                                                <td>Blk 544 Hougang Ave 8</td>
                                                <td>$6/hr</td>
                                                <td><a href="profile.html" class = "btn btn-success">View</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>-->
                            </div>
                        </div>
                    </div>

                    <!-- page end-->
                </section>
            </section>
            <!--main content end-->

            <!-- javascripts -->
            <script src="js/jquery.js"></script>
            <script src="js/jquery-ui-1.10.4.min.js"></script>
            <script src="js/jquery-1.8.3.min.js"></script>
            <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
            <!-- bootstrap -->
            <script src="js/bootstrap.min.js"></script>
            <!-- nice scroll -->
            <script src="js/jquery.scrollTo.min.js"></script>
            <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
            <!-- charts scripts -->
            <script src="assets/jquery-knob/js/jquery.knob.js"></script>
            <script src="js/jquery.sparkline.js" type="text/javascript"></script>
            <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
            <script src="js/owl.carousel.js" ></script>
            <!-- jQuery full calendar -->
            <<script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
            <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
            <!--script for this page only-->
            <script src="js/calendar-custom.js"></script>
            <script src="js/jquery.rateit.min.js"></script>
            <!-- custom select -->
            <script src="js/jquery.customSelect.min.js" ></script>
            <script src="assets/chart-master/Chart.js"></script>

            <!--custome script for all page-->
            <script src="js/scripts.js"></script>
            <!-- custom script for this page-->
            <script src="js/sparkline-chart.js"></script>
            <script src="js/easy-pie-chart.js"></script>
            <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
            <script src="js/jquery-jvectormap-world-mill-en.js"></script>
            <script src="js/xcharts.min.js"></script>
            <script src="js/jquery.autosize.min.js"></script>
            <script src="js/jquery.placeholder.min.js"></script>
            <script src="js/gdp-data.js"></script>	
            <script src="js/morris.min.js"></script>
            <script src="js/sparklines.js"></script>	
            <script src="js/charts.js"></script>
            <script src="js/jquery.slimscroll.min.js"></script>
            <script>

                //knob
                $(function () {
                    $(".knob").knob({
                        'draw': function () {
                            $(this.i).val(this.cv + '%')
                        }
                    })
                });

                //carousel
                $(document).ready(function () {
                    $("#owl-slider").owlCarousel({
                        navigation: true,
                        slideSpeed: 300,
                        paginationSpeed: 400,
                        singleItem: true

                    });
                });

                //custom select box

                $(function () {
                    $('select.styled').customSelect();
                });

                /* ---------- Map ---------- */
                $(function () {
                    $('#map').vectorMap({
                        map: 'world_mill_en',
                        series: {
                            regions: [{
                                    values: gdpData,
                                    scale: ['#000', '#000'],
                                    normalizeFunction: 'polynomial'
                                }]
                        },
                        backgroundColor: '#eef3f7',
                        onLabelShow: function (e, el, code) {
                            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
                        }
                    });
                });

            </script>

    </body>
</html>
