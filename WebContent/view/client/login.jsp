<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="${url}/images/favicon.png" rel="shortcut icon" >
<link href="${url}/images/logo.png" rel="logo" >
    <link rel="stylesheet" href="${url }/css/login_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
<link href="${url}/css/nav.css" rel="stylesheet" >
      <link href="${url}/css/responsive.css" rel="stylesheet" >
</head>


<body>

    <div class="container">
        <!-- <div class="headerMain">
            <div class="header--container">
                <div class="header--leftSection">
                    <div class="menu--btnSection">
                        <button class="menu--btn"></button>  
                    </div>
                    <div class="logo"></div>
                </div>

                <div class="header--rightSection">
                    <div class="trips">
                        <a href="/TODO" class="tripsLink">trips</a> need a trips link
                    </div>
                    <div class="signIn">
                        <a href="TODO" class="SignIn--link">Signin</a>need a Signin link
                    </div>
                </div>
            </div>
        </div>
 -->
 <div class="horizontal-navigation-bar">
    <div class="logo-site">
        <a class="logo-site-logo" href="index.jsp"><img src="${url}/images/logo.png" alt="logo" style= "width:190px;height: 40px"/></a>
    </div>
    <nav>
        <div class="navigation-bar">
            <div class="navigation-items">
                <div>
                <span><svg height="100%"

                           style="margin-right: 5px"
                           viewBox="0 0 200 200" width="20px"
                           xmlns="http://www.w3.org/2000/svg"><path
                        d="M144.6 55.3c23.4-10.2 40.4 4 40.4 10.4 0 6.2-15.1 22.4-45.5 39.1L135 150c-1.4 8.1-10.4 15.4-15.9 15.4-1.9 0-3.4-.8-4.1-2.7-2.4-6.8-12.5-34.1-14.6-39.7-14.7 5.6-33.3 11.7-48.9 11.7-31.8 0-32.6-25.3-35.9-42.3-1.9-9.9 8.9-13.8 14.8-8.3l16.2 13.7c62.4-27.3 81.5-35.7 98-42.5zm-31.2 13.3L70.6 46.8c-10.3-4-16.1-.4-20.5 1.6-3.5 1.5-4.8 3.6 2.1 11.7 15.2 17.8 23.1 25.1 23.1 25.1"
                        fill="none"
                        stroke="currentColor"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="10"></path></svg><span>Flights</span></span>
                </div>
                <div class="disable-all">
                    <span><svg height="100%"

                           style="margin-right: 5px"
                           viewBox="0 0 200 200" width="20px"
                           xmlns="http://www.w3.org/2000/svg"><path
                        d="M25 155V95c0-5.5 4.5-10 10-10h130c5.5 0 10 4.5 10 10v60m0-10H25m150-20H25m140-40V70.2c0-9.3-6.4-17.3-15.4-19.4-32.7-7.7-66.2-7.7-99.1 0C41.4 52.9 35 61 35 70.3V85m40-38.5V85m50-38.6V85"
                        fill="none"
                        stroke="currentColor"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="10"></path></svg><span>Stays</span></span>
                </div>
                <div class="disable-all">
                    <span><svg height="100%"

                           style="margin-right: 5px"
                           viewBox="0 0 200 200" width="20px"
                           xmlns="http://www.w3.org/2000/svg"><path
                        d="M185 95c-51.6 13.5-117.4 13.2-170 0m10 25c10 1.5 30 4.2 40 5m110-30l-13-39.8c-1.2-3.3-4.1-5.7-7.5-6.3-29.4-5.2-79.5-5.2-108.9 0-3.4.6-6.3 3-7.5 6.3L25 95v50c0 5.5 4.5 10 10 10h10c5.5 0 10-4.5 10-10v-2.4c29.9 3.2 60.1 3.2 90 0v2.4c0 5.5 4.5 10 10 10h10c5.5 0 10-4.5 10-10V95zm-40 30c10-.8 30-3.5 40-5m-32.7-35c-3.5-6-9.9-10-17.3-10s-13.9 4-17.3 10"
                        fill="none"
                        stroke="currentColor"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="10"></path></svg><span>Car Rental</span></span>
                </div>
                <div class="disable disable-all">
                    <span>
                    <svg fill="none"
                         stroke="currentColor"
                         stroke-linecap="round"
                         stroke-linejoin="round"
                         stroke-width="10"
                         style="margin-right: 5px"
                         viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg"><path
                            d="M120 140c-22.1 0-40-17.9-40-40s17.9-40 40-40s40 17.9 40 40s-17.9 40-40 40zm0-70c-16.5 0-30 13.5-30 30s13.5 30 30 30s30-13.5 30-30s-13.5-30-30-30z"></path><path
                            d="M165 160H35c-8.3 0-15-6.7-15-15V65c0-8.3 6.7-15 15-15h46.9l5.8-11.7c2.5-5 7.8-8.3 13.4-8.3h47.6c5.8 0 11 3.2 13.6 8.3l5.8 11.7h6.9c8.3 0 15 6.7 15 15v80c0 8.3-6.7 15-15 15zm-95-10h95c2.8 0 5-2.2 5-5V65c0-2.8-2.2-5-5-5h-10c-1.9 0-3.6-1.1-4.5-2.8l-7.2-14.5c-.8-1.7-2.6-2.7-4.6-2.7h-37.6c-1.9 0-3.6 1.1-4.4 2.7l-7.2 14.5c-.9 1.7-2.6 2.8-4.5 2.8H70v90zM35 60c-2.8 0-5 2.2-5 5v80c0 2.8 2.2 5 5 5h25V60H35zm69.2 39.7c-2.6-.9-4-3.8-3-6.4c2-5.7 6.5-10.2 12.2-12.1c2.6-.9 5.5.5 6.4 3.1c.9 2.6-.5 5.5-3.1 6.4c-2.8 1-5 3.2-6 6.1c-1 2.5-3.9 3.8-6.5 2.9z"></path></svg>
                        <span>Things to do</span></span>
                </div>
                <div class="disable disable-all">
                    <span><svg height="100%"
                           style="margin: 0 5px"
                           viewBox="0 0 200 200" width="20px"
                           xmlns="http://www.w3.org/2000/svg"><path
                        d="M75 55V42.1c0-9.5 50-9.5 50 0V55m40 110c5.5 0 10-4.5 10-10V65c0-5.5-4.5-10-10-10H35c-5.5 0-10 4.5-10 10v90c0 5.5 4.5 10 10 10h130zM55 55v110m90-110v110"
                        fill="none"
                        stroke="currentColor"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="10"></path></svg><span>Packages</span></span>
                </div>
                <div class="dropdown-menu-for-navigationBar">
                    <span>More</span>
                    <div class="dropdown-content-forPc">
                        <ul>
                            <li><a href="#">Explore</a></li>
                            <li><a href="#">Trains</a></li>
                            <li><a href="#">Deals</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                    <div class="dropdown-content-forTablet">
                        <ul>
                            <li><a href="#">Things to do</a></li>
                            <li><a href="#">Packages</a></li>
                            <li><a href="#">Explore</a></li>
                            <li><a href="#">Trains</a></li>
                            <li><a href="#">Deals</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                    <div class="dropdown-content-forPhones">
                        <ul>
                            <li><a href="#">Stays</a></li>
                            <li><a href="#">Car rental</a></li>
                            <li><a href="#">Things to do</a></li>
                            <li><a href="#">Packages</a></li>
                            <li><a href="#">Explore</a></li>
                            <li><a href="#">Trains</a></li>
                            <li><a href="#">Deals</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                </div>
                <svg height="100%"
                     style="width:12px;height:inherit;line-height:inherit;color:inherit;"
                     viewBox="0 0 200 200"
                     xmlns="http://www.w3.org/2000/svg">
                    <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                          stroke-linejoin="round" stroke-width="10"></path>
                </svg>
            </div>
        </div>
    </nav>
    <div class="register-part">
        <div class="register">
        <%
