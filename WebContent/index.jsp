<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voyago</title>
</head>
<link href="${url}/images/favicon.png" rel="shortcut icon" >
<link href="${url}/images/logo.png" rel="logo" >
 <link href="${url}/css/style.css" rel="stylesheet" >
 <link href="${url}/css/nav.css" rel="stylesheet" >
    <link href="${url}/css/responsive.css" rel="stylesheet" >
    <link href="//db.onlinewebfonts.com/c/917a69d24b88e2d4d2ca803c0605bd59?family=CeraPRO-Regular" rel="stylesheet"
          type="text/css"/>
    <script crossorigin="anonymous" src="https://kit.fontawesome.com/e01cfc4369.js"></script>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<body>
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
	out.print(" <a href = '/AirlineReservationSystem/login'> Login </a>");
	 
}
%>
         
            
        </div>
    </div>
</div>
<header>
    <div class="box">
        <div style="padding: 64px 0 0 0">
            <h1 class ="h1" padding: 20px 0">Find and compare cheap flights</h1>
        </div>
        <div class="submit-form">
            <div class="extend-choice">
                <div>
                    <span>Round-trip<svg class="_ieE _ipQ _ieB _ibz" height="100%" style="margin: 0 5px"
                                         viewBox="0 0 200 200"
                                         width="20px" xmlns="http://www.w3.org/2000/svg"> <path d="M45 80l55 50 55-50"
                                                                                                fill="none"
                                                                                                stroke="currentColor"
                                                                                                stroke-linecap="round"
                                                                                                stroke-linejoin="round"
                                                                                                stroke-width="10"></path> </svg></span>
                </div>
                <div>
                    <span>1 Adult<svg class="_ieE _ipQ _ieB _ibz" height="100%" style="margin: 0 5px"
                                      viewBox="0 0 200 200"
                                      width="20px" xmlns="http://www.w3.org/2000/svg"> <path d="M45 80l55 50 55-50"
                                                                                             fill="none"
                                                                                             stroke="currentColor"
                                                                                             stroke-linecap="round"
                                                                                             stroke-linejoin="round"
                                                                                             stroke-width="10"></path> </svg></span>
                </div>
                <div>
                    <span>Economy<svg class="_ieE _ipQ _ieB _ibz" height="100%" style="margin: 0 5px"
                                      viewBox="0 0 200 200"
                                      width="20px" xmlns="http://www.w3.org/2000/svg"> <path d="M45 80l55 50 55-50"
                                                                                             fill="none"
                                                                                             stroke="currentColor"
                                                                                             stroke-linecap="round"
                                                                                             stroke-linejoin="round"
                                                                                             stroke-width="10"></path> </svg></span>
                </div>
            </div>
            <div>

            </div>
        </div>
    </div>
  
   <form action="/AirlineReservationSystem/search" method="GET">
    
    <div class="resultSearch--formview--search">
      <div class="search--group">
        <div class="search--group--from">
         
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-plane"></i></span>
            </div>
            <input type="text" class="form-control" placeholder="From" id="from" name="from">
          </div>
        </div>
        <div class="search--group--to">
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-plane"></i></span>
            </div>
            <input type="text" class="form-control" placeholder="To" id="to" name="to">
          </div>
        </div>
        <div class="search--group--Datefrom">  
         <div class="form-group">
          <div class="input-group" >
            <input type="text" class="form-control" id="datetimepicker" placeholder="Flight date" name="flight_date">
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-calendar"> 
                <!-- <i class="far fa-calendar-alt"></i> -->
              </span>

            </span>
          </div>
         </div>
        </div>
        <div class="search--group--Dateto">  
          <div class="form-group">
           <div class="input-group" >
             <input type="text" class="form-control" id="datetimepicker2" name="flight_return" placeholder="Date return">
             <span class="input-group-addon">
               <span class="glyphicon glyphicon-calendar"> 
                 <!-- <i class="far fa-calendar-alt"></i> -->
               </span>
 
             </span>
           </div>
          </div>
         
       
         </div>
        <div class="search--group--btn"> 
          <input type="submit" class="btn btn-info" value="Search"></input>
        </div>
      </div>
    </div>
    </form>
</header>

