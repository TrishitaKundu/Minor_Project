<%@page import="org.model.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
    <%@page import = "org.mis.ConnectionProvider" %>
    <%String str = (String) session.getAttribute("Email : ");
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
String name = null;

try {
    conn = ConnectionProvider.createC();
    pstm = conn.prepareStatement("select * from jobseeker where email=?");
    pstm.setString(1, str);

    rs = pstm.executeQuery();

    if (rs.next()) {
        name = rs.getString(1);
    }
} catch (SQLException e) {
    e.printStackTrace();  
} catch (Exception e) {
    e.printStackTrace();  
} finally {
    
    try {
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();  
    }
}


%>
<!doctype html>
<html lang="en">

<head>
    <title>CareerConnector &mdash; Connecting Talents To Opportunities</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="css/custom-bs.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/line-icons/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/quill.snow.css">


    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        footer{
            position:absolute;
            top:166%;
            width:100%;
        }
    </style>
</head>

<body id="top">

    <div class="site-wrap">

        <div class="site-mobile-menu site-navbar-target">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close mt-3">
                    <span class="icon-close2 js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div> <!-- .site-mobile-menu -->


        <!-- NAVBAR -->
 <%if(str != null)
      							{%>
        <header class="site-navbar mt-3">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="site-logo col-6"><a href="#"><img src="images/logo_cc.png" alt="CareerConnector" style="width:235px;
            height: 50px;
            margin: -19px;"></a></div>

                    <nav class="mx-auto site-navigation">
                        <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                            <li><a href="index_JS.jsp">Home</a></li>
                            <li><a href="JOBS_JS.jsp">Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_JS.jsp">Team</a></li>
                                    <li><a href="TESTI_JS.jsp">Testimonials</a></li>
                                    <li><a href="Terms_JS.jsp">Terms</a></li>
                                    <li><a href="FAQ_JS.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_JS.jsp" class="active">Contact Us</a></li>
                            <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        		<% if(name != null){
                        		out.println("Hello," + name);
                        		}  %>
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div>
                                <a href="Dash_JS.jsp"><button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"
                                    type="button" id="signupDropdown" style="margin-right: 10px;">
                                    Dashboard
                                </button></a>
                            </div>
                            <div>
                                <a href="logout_JS.jsp"><button class="btn btn-primary border-width-2 d-none d-lg-inline-block"
                                    type="button" id="signupDropdown" style="margin-right: 10px; background-color:rgb(36 106 175); border-color:rgb(36 106 175);">
                                    Logout
                                </button></a>
                            </div>
                        </div>
                        <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                class="icon-menu h3 m-0 p-0 mt-2"></span>
                        </a>
                    </div>
                                </div>
            </div>
        </header>
                             <%} else {%>
                        <header class="site-navbar mt-3">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="site-logo col-6"><a href="#"><img src="images/logo_cc.png" alt="CareerConnector" style="width:235px;
            height: 50px;
            margin: -19px;"></a></div>

                    <nav class="mx-auto site-navigation">
                        <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                            <li><a href="index_JS.jsp">Home</a></li>
                            <li><a href="JOBS_JS.jsp">Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_JS.jsp">Team</a></li>
                                    <li><a href="TESTI_JS.jsp">Testimonials</a></li>
                                    <li><a href="Terms_JS.jsp">Terms</a></li>
                                    <li><a href="FAQ_JS.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_JS.jsp" class="active">Contact Us</a></li>
                             <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                            
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div class="dropdown">
                                <button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block dropdown-toggle"
                                    type="button" id="signupDropdown" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false" style="margin-right: 10px;">
                                    Sign Up
                                </button>                              
                                <div class="dropdown-menu" aria-labelledby="signupDropdown">
                                    <a class="dropdown-item" href="REGISTER (EMP).jsp"
                                        style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As an Employer</a>
                                    <a class="dropdown-item" href="REGISTER_Job Seeker.jsp"
                                        style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As a JobSeeker</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="btn btn-primary border-width-2 d-none d-lg-inline-block dropdown-toggle"
                                    type="button" id="signupDropdown" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"
                                    style="margin-right: 10px; background-color:rgb(36 106 175); border-color:rgb(36 106 175);">
                                    Log In
                                </button>
                                <div class="dropdown-menu" aria-labelledby="loginDropdown">
                                    <a class="dropdown-item" href="login_EMP.jsp" style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As an Employer</a>
                                    <a class="dropdown-item" href="login_JS.jsp" style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As a JobSeeker</a>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                class="icon-menu h3 m-0 p-0 mt-2"></span>
                        </a>
                    </div>
                </div>
            </div>
        </header>
				<%}%>

        <!-- HOME -->
        <div class="team">
            <section class="section-hero overlay inner-page bg-image"
            style="background-image: url('images/hero_1_2.jpg'); opacity: 0.7; padding : 15px;" id="home-section">
                <div class="container">
                  <div class="row">
                    <div class="col-md-7">
                      <h1 class="text-white font-weight-bold">Team</h1>
                      <div class="custom-breadcrumbs">
                        <a href="index_JS.jsp"><b style="color:white;">Home</b></a><span class="mx-2 slash">/</span>
                        <span class="text-white"><strong>Team</strong></span>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
              
          
              <section class="site-section services-section bg-light block__62849" id="next-section">
                <div class="container">
                  <br>
                  <div class="row">
                    <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
          
                        <center>
                          <img src="images/oyendrila.jpeg" style="width:150px; height:150px;border-radius: 100%;">
                          <br><br>
                          <h3>Frontend || Backend</h3>
                        <p style="font-size: 18px;">Oyendrila Sett</p>
                        <p>She is responsible for creating the frontend and backend of the web application.</p>
                        </center>
                        
                      </a>
          
                    </div>
                    <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                      
                        <center>
                          <img src="images/sreshtha.jpg" style="width:150px; height:150px;border-radius: 100%;">
                          <br><br>
                          <h3>Frontend || Backend</h3>
                        <p style="font-size: 18px;">Sreshtha Mukherjee</p>
                        <p>She is responsible for creating the frontend and backend of the web application.</p>
                        </center>
                      </a>            
          
                    </div>
                    <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                      
                        <center>
                          <img src="images/swarnali.jpeg" style="width:150px; height:150px;border-radius: 100%;">
                          <br><br>
                          <h3>Frontend || Backend</h3>
                        <p style="font-size: 18px;">Swarnali Saha</p>
                        <p>She is responsible for creating the frontend and backend of the web application. </p>
                        </center>
                      </a>            
          
                    </div>
                    <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                      
                        <center>
                          <img src="images/Trishita.jpg" style="width:150px; height:150px;border-radius: 100%;">
                          <br><br>
                          <h3>Frontend || Backend</h3>
                        <p style="font-size: 18px;">Trishita Kundu</p>
                        <p>She is responsible for creating the frontend and backend of the web application.</p>
                        </center>
                      </a>
          
                    </div>
                    <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                      
                        <center>
                          <img src="images/testi4.jpg" style="width:150px; height:150px;border-radius: 100%;">
                          <br><br>
                          <h3>Frontend || Backend </h3>
                        <p style="font-size: 18px;">Junia Karmakar</p>
                        <p>She is responsible for creating the frontend and backend of the web application.</p>
                        </center>
                      </a>
          
                    </div>
                    <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                      
                        <center>
                          <img src="images/Shuvadip.jpeg" style="width:150px; height:150px;border-radius: 100%;">
                          <br><br>
                          <h3>Frontend || Backend <br> Testing</h3>
                        <p class="d-sm-block" style="font-size: 18px;">Shuvadip Mondal</p>
                        <p>He is responsible for creating the frontend, backend and testing part of the web application.</p>
                        </center>
                      </a>
          
                    </div>
                  </div>
          
                  
                </div>
              </section>
        </div>

        <footer class="site-footer" style="background-color:black;">

            <a href="#top" class="smoothscroll scroll-top">
                <span class="icon-keyboard_arrow_up"></span>
            </a>

            <div class="container" style="padding: 72px 10px;">
                <div class="row mb-5">
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <img src="images/logo_cc.png" alt="" style="width:235px;
                        height: 50px;
                        margin: -19px;"><br><br>
                        <p style="margin-left: -10px; text-align: left; color: rgba(255, 255, 255, 0.5);">A reliable
                            platform that links talents with opportunities for both businesses and job seekers.</p>
                        <h3 style="margin-left: -10px;">Connect with us :</h3>
                        <div class="footer-social" style="margin-left: -10px;">
                            <a href="https://www.facebook.com" target="_blank"><span class="icon-facebook"></span></a>
                            <a href="https://www.twitter.com" target="_blank"><span class="icon-twitter"></span></a>
                            <a href="https://www.instagram.com" target="_blank"><span class="icon-instagram"></span></a>
                            <a href="https://www.linkedin.com" target="_blank"><span class="icon-linkedin"></span></a>
                        </div>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Trending Technologies</h3>
                        <ul class="list-unstyled">
                            <li><a href="https://www.google.com/search?q=web+design&rlz=1C1RXQR_enIN1030IN1030&oq=web+des&gs_lcrp=EgZjaHJvbWUqDAgBEAAYQxixAxiKBTIGCAAQRRg5MgwIARAAGEMYsQMYigUyDAgCEAAYFBiHAhiABDIKCAMQABixAxiABDIJCAQQABhDGIoFMg8IBRAAGBQYhwIYsQMYgAQyBggGEEUYQTIGCAcQRRg80gEINDEzNmowajeoAgCwAgA&sourceid=chrome&ie=UTF-8"
                                    target="_blank">Web Design</a></li>
                            <li><a href="https://www.google.com/search?q=artificial+intelligence&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKlfCQkFldKe54u72W7cM3RJTosANg%3A1695846602750&ei=ypAUZcyzLdSgseMP-7SviAs&oq=arti&gs_lp=Egxnd3Mtd2l6LXNlcnAiBGFydGkqAggDMgcQABiKBRhDMgcQABiKBRhDMgcQABiKBRhDMgoQABiKBRixAxhDMg0QABiKBRixAxiDARhDMgcQABiKBRhDMgcQABiKBRhDMgcQLhiKBRhDMgUQABiABDIIEAAYgAQYsQNI2i5QAFiSEXAAeAGQAQCYAaABoAHZBKoBAzAuNLgBA8gBAPgBAcICBxAjGIoFGCfCAhMQLhiKBRixAxiDARjHARjRAxhDwgILEAAYigUYsQMYgwHCAgsQABiABBixAxiDAcICBRAuGIAEwgIEECMYJ8ICBxAuGIoFGCfCAg0QLhiKBRixAxiDARhD4gMEGAAgQYgGAQ&sclient=gws-wiz-serp"
                                    target="_blank">Artificial Intelligence</a></li>
                            <li><a href="https://www.google.com/search?q=medical+robotics&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKniBMUZv6Ch6U68xLtF8hmywcj90Q%3A1695846641236&ei=8ZAUZYuODqO5seMPqsaRkAk&ved=0ahUKEwjLypOF0cuBAxWjXGwGHSpjBJIQ4dUDCBA&uact=5&oq=medical+robotics&gs_lp=Egxnd3Mtd2l6LXNlcnAiEG1lZGljYWwgcm9ib3RpY3MyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAESP84UABYqjJwAHgBkAEAmAGUAaAB3RCqAQQwLjE2uAEDyAEA-AEBwgIHEC4YigUYJ8ICBxAjGIoFGCfCAgcQABiKBRhDwgILEAAYgAQYsQMYgwHCAgsQLhiDARixAxiABMICDRAAGIoFGLEDGIMBGArCAggQABiABBixA8ICFBAuGIoFGJcFGNwEGN4EGOAE2AEBwgINEAAYgAQYFBiHAhixA8ICDRAuGIoFGMcBGNEDGEPCAgUQLhiABMICDRAAGIoFGLEDGIMBGEPCAhAQABiABBgUGIcCGLEDGIMBwgIKEAAYgAQYFBiHAsICCxAAGIoFGLEDGIMB4gMEGAAgQYgGAboGBggBEAEYFA&sclient=gws-wiz-serp"
                                    target="_blank">Medical Robotics</a></li>
                            <li><a href="https://www.google.com/search?q=python&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKnuqe3Np476Bvs1hfVg5FyrfjoFIQ%3A1695846685799&ei=HZEUZcC2MLWLseMP0KyEuAg&ved=0ahUKEwiAubOa0cuBAxW1RWwGHVAWAYcQ4dUDCBA&uact=5&oq=python&gs_lp=Egxnd3Mtd2l6LXNlcnAiBnB5dGhvbjIHECMYigUYJzIHECMYigUYJzIEECMYJzIHEAAYigUYQzIIEC4YigUYkQIyDhAAGIoFGLEDGIMBGJECMgcQLhiKBRhDMgcQABiKBRhDMgcQABiKBRhDMgoQABiKBRixAxhDSOYUUABYjhJwAHgBkAEAmAGoAaABwwaqAQMwLja4AQPIAQD4AQHCAggQABiKBRiRAsICBRAAGIAEwgILEAAYgAQYsQMYgwHCAggQABiABBixA-IDBBgAIEGIBgE&sclient=gws-wiz-serp"
                                    target="_blank">Python</a></li>
                            <li><a href="https://www.google.com/search?q=virtual+reality&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKmcrleg5ysig8WYd7Jiuh_KfxBjQw%3A1695846717455&ei=PZEUZeq1G76fseMP5Yy9qAE&oq=virtual+rea&gs_lp=Egxnd3Mtd2l6LXNlcnAiC3ZpcnR1YWwgcmVhKgIIADIOEAAYigUYsQMYgwEYkQIyCBAAGIoFGJECMggQABiKBRiRAjIIEAAYgAQYsQMyCxAAGIAEGLEDGIMBMg4QABiKBRixAxiDARiRAjIIEAAYigUYkQIyBRAAGIAEMgsQABiABBixAxiDATIFEAAYgARIoCxQAFjnIXAAeAGQAQCYAZUBoAHsC6oBBDAuMTG4AQPIAQD4AQHCAgcQIxiKBRgnwgIHEAAYigUYQ8ICDBAjGIoFGCcYRhj_AcICChAAGIoFGLEDGEPCAhYQABiKBRhGGP8BGJcFGIwFGN0E2AEBwgINEAAYigUYsQMYgwEYQ8ICCxAuGIAEGLEDGIMBwgILEAAYigUYsQMYgwHCAgkQABiKBRgKGEPiAwQYACBBiAYBugYGCAEQARgT&sclient=gws-wiz-serp"
                                    target="_blank">Virtual Reality</a></li>
                            <li><a href="https://www.google.com/search?q=cloud+computing&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKkvGZZKul_qdlZJ1-0eWKHic9R2qQ%3A1695846745844&ei=WZEUZdaWM6_useMPnc-F4AM&oq=clo&gs_lp=Egxnd3Mtd2l6LXNlcnAiA2NsbyoCCAEyBBAjGCcyDRAAGIoFGLEDGIMBGEMyDRAuGIoFGMcBGNEDGEMyChAAGIoFGMkDGEMyCBAAGIoFGJIDMggQABiKBRiSAzIHEAAYigUYQzIIEAAYgAQYsQMyBxAAGIoFGEMyChAAGIoFGLEDGENI_hNQAFjiA3AAeAGQAQCYAYwBoAGVA6oBAzAuM7gBA8gBAPgBAcICBxAjGIoFGCfCAgsQABiABBixAxiDAcICCxAAGIoFGLEDGIMBwgITEC4YigUYsQMYgwEYxwEY0QMYQ-IDBBgAIEGIBgE&sclient=gws-wiz-serp"
                                    target="_blank">Cloud Computing</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Trending Job Roles</h3>
                        <ul class="list-unstyled">
                            <li><a href="https://www.google.com/search?q=Data+Scientist%2FAnalyst&rlz=1C1RXQR_enIN1030IN1030&oq=Data+Scientist%2FAnalyst&aqs=chrome..69i57j0i22i30l6j0i15i22i30j0i22i30l2.1136j0j7&sourceid=chrome&ie=UTF-8"
                                    target="_blank">Data Scientist/Analyst</a></li>
                            <li><a href="https://www.google.com/search?q=Software+Developer%2FEngineer&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKnwvqSFplnqHfBxW41CWFSfqMIOPg%3A1694677523811&ei=E7oCZeqyMJjlseMPpN2r4A0&ved=0ahUKEwiqiMLezamBAxWYcmwGHaTuCtwQ4dUDCBA&uact=5&oq=Software+Developer%2FEngineer&gs_lp=Egxnd3Mtd2l6LXNlcnAiG1NvZnR3YXJlIERldmVsb3Blci9FbmdpbmVlcjIFEAAYgAQyBRAAGIAEMgUQABiABDIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeSOoQUABYhwdwAXgBkAEAmAHvAaAB7wGqAQMyLTG4AQPIAQD4AQH4AQKoAhTCAgcQIxjqAhgnwgINEC4YxwEY0QMY6gIYJ8ICFhAAGAMYjwEY5QIY6gIYtAIYjAPYAQHCAhYQLhgDGI8BGOUCGOoCGLQCGIwD2AEB4gMEGAAgQYgGAboGBggBEAEYCw&sclient=gws-wiz-serp"
                                    target="_blank">Software Developer/Engineer</a></li>
                            <li><a href="https://www.google.com/search?q=Machine+Learning+Engineer&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKm_BdxcZ8-LyxPCTE3rUrUSDe7B_g%3A1694677544932&ei=KLoCZYehOI7dseMPzZSxkAY&ved=0ahUKEwiH1cvozamBAxWObmwGHU1KDGIQ4dUDCBA&uact=5&oq=Machine+Learning+Engineer&gs_lp=Egxnd3Mtd2l6LXNlcnAiGU1hY2hpbmUgTGVhcm5pbmcgRW5naW5lZXIyCxAAGIoFGLEDGJECMgcQABiKBRhDMggQABiKBRiRAjIIEAAYigUYkQIyCxAAGIoFGLEDGJECMgUQABiABDIFEAAYgAQyBxAAGIoFGEMyBRAAGIAEMgUQABiABEj7GVCIA1iQE3ACeAGQAQSYAbkCoAHYC6oBBTItNS4xuAEDyAEA-AEB-AECqAIUwgIKEAAYRxjWBBiwA8ICBxAjGIoFGCfCAgYQABgWGB7CAgcQIxjqAhgnwgINEC4YxwEY0QMY6gIYJ8ICFhAAGAMYjwEY5QIY6gIYtAIYjAPYAQHCAhYQLhgDGI8BGOUCGOoCGLQCGIwD2AEB4gMEGAAgQYgGAZAGCLoGBggBEAEYCw&sclient=gws-wiz-serp"
                                    target="_blank">Machine Learning Engineer</a></li>
                            <li><a href="https://www.google.com/search?q=Cybersecurity+Analyst&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKkAqLhfZtCLkqGNpcic5MkCbR0RxA%3A1694677584525&ei=ULoCZd-8H_STseMPuui4yAQ&ved=0ahUKEwjfpLz7zamBAxX0SWwGHTo0DkkQ4dUDCBA&uact=5&oq=Cybersecurity+Analyst&gs_lp=Egxnd3Mtd2l6LXNlcnAiFUN5YmVyc2VjdXJpdHkgQW5hbHlzdDILEAAYigUYsQMYkQIyCBAAGIoFGJECMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyChAAGIAEGBQYhwIyBRAAGIAEMgUQABiABEjiDFAAWABwAHgBkAEAmAHmAaAB5gGqAQMyLTG4AQPIAQD4AQL4AQHiAwQYACBBiAYB&sclient=gws-wiz-serp"
                                    target="_blank">Cybersecurity Analyst</a></li>
                            <li><a href="https://www.google.com/search?q=Cloud+Computing+Specialist&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKmH3WbG3RRVxdFnlGteGTfHx42gvg%3A1694677612407&ei=bLoCZb-zGIqcseMP3bi7cA&ved=0ahUKEwi_meKIzqmBAxUKTmwGHV3cDg4Q4dUDCBA&uact=5&oq=Cloud+Computing+Specialist&gs_lp=Egxnd3Mtd2l6LXNlcnAiGkNsb3VkIENvbXB1dGluZyBTcGVjaWFsaXN0MgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeSI4GUABYAHAAeAGQAQCYAf8BoAH_AaoBAzItMbgBA8gBAPgBAvgBAeIDBBgAIEGIBgE&sclient=gws-wiz-serp"
                                    target="_blank">Cloud Computing Specialist</a></li>
                            <li><a href="https://www.google.com/search?q=Healthcare+Professionals&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKlQir2Ur_Ft8plNvLZzzGZ7-x0yDQ%3A1694677640070&ei=iLoCZfXvA6_fseMP67m-gAc&ved=0ahUKEwj10_qVzqmBAxWvb2wGHeucD3AQ4dUDCBA&uact=5&oq=Healthcare+Professionals&gs_lp=Egxnd3Mtd2l6LXNlcnAiGEhlYWx0aGNhcmUgUHJvZmVzc2lvbmFsczIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgARIwxtQAFjYFXABeAGQAQCYAZgCoAGYAqoBAzItMbgBA8gBAPgBAfgBAqgCFMICBxAjGOoCGCfCAg0QLhjHARjRAxjqAhgnwgIWEAAYAxiPARjlAhjqAhi0AhiMA9gBAcICFhAuGAMYjwEY5QIY6gIYtAIYjAPYAQHiAwQYACBBiAYBugYGCAEQARgL&sclient=gws-wiz-serp"
                                    target="_blank">Healthcare Professionals</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Support</h3>
                        <ul class="list-unstyled">
                           <li><a href="TESTI_JS.jsp">Testimonials</a></li>
                            <li><a href="Terms_JS.jsp">Terms</a></li>
                            <li><a href="helpcentre_JS.jsp">Help Centre</a></li>
                            <li><a href="FAQ_JS.jsp">FAQ</a></li>
                            <li><a href="contact_JS.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col-12">
                        <p class="copyright"><small>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved.
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </small></p>
                    </div>
                </div>
            </div>
        </footer>

    </div>

    <!-- SCRIPTS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/stickyfill.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>

    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/quill.min.js"></script>


    <script src="js/bootstrap-select.min.js"></script>

    <script src="js/custom.js"></script>



</body>

</html>