if(session.getAttribute("account") != null){
	
	out.print("<a href='/AirlineReservationSystem/logout'> Logout</a>");
}else{
	out.print(" <a href = '/AirlineReservationSystem/register'> Sign up </a>");
	 
}
%>
          
        </div>
        <div class="sign-in">
      
<%
if(session.getAttribute("account") != null){
	
	out.print("<a href='/'>"+session.getAttribute("name")+"</a>");
}else{
	out.print(" <a href = '/AirlineReservationSystem/login'> Sign in </a>");
	 
}
%>
         
            
        </div>
    </div>
</div>
        <div class="main--container">
            <div class="main">
                <div class="main--form">
                    <form class="login--form"  method="POST">
                        <h2 class="login--form--title">
                            Login
                        </h2>

                        <div class="wrap--input" data-validate="Username is required">
                            <p class="label--input">Username</p>
                            <input style="border:none" class="input" type="text" name="email"
                                placeholder="Type your username">
                            <p class="focus--input" data-symbol="&#xf206;"></p>
                        </div>

                        <div class="wrap--input" data-validate="Password is required">
                            <p class="label--input">Password</p>
                            <input style="border:none" class="input" type="password" name="password"
                                placeholder="Type your password">
                            <p class="focus--input" data-symbol="&#xf190;"></p>
                        </div>

                        <div class="text--right">
                            <a href="#">
                                <!--  Need a forgot password link -->
                                Forgot password?
                            </a>
                        </div>

                        <div class="container--login--form--btn">
                            <div class="wrap--login--form--btn">
                                <div class="login--form--bgbtn"></div>
                                <input class="login--form--btn" type="submit" value="Login">
                                <!--     Login
                                </button> -->
                            </div>
                        </div>


                        <div class="signUp">
                            <p class="ignUpTxt">
                                Don't have account?
                            </p>

                            <a href="/AirlineReservationSystem/register" class="signUpLink">
                                <!-- Need Sign up link -->
                                Sign Up here!
                            </a>
                        </div>
                    </form>
                </div>

            </div>
        </div>
       <!--  <div class="footer--container">
            <div class="footer">
                <p class="draft">This is footer</p>
            </div>
        </div> -->
    </div>


</body>

</html>