<div class="travel-inspiration" >
    <h1>
        Travel inspiration
    </h1>
    <h2>
        Our latest travel tips, expert hacks and industry insights to help make your journey one to remember
    </h2>
    <div class="box ">
        <div class="box-container-travel-inspiration">
            <div class="travel-plan-box">
                <img alt=""
                     src="https://www.momondo.com/discover/wp-content/uploads/sites/260/2020/11/dest_usa_utah_salt-lake-city_salt-lake-city-airport_shutterstock-portfolio_1011872626_universal_within-usage-period_63084-1_graded-1024x700.jpg">
                <div>
                    <h3 class="footer-extrainfo">Nov 12, 2020 - 3 mins</h3>
                    <h4 class="footer-title">How the Least CO₂ sorter works &nbsp; &nbsp; &nbsp;</h4>
                </div>
            </div>

            <div class="travel-plan-box">
                <img alt=""
                     src="https://www.momondo.com/discover/wp-content/uploads/sites/260/2017/01/adc91ebd-f21a-34d0-bb2c-3d4039e381f5.jpg">
                <div>
                    <h3 class="footer-extrainfo">Aug 11, 2020 - 9 mins</h3>
                    <h4 class="footer-title">The most underrated destinations across the USA</h4>
                </div>
            </div>
            <div class="travel-plan-box">
                <img alt=""
                     src="https://www.momondo.com/discover/wp-content/uploads/sites/260/2019/05/2f5e8edc-752c-394d-b304-249db8bba475.jpg">
                <div>
                    <h3 class="footer-extrainfo">May 28, 2020 - 7 mins</h3>
                    <h4 class="footer-title">An epic Florida road trip: not your usual suspects</h4>
                </div>
            </div>
            <div class="travel-plan-box">
                <img alt=""
                     src="https://www.momondo.com/discover/wp-content/uploads/sites/260/2019/04/b4eac335-e67e-3ca2-a758-41ac21847dee.jpg">
                <div>
                    <h3 class="footer-extrainfo">Aug 11, 2020 - 10 mins</h3>
                    <h4 class="footer-title">USA road trip: discover the canyon country of the American Southwest</h4>
                </div>
            </div>
        </div>
    </div>
    <div class="more-inspiration box">
        <a href="#">More inspiration</a>
    </div>
