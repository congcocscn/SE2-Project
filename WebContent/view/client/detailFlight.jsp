<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${url}/css/detailFlight.css" />
    <link href="${url}/images/favicon.png" rel="shortcut icon" >
    <link href="${url}/css/style.css" rel="stylesheet" >
    <link href="${url}/css/responsive.css" rel="stylesheet" >
    <link href="${url}/images/logo.png" rel="logo" >
    <title>Voyago</title>
</head>

<body>
<!--header cua thuy  -->
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
<!--header cua thuy  -->
        <div class="page">
            <header class="header">
<!--                 <div class="header_menu">
                    <div class="header_menu_info">
                        <div class="header_menu_info_inside">
                            <a href="https://www.google.com/">Can we help?</a>
                            <a href="https://www.google.com/">Login</a>
                        </div>
                    </div>
                </div>
 -->               <!--  <div class="header_brand">
                    <div class="header_brand_content">
                        <div class="header_brand_content_inner">
                            <a href="flightDetails.html" class="header_brand_content_inner_logo"><img
                                    src="Face transparent.png" alt="SE2" style="width:150px;height: 150px"></a>
                        </div>
                    </div>
                </div> -->
            </header>
            <div class="body_content">
                <div class="title" style= "color:black">Your trip to ${flight.getArrival()} </div>
                <div class="sidebar">
                    <div class="sidebar_passengers">
                        <div class="sidebar_passengers_image">
                            <div class="sidebar_passengers_image_top" style="background-image: url('${url}/images/backgr.jpg');">
                                <div class="innertext">
                                    <div class="innertext1">Your trip to</div>
                                    <div class="innertext2">${flight.getArrival()}</div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar_passengers_travellers">
                            <div class="sidebar_passengers_travellers_innertext">
                                <div class="sidebar_passengers_travellers_innertext1">Passengers</div>
                                <div class="sidebar_passengers_travellers_innertext2">1 adult, 1 child</div>
                            </div>
                        </div>
                        <div class="sidebar_passengers_bags">
                            <div class="title_wrap">
                                <div class="title_text">Check-in baggage</div>
                            </div>
                            <div class="bags_segments">
                                <div class="bags_segments_departure">
                                    <div class="bags_segments_departure_1">
                                        <div class="bags_segments_departure_1_text">Departure</div>
                                    </div>
                                    <div class="bags_segments_departure_2">
                                        <div class="bags_segments_departure_2_text">No bags</div>
                                    </div>
                                </div>
                                <div class="bags_segments_return">
                                    <div class="bags_segments_return_1">
                                        <div class="bags_segments_return_1_text">Return</div>
                                    </div>
                                    <div class="bags_segments_return_2">
                                        <div class="bags_segments_return_2_text">2 x bags</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar_passengers_services">
                            <div class="title_wrap">
                                <div class="title_text">Services</div>
                            </div>
                            <div class="sidebar_passengers_services_innertext">No extra services selected</div>
                        </div>
                        <div class="sidebar_passengers_prime">
                            <div class="primeSection">
                                <div class="title_wrap">
                                    <div class="title_text">Prime</div>
                                </div>
                                <div class="primeSection_text1">
                                    <div class="wrap1">
                                        <div class="primeSection_text1_innertext1">Regular price</div>
                                    </div>
                                    <div class="wrap2">
                                        <div class="primeSection_text1_innertext2">€ ${ticket.price }</div>
                                    </div>
                                </div>
                                <div class="primeSection_text2">
                                    <div class="wrap1">
                                        <div class="primeSection_text2_innertext1">Prime discount applied</div>
                                    </div>
                                    <div class="wrap2">
                                        <div class="primeSection_text2_innertext2">€ ${ticket.price }</div>
                                    </div>
                                </div>
                            </div>
                            <div class="totalPrice">
                                <div class="totalPrice_text1">
                                    <div class="wrap1">
                                        <div class="totalPrice_text1_innertext1">Final price</div>
                                    </div>
                                    <div class="wrap2">
                                        <div class="totalPrice_text1_innertext2">${ticket.price }</div>
                                    </div>
                                </div>
                                <div class="totalPrice_text2">
                                    <div class="wrap1">
                                        <div class="totalPrice_text2_innertext">Price per person</div>
                                    </div>
                                    <div class="wrap2">
                                        <div class="totalPrice_text2_innertext">$${ticket.price }</div>
                                    </div>
                                </div>
                                <div class="totalPrice_text3">Taxes and service charges included</div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar_persuasion">
                        <div class="sidebar_persuasion_title">Why book with Voyago? </div>
                        <div class="sidebar_persuasion_reasons">
                            <ul>
                                <li>Part of <b>Europe's largest travel company</b></li>
                                <li><b>Voyago price guarantee</b></li>
                                <li><b>Free same-day cancellation</b> on most flights</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="details">
                    <div class="details_login">
                        <div class="details_login_wrap">
                            <div class="details_login_wrap_text">
                                <div class="details_login_wrap_text_innertext">Already have an account? </div>
                                <div>Log in to book faster </div>
                            </div>
                            <div class="details_login_wrap_button">
                                <button type="button" class="details_login_wrap_button_inside">Log in</button>
                            </div>
                        </div>
                    </div>
                    <div class="details_flight">
                        <div class="details_flight_header">
                            <div class="details_flight_header_text">Itinerary: <span style="font-weight: lighter;">flight</span></div>
                        </div>
                        <div class="details_flight_body">
                            <div class="details_flight_body_content">
                                <div class="details_flight_body_content_title">
                                    <div class="details_flight_body_content_title_1">
                                        <div class="details_flight_body_content_title_1_logo"
                                            style="background-image: url(${url}/images/vietjet.png)"></div>
                                        <span class="details_flight_body_content_title_1_text1">Departure</span>
                                        <span class="details_flight_body_content_title_1_text2" >${flight.getAirlineName()}</span>
                                    </div>
                                    <div class="details_flight_body_content_title_2">${flight.getFlightDate()}</div>
                                </div>
                                <div class="details_flight_body_content_inside">
                                    <div class="details_flight_body_content_inside_left">
                                        <div class="details_flight_body_content_inside_left_first">
                                            <div class="details_flight_body_content_inside_left_first_text">
                                                <span class="details_flight_body_content_inside_left_first_text_1">
                                                    <span
                                                        class="details_flight_body_content_inside_left_first_text_1_time"
                                                        style="font-weight: 600;">${flight.getDepartureTime() }</span>
                                                    <span> HAN</span>
                                                </span>
                                                <div class="details_flight_body_content_inside_left_first_text_2">
                                                    <div>${flight.getFlightDate()}</div>
                                                    <span>
                                                        <span>${flight.getDeparture()}</span>
                                                        <span>(Viet Nam)</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="details_flight_body_content_inside_left_middle">
                                            <div class="details_flight_body_content_inside_left_middle_line">&#10230;
                                            </div>
                                            <div class="details_flight_body_content_inside_left_middle_text">${flight.getStop()}
                                            </div>
                                        </div>
                                        <div class="details_flight_body_content_inside_left_last">
                                            <div class="details_flight_body_content_inside_left_last_text_1">
                                                <span class="details_flight_body_content_inside_left_last_text_1_time"
                                                    style="font-weight: 600;">${flight.getArrivalTime() }</span>
                                                <span> PQC</span>
                                            </div>
                                            <div class="details_flight_body_content_inside_left_last_text_2">
                                                <div>${flight.getFlightDate()}</div>
                                                <span>
                                                    <span>${flight.getArrival()}</span>
                                                    <span>(Viet Nam)</span> </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="details_flight_body_content_inside_right">
                                        <div class="details_flight_body_content_inside_right_text_1">${flight.getFlightDuration() }</div>
                                        <div class="details_flight_body_content_inside_right_text_2">Carry-on included
                                        </div>
                                    </div>
                                </div>
                                <div class="details_flight_body_content_title">
                                    <div class="details_flight_body_content_title_1">
                                        <div class="details_flight_body_content_title_1_logo"
                                            style="background-image: url(${url}/images/vietjet.png)"></div>
                                        <span class="details_flight_body_content_title_1_text1">Return</span>
                                        <span class="details_flight_body_content_title_1_text2"> ${flight.getAirlineName()}</span>
                                    </div>
                                    <div class="details_flight_body_content_title_2">${flight.getFlightDate()} </div>
                                </div>
                                <div class="details_flight_body_content_inside">
                                    <div class="details_flight_body_content_inside_left">
                                        <div class="details_flight_body_content_inside_left_first">
                                            <div class="details_flight_body_content_inside_left_first_text">
                                                <span class="details_flight_body_content_inside_left_first_text_1">
                                                    <span
                                                        class="details_flight_body_content_inside_left_first_text_1_time"
                                                        style="font-weight: 600;">${flight.getDepartureTime() }</span>
                                                    <span> PQC</span>
                                                </span>
                                                <div class="details_flight_body_content_inside_left_first_text_2">
                                                    <div>${flight.getFlightDate()}</div>
                                                    <span>
                                                        <span>${flight.getArrival()}</span>
                                                        <span>(Viet Nam)</span> </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="details_flight_body_content_inside_left_middle">
                                            <div class="details_flight_body_content_inside_left_middle_line">&#10230;
                                            </div>
                                            <div class="details_flight_body_content_inside_left_middle_text">${flight.getStop() }
                                            </div>
                                        </div>
                                        <div class="details_flight_body_content_inside_left_last">
                                            <div class="details_flight_body_content_inside_left_last_text_1">
                                                <span class="details_flight_body_content_inside_left_last_text_1_time"
                                                    style="font-weight: 600;">${flight.getArrivalTime() } </span>
                                                <span> HAN</span>
                                            </div>
                                            <div class="details_flight_body_content_inside_left_last_text_2">
                                                <div>${flight.getFlightDate()}</div>
                                                <span>
                                                    <span>${flight.getDeparture()}</span>
                                                    <span>(Viet Nam)</span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="details_flight_body_content_inside_right">
                                        <div class="details_flight_body_content_inside_right_text_1">${flight.getFlightDuration() }</div>
                                        <div class="details_flight_body_content_inside_right_text_2">Carry-on included
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details_persuasiveMessage">
                        <div class="details_persuasiveMessage_wrap">
                            <div class="details_persuasiveMessage_wrap_inside">
                                <div class="details_persuasiveMessage_wrap_inside_content">
                                    <span class="details_persuasiveMessage_wrap_inside_content1">Don't lose out!</span>
                                    <span class="details_persuasiveMessage_wrap_inside_content2">Prices may rise. Nab
                                        this
                                        deal before it's too late. </span>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                   
                   <div class="details_passengers">
                    <div class="details_passengers_header">
                        <div class="details_passengers_header_wrap">
                            <span class="details_passengers_header_wrap_text_1"> Passenger Information </span>
                            <span class="details_passengers_header_wrap_text_2"></span>
                        </div>
                    </div>
                    <div class="details_passengers_content">
                        <form class="details_passengers_content_wrap" action="/AirlineReservationSystem/buyticket" method="get">
                            <div class="details_passengers_content_wrap_gender">
                                <div class="details_passengers_content_wrap_gender_field">
                                    <div class="details_passengers_content_wrap_gender_field_checkbox">
                                        <div class="details_passengers_content_wrap_gender_field_checkbox_male">
                                            <input
                                                class="details_passengers_content_wrap_gender_field_checkbox_male_input"
                                                id="0-radio-travellerGender-0" type="radio" data-name="gender"
                                                name="gender" data-role="native"
                                                data-validation-type="NULL_VALIDATOR" value="male" >
                                            <label
                                                class="details_passengers_content_wrap_gender_field_checkbox_male_label"
                                                for="0-radio-travellerGender-0">
                                                <span
                                                    class="details_passengers_content_wrap_gender_field_checkbox_male_label_radio">
                                                    <span
                                                        class="details_passengers_content_wrap_gender_field_checkbox_male_label_radio_fill"></span>
                                                </span>
                                                Male
                                            </label>
                                        </div>
                                        <div class="details_passengers_content_wrap_gender_field_checkbox_female">
                                            <input
                                                class="details_passengers_content_wrap_gender_field_checkbox_female_input"
                                                id="0-radio-travellerGender-1" type="radio" data-name="gender"
                                                name="gender" data-role="native"
                                                data-validation-type="NULL_VALIDATOR" value="female">
                                            <label
                                                class="details_passengers_content_wrap_gender_field_checkbox_female_label"
                                                for="0-radio-travellerGender-1">
                                                <span
                                                    class="details_passengers_content_wrap_gender_field_checkbox_female_label_radio">
                                                    <span
                                                        class="details_passengers_content_wrap_gender_field_checkbox_female_label_radio_fill"></span>
                                                </span>
                                                Female
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="details_passengers_content_wrap_info">
                                <div class="details_passengers_content_wrap_info_field">
                                    <span class="details_passengers_content_wrap_info_field_nowrap">
                                        <span class="details_passengers_content_wrap_info_field_nowrap_text"
                                            data-label-name="name">First name(s)
                                        </span>
                                    </span>
                                    <div class="details_passengers_content_wrap_info_field_wrapper" data-type="input">
                                        <input class="details_passengers_content_wrap_info_field_wrapper_input" type=""
                                            autocapitalize="on" autocomplete="nope" data-name="firstname" name="firstname"
                                            data-validation-type="REGEX_VALIDATOR" data-pattern-type=""
                                            data-error="Enter a valid first name (e.g. Amelia)"
                                            data-mandatory="Enter a first name" data-requiredoptional=""
                                            data-note="Make sure your Name is the same as appears in your ID"
                                            maxlength="30" data-role="" data-format="" placeholder="E.g. Amelia"
                                          
                                            >
                                    </div>
                                    <span class="details_passengers_content_wrap_info_field_bottom">As
                                        appears on the travel document
                                    </span>
                                </div>
                                  <div class="details_passengers_content_wrap_info_field">
                                    <span class="details_passengers_content_wrap_info_field_nowrap">
                                        <span class="details_passengers_content_wrap_info_field_nowrap_text"
                                            data-label-name="firstLastName">Last name
                                        </span>
                                    </span>
                                    <div class="details_passengers_content_wrap_info_field_wrapper" data-type="input">
                                        <input class="details_passengers_content_wrap_info_field_wrapper_input" type=""
                                            autocapitalize="on" autocomplete="nope" data-name="lastName"
                                            name="lastName" data-validation-type="REGEX_VALIDATOR"
                                            data-pattern-type="" data-error="Enter a valid last name (e.g. Earhart)"
                                            data-mandatory="Enter a last name" data-requiredoptional=""
                                            data-note="Make sure your Last Name is the same as appears on your ID card"
                                            maxlength="50" data-role="" data-format="" placeholder="E.g. Earhart">
                                    </div>
                                    <span class="details_passengers_content_wrap_info_field_bottom">As
                                        it appears on the travel document
                                    </span>
                                </div>
                              <!--   add more -->
                                <div class="details_billing_content_form_section_inside_email_field">
                                            <span
                                                class="details_billing_content_form_section_inside_email_field_nowrap">
                                                <span
                                                    class="details_billing_content_form_section_inside_email_field_nowrap_text"
                                                    data-label-name="mail">Email </span>
                                            </span>

                                            <div class="details_billing_content_form_section_inside_email_field_wrapper"
                                                data-type="input">
                                                <input
                                                    class="details_billing_content_form_section_inside_email_field_wrapper_input"
                                                    type="email" autocapitalize="off" autocomplete="nope"
                                                    data-name="email" name="email" data-validation-type="REGEX_VALIDATOR"
                                                    data-pattern-type="" data-error="Enter a valid email address"
                                                    data-mandatory="Enter an email address" data-requiredoptional=""
                                                    data-note="We will send you the confirmation of your reservation to this address"
                                                    maxlength="64" data-role="" data-format=""
                                                    placeholder="name@example.com">
                                            </div> <span class="od-checkmark od-form-checkmark-wrapped"
                                                data-validicon="7" data-invalidicon="r"></span>
                                            <span
                                                class="details_billing_content_form_section_inside_email_field_bottom">Where
                                                we will send your confirmation </span>
                                        </div>
                                           <div class="details_billing_content_form_section_inside_address_field"> <span
                                                class="details_billing_content_form_section_inside_address_field_nowrap">
                                                <span
                                                    class="details_billing_content_form_section_inside_address_field_nowrap_text"
                                                    data-label-name="cityName">phone Number
                                                </span>
                                            </span>

                                            <div class="details_billing_content_form_section_inside_address_field_wrapper"
                                                data-type="input">
                                                <input
                                                    class="details_billing_content_form_section_inside_address_field_wrapper_input"
                                                    type="text" autocapitalize="on" autocomplete="nope" data-name="phoneNumber"
                                                    name="phoneNumber" data-validation-type="REGEX_VALIDATOR"
                                                    data-pattern-type="" data-error="Enter a valid city name"
                                                    data-mandatory="Enter a city name" data-requiredoptional=""
                                                    data-note="" maxlength="50" data-role="" data-format=""
                                                    placeholder="phoneNumber">
                                            </div>
                                            <span
                                                class="details_billing_content_form_section_inside_adress_field_bottom">Without
                                                punctuation </span>
                                        </div>
                                        <div class="details_billing_content_form_section_inside_country_field">
                                            <span
                                                class="details_billing_content_form_section_inside_country_field_nowrap">
                                                <span
                                                    class="details_billing_content_form_section_inside_country_field_nowrap_text">Country
                                                </span>
                                            </span>
                                            <div class="details_billing_content_form_section_inside_country_field_wrapper"
                                                data-type="select">
                                                <select
                                                    class="details_billing_content_form_section_inside_country_field_wrapper_input_1"
                                                    data-name="nationality" name="nationality"
                                                    data-validation-type="NULL_VALIDATOR" data-error="Choose a country"
                                                    data-mandatory="Choose a country" data-requiredoptional=""
                                                    data-note="" data-init="true" data-role="native"
                                                    autocomplete="nope">
                                                    <option data-index="0" value="US" selected="">
                                                        United States
                                                    </option>
                                                    <option data-index="1" value="AF">
                                                        Afghanistan
                                                    </option>
                                                    <option data-index="2" value="AX">
                                                        Åland Islands
                                                    </option>
                                                    <option data-index="3" value="AL">
                                                        Albania
                                                    </option>
                                                    <option data-index="4" value="DZ">
                                                        Algeria
                                                    </option>
                                                    <option data-index="5" value="AS">
                                                        American Samoa
                                                    </option>
                                                    <option data-index="6" value="AD">
                                                        Andorra
                                                    </option>
                                                    <option data-index="7" value="AO">
                                                        Angola
                                                    </option>
                                                    <option data-index="8" value="AI">
                                                        Anguilla
                                                    </option>
                                                    <option data-index="9" value="AQ">
                                                        Antarctica
                                                    </option>
                                                    <option data-index="10" value="AG">
                                                        Antigua and Barbuda
                                                    </option>
                                                    <option data-index="11" value="AR">
                                                        Argentina
                                                    </option>
                                                    <option data-index="12" value="AM">
                                                        Armenia
                                                    </option>
                                                    <option data-index="13" value="AW">
                                                        Aruba
                                                    </option>
                                                    <option data-index="14" value="AU">
                                                        Australia
                                                    </option>
                                                    <option data-index="15" value="AT">
                                                        Austria
                                                    </option>
                                                    <option data-index="16" value="AZ">
                                                        Azerbaijan
                                                    </option>
                                                    <option data-index="17" value="BS">
                                                        Bahamas
                                                    </option>
                                                    <option data-index="18" value="BH">
                                                        Bahrain
                                                    </option>
                                                    <option data-index="19" value="BD">
                                                        Bangladesh
                                                    </option>
                                                    <option data-index="20" value="BB">
                                                        Barbados
                                                    </option>
                                                    <option data-index="21" value="BY">
                                                        Belarus
                                                    </option>
                                                    <option data-index="22" value="BE">
                                                        Belgium
                                                    </option>
                                                    <option data-index="23" value="BZ">
                                                        Belize
                                                    </option>
                                                    <option data-index="24" value="BJ">
                                                        Benin
                                                    </option>
                                                    <option data-index="25" value="BM">
                                                        Bermuda
                                                    </option>
                                                    <option data-index="26" value="BT">
                                                        Bhutan
                                                    </option>
                                                    <option data-index="27" value="BO">
                                                        Bolivia
                                                    </option>
                                                    <option data-index="28" value="BA">
                                                        Bosnia and Herzegovina
                                                    </option>
                                                    <option data-index="29" value="BW">
                                                        Botswana
                                                    </option>
                                                    <option data-index="30" value="BV">
                                                        Bouvet Island
                                                    </option>
                                                    <option data-index="31" value="BR">
                                                        Brazil
                                                    </option>
                                                    <option data-index="32" value="IO">
                                                        British Indian Ocean Territory
                                                    </option>
                                                    <option data-index="33" value="BN">
                                                        Brunei
                                                    </option>
                                                    <option data-index="34" value="BG">
                                                        Bulgaria
                                                    </option>
                                                    <option data-index="35" value="BF">
                                                        Burkina Faso
                                                    </option>
                                                    <option data-index="36" value="BI">
                                                        Burundi
                                                    </option>
                                                    <option data-index="37" value="KH">
                                                        Cambodia
                                                    </option>
                                                    <option data-index="38" value="CM">
                                                        Cameroon
                                                    </option>
                                                    <option data-index="39" value="CA">
                                                        Canada
                                                    </option>
                                                    <option data-index="40" value="CV">
                                                        Cape Verde
                                                    </option>
                                                    <option data-index="41" value="BQ">
                                                        Caribbean Netherlands
                                                    </option>
                                                    <option data-index="42" value="KY">
                                                        Cayman Islands
                                                    </option>
                                                    <option data-index="43" value="CF">
                                                        Central African Republic
                                                    </option>
                                                    <option data-index="44" value="TD">
                                                        Chad
                                                    </option>
                                                    <option data-index="45" value="CL">
                                                        Chile
                                                    </option>
                                                    <option data-index="46" value="CN">
                                                        China
                                                    </option>
                                                    <option data-index="47" value="CX">
                                                        Christmas Island
                                                    </option>
                                                    <option data-index="48" value="CC">
                                                        Cocos Islands
                                                    </option>
                                                    <option data-index="49" value="CO">
                                                        Colombia
                                                    </option>
                                                    <option data-index="50" value="KM">
                                                        Comoros
                                                    </option>
                                                    <option data-index="51" value="CG">
                                                        Congo
                                                    </option>
                                                    <option data-index="52" value="CK">
                                                        Cook Islands
                                                    </option>
                                                    <option data-index="53" value="CR">
                                                        Costa Rica
                                                    </option>
                                                    <option data-index="54" value="CI">
                                                        Côte d’Ivoire
                                                    </option>
                                                    <option data-index="55" value="HR">
                                                        Croatia
                                                    </option>
                                                    <option data-index="56" value="CU">
                                                        Cuba
                                                    </option>
                                                    <option data-index="57" value="CW">
                                                        Curaçao
                                                    </option>
                                                    <option data-index="58" value="CY">
                                                        Cyprus
                                                    </option>
                                                    <option data-index="59" value="CZ">
                                                        Czech Republic
                                                    </option>
                                                    <option data-index="60" value="DK">
                                                        Denmark
                                                    </option>
                                                    <option data-index="61" value="DJ">
                                                        Djibouti
                                                    </option>
                                                    <option data-index="62" value="DM">
                                                        Dominica
                                                    </option>
                                                    <option data-index="63" value="DO">
                                                        Dominican Republic
                                                    </option>
                                                    <option data-index="64" value="CD">
                                                        DR Congo
                                                    </option>
                                                    <option data-index="65" value="EC">
                                                        Ecuador
                                                    </option>
                                                    <option data-index="66" value="EG">
                                                        Egypt
                                                    </option>
                                                    <option data-index="67" value="SV">
                                                        El Salvador
                                                    </option>
                                                    <option data-index="68" value="GQ">
                                                        Equatorial Guinea
                                                    </option>
                                                    <option data-index="69" value="ER">
                                                        Eritrea
                                                    </option>
                                                    <option data-index="70" value="EE">
                                                        Estonia
                                                    </option>
                                                    <option data-index="71" value="ET">
                                                        Ethiopia
                                                    </option>
                                                    <option data-index="72" value="FK">
                                                        Falkland Islands
                                                    </option>
                                                    <option data-index="73" value="FO">
                                                        Faroe Islands
                                                    </option>
                                                    <option data-index="74" value="FJ">
                                                        Fiji
                                                    </option>
                                                    <option data-index="75" value="FI">
                                                        Finland
                                                    </option>
                                                    <option data-index="76" value="FR">
                                                        France
                                                    </option>
                                                    <option data-index="77" value="GF">
                                                        French Guiana
                                                    </option>
                                                    <option data-index="78" value="PF">
                                                        French Polynesia
                                                    </option>
                                                    <option data-index="79" value="TF">
                                                        French Southern Territories
                                                    </option>
                                                    <option data-index="80" value="GA">
                                                        Gabon
                                                    </option>
                                                    <option data-index="81" value="GM">
                                                        Gambia
                                                    </option>
                                                    <option data-index="82" value="GE">
                                                        Georgia
                                                    </option>
                                                    <option data-index="83" value="DE">
                                                        Germany
                                                    </option>
                                                    <option data-index="84" value="GH">
                                                        Ghana
                                                    </option>
                                                    <option data-index="85" value="GI">
                                                        Gibraltar
                                                    </option>
                                                    <option data-index="86" value="GR">
                                                        Greece
                                                    </option>
                                                    <option data-index="87" value="GL">
                                                        Greenland
                                                    </option>
                                                    <option data-index="88" value="GD">
                                                        Grenada
                                                    </option>
                                                    <option data-index="89" value="GP">
                                                        Guadeloupe
                                                    </option>
                                                    <option data-index="90" value="GU">
                                                        Guam
                                                    </option>
                                                    <option data-index="91" value="GT">
                                                        Guatemala
                                                    </option>
                                                    <option data-index="92" value="GN">
                                                        Guinea
                                                    </option>
                                                    <option data-index="93" value="GW">
                                                        Guinea-Bissau
                                                    </option>
                                                    <option data-index="94" value="GY">
                                                        Guyana
                                                    </option>
                                                    <option data-index="95" value="HT">
                                                        Haiti
                                                    </option>
                                                    <option data-index="96" value="HM">
                                                        Heard Island and McDonald Islands
                                                    </option>
                                                    <option data-index="97" value="HN">
                                                        Honduras
                                                    </option>
                                                    <option data-index="98" value="HK">
                                                        Hong Kong
                                                    </option>
                                                    <option data-index="99" value="HU">
                                                        Hungary
                                                    </option>
                                                    <option data-index="100" value="IS">
                                                        Iceland
                                                    </option>
                                                    <option data-index="101" value="IN">
                                                        India
                                                    </option>
                                                    <option data-index="102" value="ID">
                                                        Indonesia
                                                    </option>
                                                    <option data-index="103" value="IR">
                                                        Iran
                                                    </option>
                                                    <option data-index="104" value="IQ">
                                                        Iraq
                                                    </option>
                                                    <option data-index="105" value="IE">
                                                        Ireland
                                                    </option>
                                                    <option data-index="106" value="IL">
                                                        Israel
                                                    </option>
                                                    <option data-index="107" value="IT">
                                                        Italy
                                                    </option>
                                                    <option data-index="108" value="JM">
                                                        Jamaica
                                                    </option>
                                                    <option data-index="109" value="JP">
                                                        Japan
                                                    </option>
                                                    <option data-index="110" value="JE">
                                                        Jersey
                                                    </option>
                                                    <option data-index="111" value="JO">
                                                        Jordan
                                                    </option>
                                                    <option data-index="112" value="KZ">
                                                        Kazakhstan
                                                    </option>
                                                    <option data-index="113" value="KE">
                                                        Kenya
                                                    </option>
                                                    <option data-index="114" value="KI">
                                                        Kiribati
                                                    </option>
                                                    <option data-index="115" value="XK">
                                                        Kosovo
                                                    </option>
                                                    <option data-index="116" value="KW">
                                                        Kuwait
                                                    </option>
                                                    <option data-index="117" value="KG">
                                                        Kyrgyzstan
                                                    </option>
                                                    <option data-index="118" value="LA">
                                                        Laos
                                                    </option>
                                                    <option data-index="119" value="LV">
                                                        Latvia
                                                    </option>
                                                    <option data-index="120" value="LB">
                                                        Lebanon
                                                    </option>
                                                    <option data-index="121" value="LS">
                                                        Lesotho
                                                    </option>
                                                    <option data-index="122" value="LR">
                                                        Liberia
                                                    </option>
                                                    <option data-index="123" value="LY">
                                                        Libya
                                                    </option>
                                                    <option data-index="124" value="LI">
                                                        Liechtenstein
                                                    </option>
                                                    <option data-index="125" value="LT">
                                                        Lithuania
                                                    </option>
                                                    <option data-index="126" value="LU">
                                                        Luxembourg
                                                    </option>
                                                    <option data-index="127" value="MO">
                                                        Macao
                                                    </option>
                                                    <option data-index="128" value="MK">
                                                        Macedonia
                                                    </option>
                                                    <option data-index="129" value="MG">
                                                        Madagascar
                                                    </option>
                                                    <option data-index="130" value="MW">
                                                        Malawi
                                                    </option>
                                                    <option data-index="131" value="MY">
                                                        Malaysia
                                                    </option>
                                                    <option data-index="132" value="MV">
                                                        Maldives
                                                    </option>
                                                    <option data-index="133" value="ML">
                                                        Mali
                                                    </option>
                                                    <option data-index="134" value="MT">
                                                        Malta
                                                    </option>
                                                    <option data-index="135" value="MH">
                                                        Marshall Islands
                                                    </option>
                                                    <option data-index="136" value="MQ">
                                                        Martinique
                                                    </option>
                                                    <option data-index="137" value="MR">
                                                        Mauritania
                                                    </option>
                                                    <option data-index="138" value="MU">
                                                        Mauritius
                                                    </option>
                                                    <option data-index="139" value="YT">
                                                        Mayotte
                                                    </option>
                                                    <option data-index="140" value="MX">
                                                        Mexico
                                                    </option>
                                                    <option data-index="141" value="FM">
                                                        Micronesia
                                                    </option>
                                                    <option data-index="142" value="MD">
                                                        Moldova
                                                    </option>
                                                    <option data-index="143" value="MC">
                                                        Monaco
                                                    </option>
                                                    <option data-index="144" value="MN">
                                                        Mongolia
                                                    </option>
                                                    <option data-index="145" value="ME">
                                                        Montenegro
                                                    </option>
                                                    <option data-index="146" value="MS">
                                                        Montserrat
                                                    </option>
                                                    <option data-index="147" value="MA">
                                                        Morocco
                                                    </option>
                                                    <option data-index="148" value="MZ">
                                                        Mozambique
                                                    </option>
                                                    <option data-index="149" value="MM">
                                                        Myanmar
                                                    </option>
                                                    <option data-index="150" value="NA">
                                                        Namibia
                                                    </option>
                                                    <option data-index="151" value="NR">
                                                        Nauru
                                                    </option>
                                                    <option data-index="152" value="NP">
                                                        Nepal
                                                    </option>
                                                    <option data-index="153" value="NL">
                                                        Netherlands
                                                    </option>
                                                    <option data-index="154" value="AN">
                                                        Netherlands Antilles
                                                    </option>
                                                    <option data-index="155" value="NC">
                                                        New Caledonia
                                                    </option>
                                                    <option data-index="156" value="NZ">
                                                        New Zealand
                                                    </option>
                                                    <option data-index="157" value="NI">
                                                        Nicaragua
                                                    </option>
                                                    <option data-index="158" value="NE">
                                                        Niger
                                                    </option>
                                                    <option data-index="159" value="NG">
                                                        Nigeria
                                                    </option>
                                                    <option data-index="160" value="NU">
                                                        Niue
                                                    </option>
                                                    <option data-index="161" value="NF">
                                                        Norfolk Island
                                                    </option>
                                                    <option data-index="162" value="MP">
                                                        Northern Mariana Islands
                                                    </option>
                                                    <option data-index="163" value="KP">
                                                        North Korea
                                                    </option>
                                                    <option data-index="164" value="NO">
                                                        Norway
                                                    </option>
                                                    <option data-index="165" value="OM">
                                                        Oman
                                                    </option>
                                                    <option data-index="166" value="PK">
                                                        Pakistan
                                                    </option>
                                                    <option data-index="167" value="PW">
                                                        Palau
                                                    </option>
                                                    <option data-index="168" value="PS">
                                                        Palestinian Territories
                                                    </option>
                                                    <option data-index="169" value="PA">
                                                        Panama
                                                    </option>
                                                    <option data-index="170" value="PG">
                                                        Papua New Guinea
                                                    </option>
                                                    <option data-index="171" value="PY">
                                                        Paraguay
                                                    </option>
                                                    <option data-index="172" value="PE">
                                                        Peru
                                                    </option>
                                                    <option data-index="173" value="PH">
                                                        Philippines
                                                    </option>
                                                    <option data-index="174" value="PN">
                                                        Pitcairn
                                                    </option>
                                                    <option data-index="175" value="PL">
                                                        Poland
                                                    </option>
                                                    <option data-index="176" value="PT">
                                                        Portugal
                                                    </option>
                                                    <option data-index="177" value="PR">
                                                        Puerto Rico
                                                    </option>
                                                    <option data-index="178" value="QA">
                                                        Qatar
                                                    </option>
                                                    <option data-index="179" value="RE">
                                                        Reunion
                                                    </option>
                                                    <option data-index="180" value="RO">
                                                        Romania
                                                    </option>
                                                    <option data-index="181" value="RU">
                                                        Russia
                                                    </option>
                                                    <option data-index="182" value="RW">
                                                        Rwanda
                                                    </option>
                                                    <option data-index="183" value="SH">
                                                        Saint Helena
                                                    </option>
                                                    <option data-index="184" value="KN">
                                                        Saint Kitts and Nevis
                                                    </option>
                                                    <option data-index="185" value="LC">
                                                        Saint Lucia
                                                    </option>
                                                    <option data-index="186" value="PM">
                                                        Saint Pierre and Miquelon
                                                    </option>
                                                    <option data-index="187" value="VC">
                                                        Saint Vincent and the Grenadines
                                                    </option>
                                                    <option data-index="188" value="WS">
                                                        Samoa
                                                    </option>
                                                    <option data-index="189" value="SM">
                                                        San Marino
                                                    </option>
                                                    <option data-index="190" value="ST">
                                                        São Tomé and Príncipe
                                                    </option>
                                                    <option data-index="191" value="SA">
                                                        Saudi Arabia
                                                    </option>
                                                    <option data-index="192" value="SN">
                                                        Senegal
                                                    </option>
                                                    <option data-index="193" value="RS">
                                                        Serbia
                                                    </option>
                                                    <option data-index="194" value="SC">
                                                        Seychelles
                                                    </option>
                                                    <option data-index="195" value="SL">
                                                        Sierra Leone
                                                    </option>
                                                    <option data-index="196" value="SG">
                                                        Singapore
                                                    </option>
                                                    <option data-index="197" value="SX">
                                                        Sint Maarten
                                                    </option>
                                                    <option data-index="198" value="SK">
                                                        Slovakia
                                                    </option>
                                                    <option data-index="199" value="SI">
                                                        Slovenia
                                                    </option>
                                                    <option data-index="200" value="SB">
                                                        Solomon Islands
                                                    </option>
                                                    <option data-index="201" value="SO">
                                                        Somalia
                                                    </option>
                                                    <option data-index="202" value="ZA">
                                                        South Africa
                                                    </option>
                                                    <option data-index="203" value="GS">
                                                        South Georgia and the South Sandwich Islands
                                                    </option>
                                                    <option data-index="204" value="KR">
                                                        South Korea
                                                    </option>
                                                    <option data-index="205" value="SS">
                                                        South Sudan
                                                    </option>
                                                    <option data-index="206" value="ES">
                                                        Spain
                                                    </option>
                                                    <option data-index="207" value="LK">
                                                        Sri Lanka
                                                    </option>
                                                    <option data-index="208" value="SD">
                                                        Sudan
                                                    </option>
                                                    <option data-index="209" value="SR">
                                                        Suriname
                                                    </option>
                                                    <option data-index="210" value="SJ">
                                                        Svalbard and Jan Mayen
                                                    </option>
                                                    <option data-index="211" value="SZ">
                                                        Swaziland
                                                    </option>
                                                    <option data-index="212" value="SE">
                                                        Sweden
                                                    </option>
                                                    <option data-index="213" value="CH">
                                                        Switzerland
                                                    </option>
                                                    <option data-index="214" value="SY">
                                                        Syria
                                                    </option>
                                                    <option data-index="215" value="TW">
                                                        Taiwan
                                                    </option>
                                                    <option data-index="216" value="TJ">
                                                        Tajikistan
                                                    </option>
                                                    <option data-index="217" value="TZ">
                                                        Tanzania
                                                    </option>
                                                    <option data-index="218" value="TH">
                                                        Thailand
                                                    </option>
                                                    <option data-index="219" value="TL">
                                                        Timor-Leste
                                                    </option>
                                                    <option data-index="220" value="TG">
                                                        Togo
                                                    </option>
                                                    <option data-index="221" value="TK">
                                                        Tokelau
                                                    </option>
                                                    <option data-index="222" value="TO">
                                                        Tonga
                                                    </option>
                                                    <option data-index="223" value="TT">
                                                        Trinidad and Tobago
                                                    </option>
                                                    <option data-index="224" value="TN">
                                                        Tunisia
                                                    </option>
                                                    <option data-index="225" value="TR">
                                                        Turkey
                                                    </option>
                                                    <option data-index="226" value="TM">
                                                        Turkmenistan
                                                    </option>
                                                    <option data-index="227" value="TC">
                                                        Turks and Caicos Islands
                                                    </option>
                                                    <option data-index="228" value="TV">
                                                        Tuvalu
                                                    </option>
                                                    <option data-index="229" value="UG">
                                                        Uganda
                                                    </option>
                                                    <option data-index="230" value="UA">
                                                        Ukraine
                                                    </option>
                                                    <option data-index="231" value="AE">
                                                        United Arab Emirates
                                                    </option>
                                                    <option data-index="232" value="GB">
                                                        United Kingdom
                                                    </option>
                                                    <option data-index="233" value="UM">
                                                        United States Minor Outlying Islands
                                                    </option>
                                                    <option data-index="234" value="UY">
                                                        Uruguay
                                                    </option>
                                                    <option data-index="235" value="UZ">
                                                        Uzbekistan
                                                    </option>
                                                    <option data-index="236" value="VU">
                                                        Vanuatu
                                                    </option>
                                                    <option data-index="237" value="VA">
                                                        Vatican City
                                                    </option>
                                                    <option data-index="238" value="VE">
                                                        Venezuela
                                                    </option>
                                                    <option data-index="239" value="VN">
                                                        Viet Nam
                                                    </option>
                                                    <option data-index="240" value="VG">
                                                        Virgin Islands, British
                                                    </option>
                                                    <option data-index="241" value="VI">
                                                        Virgin Islands, U.S.
                                                    </option>
                                                    <option data-index="242" value="WF">
                                                        Wallis and Futuna
                                                    </option>
                                                    <option data-index="243" value="EH">
                                                        Western Sahara
                                                    </option>
                                                    <option data-index="244" value="YE">
                                                        Yemen
                                                    </option>
                                                    <option data-index="245" value="ZM">
                                                        Zambia
                                                    </option>
                                                    <option data-index="246" value="ZW">
                                                        Zimbabwe
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                       <!--  <div class="details_billing_content_form_section_inside_address_field"> <span
                                                class="details_billing_content_form_section_inside_address_field_nowrap">
                                                <span
                                                    class="details_billing_content_form_section_inside_address_field_nowrap_text"
                                                    data-label-name="cityName">State
                                                </span>
                                            </span>

                                            <div class="details_billing_content_form_section_inside_address_field_wrapper"
                                                data-type="input">
                                                <input
                                                    class="details_billing_content_form_section_inside_address_field_wrapper_input"
                                                    type="" autocapitalize="on" autocomplete="nope" data-name="state"
                                                    name="state" data-validation-type="REGEX_VALIDATOR"
                                                    data-pattern-type="" data-error="Enter a valid city name"
                                                    data-mandatory="Enter a city name" data-requiredoptional=""
                                                    data-note="" maxlength="50" data-role="" data-format=""
                                                    placeholder="State">
                                            </div>
                                            <span
                                                class="details_billing_content_form_section_inside_adress_field_bottom">Without
                                                punctuation </span>
                                        </div> -->
                                       <!--   <div class="details_billing_content_form_section_inside_address_field"> <span
                                                class="details_billing_content_form_section_inside_address_field_nowrap">
                                                <span
                                                    class="details_billing_content_form_section_inside_address_field_nowrap_text"
                                                    data-label-name="cityName">Address
                                                </span>
                                            </span>

                                            <div class="details_billing_content_form_section_inside_address_field_wrapper"
                                                data-type="input">
                                                <input
                                                    class="details_billing_content_form_section_inside_address_field_wrapper_input"
                                                    type="" autocapitalize="on" autocomplete="nope" data-name="address"
                                                    name="address" data-validation-type="REGEX_VALIDATOR"
                                                    data-pattern-type="" data-error="Enter a valid city name"
                                                    data-mandatory="Enter a city name" data-requiredoptional=""
                                                    data-note="" maxlength="50" data-role="" data-format=""
                                                    placeholder="address">
                                            </div>
                                            <span
                                                class="details_billing_content_form_section_inside_adress_field_bottom">Without
                                                punctuation </span>
                                        </div> -->
                                         <div class="details_billing_content_form_section_inside_address_field"> <span
                                                class="details_billing_content_form_section_inside_address_field_nowrap">
                                                <span
                                                    class="details_billing_content_form_section_inside_address_field_nowrap_text"
                                                    data-label-name="cityName">Passport
                                                </span>
                                            </span>

                                            <div class="details_billing_content_form_section_inside_address_field_wrapper"
                                                data-type="input">
                                                <input
                                                    class="details_billing_content_form_section_inside_address_field_wrapper_input"
                                                    type="text" autocapitalize="on" autocomplete="nope" data-name="passport"
                                                    name="passport" data-validation-type="REGEX_VALIDATOR"
                                                    data-pattern-type="" data-error="Enter a valid city name"
                                                    data-mandatory="Enter a city name" data-requiredoptional=""
                                                    data-note="" maxlength="50" data-role="" data-format=""
                                                    placeholder="passport">
                                            </div>
                                            <span
                                                class="details_billing_content_form_section_inside_adress_field_bottom">Without
                                                punctuation </span>
                                        </div>
                                       <!--  add more -->
                              
                                <div class="details_passengers_content_wrap_info_field">
                                    <span class="details_passengers_content_wrap_info_field_nowrap">
                                        <span class="details_passengers_content_wrap_info_field_nowrap_text">Type of
                                            passengers</span>
                                    </span>
                                    <div class="details_passengers_content_wrap_info_field_type" data-type="input">
                                        <span class="details_passengers_content_wrap_info_field_type_wrapper">
                                            <select
                                                class="details_passengers_content_wrap_info_field_type_wrapper_people" name="type">
                                                <option value="-1">-</option>
                                                <option value="adult">Adult</option>
                                                <option value="oldster">Oldster</option>
                                                <option value="child">Child</option>
                                                <option value="infant">Infant</option>
                                            </select>
                                        </span>
                                    </div>
                                </div>
                                <div class="details_passengers_content_wrap_info_field">
                                    <span class="details_passengers_content_wrap_info_field_nowrap">
                                        <span class="details_passengers_content_wrap_info_field_nowrap_text">Seat
                                            number</span>
                                    </span>
                                    <div class="details_passengers_content_wrap_info_field_type" data-type="input">
                                        <span class="details_passengers_content_wrap_info_field_type_wrapper">
                                            <select
                                                class="details_passengers_content_wrap_info_field_type_wrapper_people" name="ticketId">
                                                 <c:forEach var="s" items="${listticket}">
                                                <option value=${s.getTicketID() }>${s.seatNumber }</option>
                                                 </c:forEach>
                                               <!--  <option value="oldster">sd</option>
                                                <option value="child">dsf</option>
                                                <option value="infant">Infaadnt</option> -->
                                            </select>
                                        </span>
                                    </div>
                                </div>
                                <div class="details_passengers_content_wrap_info_field">
                                    <span class="details_passengers_content_wrap_info_field_nowrap">
                                        <span class="details_passengers_content_wrap_info_field_nowrap_text"
                                            data-label-name="dateOfBirth">Date of birth
                                        </span>
                                    </span>
                                     <input
                                                    class="details_billing_content_form_section_inside_address_field_wrapper_input"
                                                    type="text" autocapitalize="on" autocomplete="nope" data-name="date_of_birth"
                                                    name="date_of_birth" data-validation-type="REGEX_VALIDATOR"
                                                    data-pattern-type="" data-error="Enter a valid city name"
                                                    data-mandatory="Enter a city name" data-requiredoptional=""
                                                    data-note="" maxlength="50" data-role="" data-format=""
                                                    placeholder=" Dob YYYY/MM/DD">
                                                    <input type="hidden" name="flightId" value=${ flight.getFlightID()}>
                                    </div>
                                    <div class="details_passengers_content_wrap_info_field_birth" data-type="input">
                                        <!-- <input
                                            class="odf-input od-field date submit-field-trav  submit_field_focusable  hidden"
                                            type="" autocomplete="nope" data-name="dateOfBirth" name="dateOfBirth"
                                            data-validation-type="INFANT_DATE_OF_BIRTH" data-pattern=""
                                            data-pattern-inline="" data-pattern-type=""
                                            data-error="Infants must be under 2 for whole trip"
                                            data-mandatory="Select a date of birth" data-requiredoptional=""
                                            data-note="" maxlength="" data-role="datePickerWith3Selects"
                                            data-format="day,month,year" placeholder="" data-skip-enhance="true"> -->
                                      
                                    
                                    </div>
                                </div>
 <div class="buyTicketBtn_wrap">
 <input class='buyTicketBtn' type='submit'  value=${soutout =="false"? "Buy ticket":"Soldout"}></input>
                		<%-- 	<% 
                			
                			if(request.getParameter("soutout") == "false"){
	
	out.print("<input class='buyTicketBtn' type='submit' value='Buy ticket'></input>");
}else{
	out.print(" <input class='buyTicketBtn' type='submit' disabled=true value='Sout out'></input>");
	 
}
%> --%>
            </div>
                                <!-- <div class="addPassengerBtn_wrap">
                                  
                                    <input class="addPassengerBtn" type="submit" value="Add passenger"> </input>
                                </div> -->
                            </div>
                        </form>
                    </div>
                </div>
               <!--  <button class="addPassengerBtn" type="button">Add passengers</button> -->
               
                
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>