</div>
<div class="trending-cities">
    <h1>
        Trending cities
    </h1>
    <h2>
        The most searched for cities on Voyago
    </h2>
    <div class="box ">
        <div class="box-container-trending-cities">
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/14/93/fb583943-city-11123-162bfe335ec.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Atlanta</h4>
                </div>
            </div>

            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/44/03/039b6635-city-26939-16547ad1af4.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Frankfurt am Main</h4>
                </div>
            </div>
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/1e/ab/0efcd7ef-city-9880-1606b631185.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Stockholm</h4>
                </div>
            </div>
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/29/40/3f4ec996-city-28070-177cef0b18b.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Honolulu</h4>
                </div>
            </div>
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/43/13/50b08afe-city-3430-177cf091a32.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Istanbul</h4>
                </div>
            </div>
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/2a/97/87dd8fb4-city-12552-1660f9d64bf.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">San Juan</h4>
                </div>
            </div>
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/88/8a/83fa3c42-city-2279-159a8396afc.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Washington</h4>
                </div>
            </div>
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/ca/7e/9ae1c4b2-city-21033-16374d0645f.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Tokyo</h4>
                </div>
            </div>
            <div class="cities-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/3f/25/1f5a7b8e-city-29645-177d6336e66.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Manila</h4>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="trending-country" class = "style-h1">
    <h1>
        Trending countries
    </h1>
    <h2>
        The most searched for countries on Voyago
    </h2>
    <div class="box ">
        <div class="box-container-trending-country">
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/30/a6/9ebc193e-city-34713-1660ff764a9.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Mexico</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/08/48/2dcba17f-ctry-252-169b922ea60.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">United Kingdom</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/09/9c/b662bbbc-city-9109-164cd8b9797.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Germany</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/0e/7b/d80b3441-city-22567-177c9458568.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Spain</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/ad/31/77bb1c87-ctry-94-168944d8c8b.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Greece</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/05/fd/515362c8-lm-3638-165cdb13a57.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Italy</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/ac/e9/8526b2ee-ctry-65-168eb25e378.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Denmark</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/bd/d1/2f268866-city-36014-165d733974e.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">France</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/fb/77/2075eb5f-ctry-112-16874f7fbaf.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">India</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/e4/b3/620cff53-city-6035-1671743e6dc.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Bulgari</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/ca/7e/9ae1c4b2-city-21033-16374d0645f.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Japan</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/e7/b9/eceb83b7-ctry-245-169b91b3dd8.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Turkey</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/1e/ab/0efcd7ef-city-9880-1606b631185.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Sweden</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/f2/49/9fa59810-ctry-194-16c3ec1aba8.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Philippines</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/91/a4/1099d7dc-ctry-197-16c86189ff0.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Portugal</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/4c/b0/d0ae5074-ctry-238-164f654f0a4.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Thailand</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/40/e4/2aca6b8d-ctry-43-169b92d1978.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Canada</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/44/df/6183460f-city-25578-1645bb38ecb.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Romania</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/2a/97/87dd8fb4-city-12552-1660f9d64bf.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Puerto Rico</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/a9/71/d89bccaa-lm-161484-172609903b4.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Brazil</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/97/be/2fb207ca-ctry-250-16874e5f669.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Ukraine</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/9d/a6/4f3f3172-ctry-184-16e6b86b396.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Norway</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/8e/a5/73e3f2e4-ctry-174-16751e307dc.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Netherlands</h4>
                </div>
            </div>
            <div class="country-plan-box">
                <img alt=""
                     src="https://www.momondo.com/rimg/dimg/d5/7f/301d58bc-ctry-202-168750c0fd8.jpg">
                <div>
                    <h3 class="footer-extrainfo">flights to</h3>
                    <h4 class="footer-title">Russia</h4>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="flights-deal" class = "style-h1">
    <h1>
        Flights deals by destination
    </h1>
    <h2>
        Find and compare cheap flights
    </h2>
    <p>We search and compare billions of real-time prices on plane tickets so you can easily find the
        cheapest,
        quickest, and best flight deals for you.
    </p>
    <div class="box">
        <div class="columns-flights">
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        New York flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Angeles to New York</a>
                    <a href="#">Flights from Chicago to New York</a>
                    <a href="#">Flights from Atlanta to New York</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        London flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from New York to London</a>
                    <a href="#">Flights from Seattle to London</a>
                    <a href="#">Flights from Washington to London</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Los Angeles flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from New York to Los Angeles</a>
                    <a href="#">Flights from Minneapolis to Los Angeles</a>
                    <a href="#">Flights from Houston to Los Angeles</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Paris flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from New York to Paris</a>
                    <a href="#">Flights from Chicago to Paris</a>
                    <a href="#">Flights from Boston to Paris</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Orlando flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from New York to Orlando</a>
                    <a href="#">Flights from Detroit to Orlando</a>
                    <a href="#">Flights from Boston to Orlando</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Las Vegas flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Angeles to las Vegas</a>
                    <a href="#">Flights from Chicago to Las Vegas</a>
                    <a href="#">Flights from Atlanta to Las Vegas</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Rome flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Orlando to Rome</a>
                    <a href="#">Flights from Austin to Rome</a>
                    <a href="#">Flights from Atlanta to Rome</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Barcelona flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Angeles to Barcelona</a>
                    <a href="#">Flights from Chicago to Barcelona</a>
                    <a href="#">Flights from Boston to Barcelona</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Chicago flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Angeles to Chicago</a>
                    <a href="#">Flights from Philadelphia to Chicago</a>
                    <a href="#">Flights from Orlando to Chicago</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Miami flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Detroit to Miami</a>
                    <a href="#">Flights from Chicago to Miami</a>
                    <a href="#">Flights from Atlanta to Miami</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Madrid flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Miami to Madrid</a>
                    <a href="#">Flights from Chicago to Madrid</a>
                    <a href="#">Flights from Dallas to Madrid</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        San Francisco flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Angeles to San Francisco</a>
                    <a href="#">Flights from Boston to San Francisco</a>
                    <a href="#">Flights from Seattle to San Francisco</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Bangkok flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Angeles to Bangkok</a>
                    <a href="#">Flights from Houston to Bangkok</a>
                    <a href="#">Flights from Atlanta to Bangkok</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Cancún flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Los Angeles to Cancún</a>
                    <a href="#">Flights from Washington to Cancún</a>
                    <a href="#">Flights from Denver to Cancún</a>
                </div>
            </div>
            <div class="flights">
                <div class="flight">
                    <div class="flight-name">
                        Manila flights
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="flights-destination-list">
                    <a href="#">Flights from Honolulu to Manila</a>
                    <a href="#">Flights from Las Vegas to Manila</a>
                    <a href="#">Flights from Atlanta to Manila</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="how-to-find-cheap-flights" class ="style-h1">
    <h1>
        How to find cheap flights deals with Voyago?
    </h1>
    <div class="box">
        <div class="columns-how">
            <div class="how-to">
                <div class="ques">
                    <div>
                        How does Voyago find such cheap airfare?
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="dropdown-content">
                    <p>
                        Voyago searches across hundreds of airlines and travel sites, from major booking sites to
                        individual company sites, to give you as many cheap airfare options as possible. When you
                        conduct a single search on momondo, you can find and compare cheap airline tickets like you’ve
                        done hundreds of searches at once. </p>

                    <p>Voyago is completely free to use - with no hidden charges or fees - and the prices you see are
                        never affected by your searches, no matter how many you make.</p>

                    <p> We believe in an open world, where traveling and getting acquainted across borders and cultures
                        is available to us all, so we’re committed to showing you the cheapest flights in our flight
                        finder.</p>
                </div>
            </div>
            <div class="how-to">
                <div class="ques">
                    <div>
                        How do I find the best price on plane tickets?
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="dropdown-content">
                    <p>
                        Choose your destination and preferred travel dates, and we’ll provide you with an overview of
                        the cheapest, quickest, and best flights so you can compare prices and book flights with
                        confidence. </p>

                    <p> Flexible on dates? It’s even easier to find cheap flights by using our Price Calendar (found
                        above your search results), which shows you the cheapest travel dates. This is available on all
                        of our most popular flight routes.</p>
                </div>
            </div>
            <div class="how-to">
                <div class="ques">
                    <div>
                        How can Mix & Match save me money?
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="dropdown-content">
                    <p>
                        Sometimes you can save money by combining flight tickets from different suppliers, and we call
                        that Mix & Match. This means you can book your outbound flight with one supplier, and your
                        return flight with another.</p>

                    <p> If you can save money by combining tickets from different suppliers, we’ll automatically include
                        this option in your flight results and label it Mix & Match. You’ll have to complete two
                        separate booking flows after you select this deal on our site, but it’s worth it if you can save
                        money over a traditional round-trip with one supplier.
                        It’s an advanced way of getting the cheapest flights even if they’re offered by different
                        suppliers.
                    </p>
                </div>
            </div>
            <div class="how-to">
                <div class="ques">
                    <div>
                        How do I make sure I don’t miss a flight deal?
                    </div>
                    <div>
                        <svg height="100%" viewBox="0 0 200 200" width="20px" xmlns="http://www.w3.org/2000/svg">
                            <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                  stroke-linejoin="round" stroke-width="10"></path>
                        </svg>
                    </div>
                </div>
                <div class="dropdown-content">
                    <p>
                        Sign up for Price Alerts on your favorite flight routes and automatically get live price
                        updates, so you can book flights when the price is right. You can do so next to your flight
                        search results or in the profile menu. If you're on our app, you will find Price Alerts in the
                        navigation menu. </p>

                    <p>You can also subscribe to special offers and limited-time flight deals from our partners. Just
                        sign in, go to Notifications in your profile and subscribe to the topics you’re interested in.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div class="block-quote">
    <div class="box">
        <blockquote>
            Strength lies in its ’Flight Insight’ feature, a powerhouse of stats to help pinpoint when to book,
            which day to fly and even which airport’s cheapest
        </blockquote>
        <p>The Telegraph</p>
    </div>
</div>
<div class="a-little-bit-more" class = "style-h1">
    <h1>
        A little bit more about Voyago flights
    </h1>
    <h2>
        Here’s why travellers use Voyago as their free service to find cheap flights
    </h2>
    <div class="box more-info">
        <div>
            <h3>
                Get the best deals
            </h3>
            <p>
                We search and compare real-time prices on flights, hotels and cars so you can find the cheapest,
                quickest and best travel deals
            </p>
        </div>
        <div>
            <h3>100% price transparency</h3>
            <p>The prices you see are never affected by your searches, no matter how many you make. We do not use
                cookies to adjust or increase prices</p>
        </div>
        <div>
            <h3>Trusted and free</h3>
            <p>We’re completely free to use – no hidden charges or fees – and we’re endorsed by Frommer’s, CNN and the
                New York Times</p>
        </div>
    </div>
</div>
<footer>
    <div class="footer-section">
        <div class="box">
            <div class="contact-information">
                <div class="company">
                    <div style="font-size: 65%; margin-bottom: 10px">Company</div>
                    <a href="#">About</a>
                    <a href="#">Careers</a>
                    <a href="#">Mobile</a>
                    <a href="#">Discover</a>
                    <a href="#">How we work</a>
                    <a href="#">Why travelers choose Tunny</a>
                    <a href="#">Sustainability</a>
                    <a href="#">Voyago coupon codes</a>
                </div>
                <div class="contact">
                    <div style="font-size: 65%; margin-bottom: 10px">Contact</div>
                    <a href="#">Help/FAQ</a>
                    <a href="#">Press</a>
                    <a href="#">Affiliates</a>
                    <a href="#">Advertise with us</a>
                </div>
                <div class="more">
                    <div style="font-size: 65%; margin-bottom: 10px">More</div>
                    <a href="#">Airline fees</a>
                    <a href="#">Airlines</a>
                </div>
                <div class="site-currency">
                    <div style="font-size: 65%; margin-bottom: 10px">Site / Currency</div>
                    <div>
                        <div class="sites">
                            <div style="font-size: 60%;"><span style="margin: 0 4px 0 10px;"><i
                                    class="fas fa-flag-usa"></i></span>
                                United States
                            </div>
                            <svg height="100%" viewBox="0 0 200 200" width="13px" xmlns="http://www.w3.org/2000/svg">
                                <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-width="10"></path>
                            </svg>
                        </div>
                        <div class="currency">
                            <div style="font-size: 60%"><span style="margin: 0 10px">$</span>United States Dollar</div>
                            <svg height="100%" viewBox="0 0 200 200" width="13px" xmlns="http://www.w3.org/2000/svg">
                                <path d="M45 80l55 50 55-50" fill="none" stroke="currentColor" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-width="10"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="privacy">
                <a href="#">Privacy</a>
                <a href="#">Term & Conditions</a>
                <a href="#">Ad choices</a>
                <a href="#">&copy;2021 Voyago</a>
            </div>
        </div>
        <div class="box">
            <div class="footer-icons">
                <a href="#"><i class="fab fa-facebook-square"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
        </div>
        <div class="box">
            <div class="des-p">
                <p>Voyago is part of Booking Holdings Inc., the world leader in online travel & related services.</p>
            </div>
        </div>
        <div class="box">
            <div class="footer-logos">
                <div class="booking"></div>
                <div class="kayak"></div>
                <div class="open-table"></div>
                <div class="priceline"></div>
                <div class="agoda"></div>
                <div class="rentalcars"></div>
            </div>
        </div>
    </div>
</footer>
</body>
<script type="text/javascript">
        $('#datetimepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });
        $('#datetimepicker2').datepicker({
            uiLibrary: 'bootstrap4'
        });
        let inputRange=document.querySelector(".range")
        let second=document.querySelector(".second")
       
        inputRange.oninput=(()=>{
          
          second.textContent=inputRange.value
        })
        let activeMain=document.querySelectorAll(".tab-custom")
        activeMain.forEach((e)=>{
          e.addEventListener((a)=>{
            console.log(a);
          })
        })
      
       function chooseStop(value){
        document.querySelector(".custombutton1").textContent=value
       }

      
       
       function chooseTypeTicket(value){
        document.querySelector(".custombutton2").textContent=value
       }
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</html>