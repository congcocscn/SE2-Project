<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="${url}/css/paymentcss.css" rel="stylesheet" >
<link href="${url}/images/favicon.png" rel="shortcut icon" >
    <title>Voyago</title>
<title>Insert title here</title>
</head>
<body>
    <div class="page">
        <header class="header">
            
            
        </header>
        <div class="body_content">
            <div class="title">Your trip to ${flight.getArrival()}</div>
            <div class="sidebar">
                <div class="sidebar_passengers">
                    <div class="sidebar_passengers_image">
                        <div class="sidebar_passengers_image_top" style="background-image: url('${url}/images/backgr.jpg');">
                            <div class="innertext">
                                <div class="innertext1">Your trip to</div>
                                <div class="innertext2">$${flight.getArrival()}</div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar_passengers_travellers">
                        <div class="sidebar_passengers_travellers_innertext">
                            <div class="sidebar_passengers_travellers_innertext1">Passengers</div>
                            <div class="sidebar_passengers_travellers_innertext2">1 </div>
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
                                    <div class="bags_segments_departure_2_text">2 x bags</div>
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
                                <div class="title_text">Price</div>
                            </div>
                            <div class="primeSection_text1">
                                <div class="wrap1">
                                    <div class="primeSection_text1_innertext1">Regular price</div>
                                </div>
                                <div class="wrap2">
                                    <div class="primeSection_text1_innertext2">€ ${ticket.getPrice()}</div>
                                </div>
                            </div>
                            <div class="primeSection_text2">
                                <div class="wrap1">
                                    <div class="primeSection_text2_innertext1">Price discount applied</div>
                                </div>
                                <div class="wrap2">
                                    <div class="primeSection_text2_innertext2">-€ 0</div>
                                </div>
                            </div>
                        </div>
                        <div class="totalPrice">
                            <div class="totalPrice_text1">
                                <div class="wrap1">
                                    <div class="totalPrice_text1_innertext1">Final price</div>
                                </div>
                                <div class="wrap2">
                                    <div class="totalPrice_text1_innertext2">$ ${ticket.getPrice()}</div>
                                </div>
                            </div>
                            <div class="totalPrice_text2">
                                <div class="wrap1">
                                    <div class="totalPrice_text2_innertext">Price per person</div>
                                </div>
                                <div class="wrap2">
                                    <div class="totalPrice_text2_innertext">$ ${ticket.getPrice() }</div>
                                </div>
                            </div>
                            <div class="totalPrice_text3">Taxes and service charges included</div>
                        </div>
                    </div>
                </div>
                <div class="sidebar_persuasion">
                    <div class="sidebar_persuasion_title">Why book with Momondo? </div>
                    <div class="sidebar_persuasion_reasons">
                        <ul>
                            <li>Part of <b>Europe's largest travel company</b></li>
                            <li><b>Momondos price guarantee</b></li>
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
                                    <div class="details_flight_body_content_title_1_logo" style="background-image: url('${url}/images/vietjet.png')"></div>
                                    <span class="details_flight_body_content_title_1_text1">Departure</span>
                                    <span class="details_flight_body_content_title_1_text2">${flight.getAirlineName()}</span>
                                </div>
                                <div class="details_flight_body_content_title_2">${flight.getFlightDate()}</div>
                            </div>
                            <div class="details_flight_body_content_inside">
                                <div class="details_flight_body_content_inside_left">
                                    <div class="details_flight_body_content_inside_left_first">
                                        <div class="details_flight_body_content_inside_left_first_text">
                                            <span class="details_flight_body_content_inside_left_first_text_1">
                                                <span class="details_flight_body_content_inside_left_first_text_1_time"
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
                                            <span class="details_flight_body_content_inside_left_last_text_1_time" style="font-weight: 600;">${flight.getArrivalTime() }</span>
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
                                    <div class="details_flight_body_content_title_1_logo" style="background-image: url(${url}/images/vietjet.png)"></div>
                                    <span class="details_flight_body_content_title_1_text1">Return</span>
                                    <span class="details_flight_body_content_title_1_text2">${flight.getAirlineName()}</span>
                                </div>
                                <div class="details_flight_body_content_title_2">${flight.getFlightDate()} </div>
                            </div>
                            <div class="details_flight_body_content_inside">
                                <div class="details_flight_body_content_inside_left">
                                    <div class="details_flight_body_content_inside_left_first">
                                        <div class="details_flight_body_content_inside_left_first_text">
                                            <span class="details_flight_body_content_inside_left_first_text_1">
                                                <span class="details_flight_body_content_inside_left_first_text_1_time"
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
                                            <span class="details_flight_body_content_inside_left_last_text_1_time" style="font-weight: 600;">${flight.getArrivalTime() }</span>
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



                <form id="form" class="details_billing" method="post">

                    <div class="row">
                        <div class="col-75">
                            <div class="container">
                                <h2>Payment</h2>
                                <div class="row">
                                    <div class="col-50">
                                        <label for="fname">Accepted Cards
                                            <small
                                                style="color: darkblue; font-size: x-small; opacity: 70%; font-style: italic;">Choose
                                                a type of cards bellow</small>
                                            <i class="material-icons"
                                                style="font-size:10px; color: darkblue;">error_outline</i>
                                        </label>
                                        <div class="icon-container">
                                            <div class="cc-selector">
                                                <input id="visaCredit" type="radio" name="card" value="visaCredit" >
                                                <label class="drinkcard-cc visaCredit" for="visaCredit"></label>

                                                <input id="visaDebit" type="radio" name="card" value="visaDebit" >
                                                <label class="drinkcard-cc visaDebit" for="visaDebit"></label>

                                                <input id="masterCardCredit" type="radio" name="card" value="masterCardCredit" >
                                                <label class="drinkcard-cc masterCardCredit" for="masterCardCredit"></label>

                                                <input id="masterCardDebit" type="radio" name="card" value="masterCardDebit" >
                                                <label class="drinkcard-cc masterCardDebit" for="masterCardDebit"></label>

                                                <input id="americanExpress" type="radio" name="card" value="americanExpress" >
                                                <label class="drinkcard-cc americanExpress" for="americanExpress"></label>

                                                <input id="visaElectron" type="radio" name="card" value="visaElectron" >
                                                <label class="drinkcard-cc visaElectron" for="visaElectron"></label>

                                                <input id="jcb" type="radio" name="card" value="jcb" >
                                                <label class="drinkcard-cc jcb" for="jcb"></label>

                                                <input id="paypal" type="radio" name="card" value="paypal" >
                                                <label class="drinkcard-cc paypal" for="paypal"></label>
                                            </div>
                                        </div>

                                        <label for="ccnum">Card Number</label>
                                        <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">

                                        <label for="experyDate">Expiry Date</label>
                                        <div class="row">
                                            <div class="col-50">
                                                <select id="expMonth" name="expMonth">
                                                    <option value="0">Month</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                </select>
                                            </div>
                                            <div class="col-50">
                                                <select id="expYear" name="expYear">
                                                    <option value="0">Year</option>
                                                    <option value="2021">2021</option>
                                                    <option value="2022">2022</option>
                                                    <option value="2023">2023</option>
                                                    <option value="2024">2024</option>
                                                    <option value="2025">2025</option>
                                                    <option value="2026">2026</option>
                                                    <option value="2027">2027</option>
                                                    <option value="2028">2028</option>
                                                    <option value="2029">2029</option>
                                                    <option value="2030">2030</option>
                                                    <option value="2031">2031</option>
                                                </select>
                                            </div>

                                        </div>
                                        <label for="cvv">CVV/CVC</label>
                                        <input maxlength="4" type="number" id="cvv" name="cvv" placeholder="123/1234">

                                    </div>
                                    <div class="col-50">
                                        <label for="fname">Name on CardHolder</label>
                                        <input type="text" id="cardHolderName" name="cardHolderName" placeholder="John Smith" value=${firstName }>


                                        <!-- <label for="adr">Address</label>
                                        <input type="text" id="adr" name="address" placeholder="542 W. 15th Street"> -->

                                       <%--  <label for="city">City</label>
                                        <input type="text" id="city" name="city" placeholder="New York" value=${city }> --%>

                                        <div class="row">
                                            <div class="col-50">
                                                <label>Country</label>
                                                <select class="form-control" data-rule-uyrestriction="true" data-rule-requiredinfunction="true" id="BuyerCCode" name="BuyerCCode" required="true" aria-required="true" value=${nationality }>
                                                    <option value="AF">Afghanistan</option>
                                                    <option value="AL">Albania</option>
                                                    <option value="DZ">Algeria</option>
                                                    <option value="AS">American Samoa</option>
                                                    <option value="AD">Andorra</option>
                                                    <option value="AO">Angola</option>
                                                    <option value="AI">Anguilla</option>
                                                    <option value="AQ">Antártida</option>
                                                    <option value="AG">Antigua &amp; Barbuda</option>
                                                    <option value="AR">Argentine</option>
                                                    <option value="AM">Armenia</option>
                                                    <option value="AW">Aruba</option>
                                                    <option value="AU">Australia</option>
                                                    <option value="AT">Austria</option>
                                                    <option value="AZ">Azerbaijan</option>
                                                    <option value="BS">Bahamas</option>
                                                    <option value="BH">Bahrain</option>
                                                    <option value="BD">Bangladesh</option>
                                                    <option value="BB">Barbados</option>
                                                    <option value="BY">Belarus</option>
                                                    <option value="BE">Belgium</option>
                                                    <option value="BZ">Belize</option>
                                                    <option value="BJ">Benin</option>
                                                    <option value="BM">Bermuda</option>
                                                    <option value="BT">Bhutan</option>
                                                    <option value="BO">Bolivia</option>
                                                    <option value="BA">Bosnia Hercegovina</option>
                                                    <option value="BW">Botswana</option>
                                                    <option value="BR">Brazil</option>
                                                    <option value="VG">British Virgin Is</option>
                                                    <option value="BN">Brunei</option>
                                                    <option value="BG">Bulgaria</option>
                                                    <option value="BF">Burkina Faso</option>
                                                    <option value="BI">Burundi</option>
                                                    <option value="KH">Cambodia</option>
                                                    <option value="CM">Cameroon</option>
                                                    <option value="CA">Canada</option>
                                                    <option value="CV">Cape Verde</option>
                                                    <option value="CF">CAR</option>
                                                    <option value="KY">Cayman Is</option>
                                                    <option value="TD">Chad</option>
                                                    <option value="CL">Chile</option>
                                                    <option value="CN">China</option>
                                                    <option value="CX">Christmas Is</option>
                                                    <option value="CC">Cocos Is</option>
                                                    <option value="CO">Colombia</option>
                                                    <option value="KM">Comoro</option>
                                                    <option value="CG">Congo</option>
                                                    <option value="CK">Cook Iss</option>
                                                    <option value="CR">Costa Rica</option>
                                                    <option value="HR">Croatia</option>
                                                    <option value="CU">Cuba</option>
                                                    <option value="C0">Curazao</option>
                                                    <option value="CY">Cyprus</option>
                                                    <option value="CZ">Czech Republic</option>
                                                    <option value="DK">Denmark</option>
                                                    <option value="DJ">Djibouti</option>
                                                    <option value="DM">Dominica</option>
                                                    <option value="DO">Dominican Republic</option>
                                                    <option value="CD">DR Congo</option>
                                                    <option value="EC">Ecuador</option>
                                                    <option value="EG">Egypt</option>
                                                    <option value="SV">El Salvador</option>
                                                    <option value="AE">Emirates</option>
                                                    <option value="GQ">Equatorial Guinea</option>
                                                    <option value="ER">Eritrea</option>
                                                    <option value="EE">Estonia</option>
                                                    <option value="ET">Ethiopia</option>
                                                    <option value="FO">Faeroe Iss</option>
                                                    <option value="FK">Falkland Iss</option>
                                                    <option value="FJ">Fiji</option>
                                                    <option value="FI">Finland</option>
                                                    <option value="FR">France</option>
                                                    <option value="GF">French Guiana</option>
                                                    <option value="PF">French Polynesia</option>
                                                    <option value="GA">Gabon</option>
                                                    <option value="GM">Gambia</option>
                                                    <option value="GE">Georgia</option>
                                                    <option value="DE">Germany</option>
                                                    <option value="GH">Ghana</option>
                                                    <option value="GI">Gibraltar</option>
                                                    <option value="GR">Greece</option>
                                                    <option value="GL">Greenland</option>
                                                    <option value="GD">Grenada</option>
                                                    <option value="GP">Guadeloupe</option>
                                                    <option value="GU">Guam</option>
                                                    <option value="GT">Guatemala</option>
                                                    <option value="GN">Guinea</option>
                                                    <option value="GW">Guinea Bissau</option>
                                                    <option value="GY">Guyana</option>
                                                    <option value="HT">Haiti</option>
                                                    <option value="HN">Honduras</option>
                                                    <option value="HK">Hong Kong</option>
                                                    <option value="HU">Hungary</option>
                                                    <option value="IS">Iceland</option>
                                                    <option value="IN">India</option>
                                                    <option value="ID">Indonesia</option>
                                                    <option value="IR">Iran</option>
                                                    <option value="IQ">Iraq</option>
                                                    <option value="IE">Ireland</option>
                                                    <option value="IL">Israel</option>
                                                    <option value="IT">Italy</option>
                                                    <option value="CI">Ivory Coast</option>
                                                    <option value="JM">Jamaica</option>
                                                    <option value="JP">Japan</option>
                                                    <option value="JO">Jordan</option>
                                                    <option value="KZ">Kazakstan</option>
                                                    <option value="KE">Kenya</option>
                                                    <option value="KI">Kiribati</option>
                                                    <option value="KO">Kosovo</option>
                                                    <option value="KW">Kuwait</option>
                                                    <option value="KG">Kyrgyzstan</option>
                                                    <option value="LA">Laos</option>
                                                    <option value="LV">Latvia</option>
                                                    <option value="LB">Lebanon</option>
                                                    <option value="LS">Lesotho</option>
                                                    <option value="LR">Liberia</option>
                                                    <option value="LY">Libyan</option>
                                                    <option value="LI">Liechtenstein</option>
                                                    <option value="LT">Lithuania</option>
                                                    <option value="LU">Luxemburg</option>
                                                    <option value="MO">Macau</option>
                                                    <option value="MK">Macedonia</option>
                                                    <option value="MG">Madagascar</option>
                                                    <option value="MW">Malawi</option>
                                                    <option value="MY">Malaysia</option>
                                                    <option value="MV">Maldive Is</option>
                                                    <option value="ML">Mali</option>
                                                    <option value="MT">Malta</option>
                                                    <option value="MH">Marshall Iss</option>
                                                    <option value="MQ">Martinique</option>
                                                    <option value="MR">Mauritania</option>
                                                    <option value="MU">Mauritius</option>
                                                    <option value="YT">Mayotte</option>
                                                    <option value="MX">Mexico</option>
                                                    <option value="FM">Micronesia</option>
                                                    <option value="MD">Moldova</option>
                                                    <option value="MC">Monaco</option>
                                                    <option value="MN">Mongolia</option>
                                                    <option value="ME">Montenegro</option>
                                                    <option value="MS">Montserrat</option>
                                                    <option value="MA">Morocco</option>
                                                    <option value="MZ">Mozambique</option>
                                                    <option value="MM">Myanmar</option>
                                                    <option value="NA">Namibia</option>
                                                    <option value="NR">Nauru</option>
                                                    <option value="NP">Nepal</option>
                                                    <option value="NL">Netherlands</option>
                                                    <option value="AN">Netherlands Antilles</option>
                                                    <option value="NC">New Caledonia</option>
                                                    <option value="NZ">New Zealand</option>
                                                    <option value="NI">Nicaragua</option>
                                                    <option value="NE">Niger</option>
                                                    <option value="NG">Nigeria</option>
                                                    <option value="NU">Niue</option>
                                                    <option value="NF">Norfolk Is</option>
                                                    <option value="NY">North Cyprus</option>
                                                    <option value="KP">North Korea</option>
                                                    <option value="MP">Northern Mariana Iss</option>
                                                    <option value="NO">Norway</option>
                                                    <option value="OM">Oman</option>
                                                    <option value="PK">Pakistan</option>
                                                    <option value="PU">Palau</option>
                                                    <option value="PW">Palau Is</option>
                                                    <option value="PS">Palestinian</option>
                                                    <option value="PA">Panama</option>
                                                    <option value="PY">Paraguay</option>
                                                    <option value="PE">Peru</option>
                                                    <option value="PH">Philippines</option>
                                                    <option value="PN">Pitcairn Is</option>
                                                    <option value="PG">PNG</option>
                                                    <option value="PL">Poland</option>
                                                    <option value="PT">Portugal</option>
                                                    <option value="PR">Puerto Rico</option>
                                                    <option value="QA">Qatar</option>
                                                    <option value="RE">Reunion Isle</option>
                                                    <option value="RO">Romania</option>
                                                    <option value="RU">Russia</option>
                                                    <option value="RW">Rwanda</option>
                                                    <option value="SM">San Marino</option>
                                                    <option value="SA">Saudi Arabia</option>
                                                    <option value="SN">Senegal</option>
                                                    <option value="RS">Serbia</option>
                                                    <option value="SC">Seychelles Isle</option>
                                                    <option value="SL">Sierra Leone</option>
                                                    <option value="SG">Singapore</option>
                                                    <option value="SK">Slovakia</option>
                                                    <option value="SI">Slovenia</option>
                                                    <option value="SB">Solomon Isle</option>
                                                    <option value="SO">Somalia</option>
                                                    <option value="ZA">South Africa</option>
                                                    <option value="KR">South Korea</option>
                                                    <option value="ES">Spain</option>
                                                    <option value="LK">Sri Lanka</option>
                                                    <option value="BL">St Barthelemy</option>
                                                    <option value="LC">St Lucia</option>
                                                    <option value="PM">St Pierre &amp; Miquelon</option>
                                                    <option value="VC">St Vincent &amp; Grenadines</option>
                                                    <option value="SH">St. Helena Is</option>
                                                    <option value="KN">St. Kitts &amp; Nevis</option>
                                                    <option value="ST">St. Tome &amp; Principe</option>
                                                    <option value="SD">Sudan</option>
                                                    <option value="SR">Surinam</option>
                                                    <option value="SZ">Swaziland</option>
                                                    <option value="SE">Sweden</option>
                                                    <option value="CH">Switzerland</option>
                                                    <option value="SY">Syria</option>
                                                    <option value="TW">Taiwan</option>
                                                    <option value="TJ">Tajikistan</option>
                                                    <option value="TZ">Tanzania</option>
                                                    <option value="TH">Thailand</option>
                                                    <option value="TL">Timor-Leste</option>
                                                    <option value="TG">Togo</option>
                                                    <option value="TK">Tokelau</option>
                                                    <option value="TO">Tonga</option>
                                                    <option value="TT">Trinidad &amp; Tobago</option>
                                                    <option value="TN">Tunisia</option>
                                                    <option value="TR">Turkey</option>
                                                    <option value="TM">Turkmenistan</option>
                                                    <option value="TC">Turks &amp; Caicos Is</option>
                                                    <option value="TV">Tuvalu Is</option>
                                                    <option value="UG">Uganda</option>
                                                    <option value="GB">UK</option>
                                                    <option value="UA">Ukraine</option>
                                                    <option value="UY">Uruguay</option>
                                                    <option value="UM">US Minor Outlying Is.</option>
                                                    <option value="VI">US Virgin Is</option>
                                                    <option selected="selected" value="US">USA</option>
                                                    <option value="UZ">Uzbekistan</option>
                                                    <option value="VU">Vanuatu</option>
                                                    <option value="VA">Vatican</option>
                                                    <option value="VE">Venezuela</option>
                                                    <option value="VN">Vietnam</option>
                                                    <option value="WF">Wallis &amp; Futuna</option>
                                                    <option value="WS">Western Samoa</option>
                                                    <option value="YE">Yemen</option>
                                                    <option value="ZR">Zaire</option>
                                                    <option value="ZM">Zambia</option>
                                                    <option value="ZW">Zimbabwe</option>
                                                </select>
                                            </div>

                                            <!-- <div class="col-50">
                                                <label for="state">State</label>
                                                <select>
                                                    <option data-index="0" value="AK" selected="">
                                                        AK
                                                    </option>
                                                    <option data-index="1" value="AL">
                                                        AL
                                                    </option>
                                                    <option data-index="2" value="AR">
                                                        AR
                                                    </option>
                                                    <option data-index="3" value="AZ">
                                                        AZ
                                                    </option>
                                                    <option data-index="4" value="CA">
                                                        CA
                                                    </option>
                                                    <option data-index="5" value="CO">
                                                        CO
                                                    </option>
                                                    <option data-index="6" value="CT">
                                                        CT
                                                    </option>
                                                    <option data-index="7" value="DC">
                                                        DC
                                                    </option>
                                                    <option data-index="8" value="DE">
                                                        DE
                                                    </option>
                                                    <option data-index="9" value="FL">
                                                        FL
                                                    </option>
                                                    <option data-index="10" value="GA">
                                                        GA
                                                    </option>
                                                    <option data-index="11" value="HI">
                                                        HI
                                                    </option>
                                                    <option data-index="12" value="IA">
                                                        IA
                                                    </option>
                                                    <option data-index="13" value="ID">
                                                        ID
                                                    </option>
                                                    <option data-index="14" value="IL">
                                                        IL
                                                    </option>
                                                    <option data-index="15" value="IN">
                                                        IN
                                                    </option>
                                                    <option data-index="16" value="KS">
                                                        KS
                                                    </option>
                                                    <option data-index="17" value="KY">
                                                        KY
                                                    </option>
                                                    <option data-index="18" value="LA">
                                                        LA
                                                    </option>
                                                    <option data-index="19" value="MA">
                                                        MA
                                                    </option>
                                                    <option data-index="20" value="MD">
                                                        MD
                                                    </option>
                                                    <option data-index="21" value="ME">
                                                        ME
                                                    </option>
                                                    <option data-index="22" value="MI">
                                                        MI
                                                    </option>
                                                    <option data-index="23" value="MN">
                                                        MN
                                                    </option>
                                                    <option data-index="24" value="MO">
                                                        MO
                                                    </option>
                                                    <option data-index="25" value="MS">
                                                        MS
                                                    </option>
                                                    <option data-index="26" value="MT">
                                                        MT
                                                    </option>
                                                    <option data-index="27" value="NC">
                                                        NC
                                                    </option>
                                                    <option data-index="28" value="ND">
                                                        ND
                                                    </option>
                                                    <option data-index="29" value="NE">
                                                        NE
                                                    </option>
                                                    <option data-index="30" value="NH">
                                                        NH
                                                    </option>
                                                    <option data-index="31" value="NJ">
                                                        NJ
                                                    </option>
                                                    <option data-index="32" value="NM">
                                                        NM
                                                    </option>
                                                    <option data-index="33" value="NV">
                                                        NV
                                                    </option>
                                                    <option data-index="34" value="NY">
                                                        NY
                                                    </option>
                                                    <option data-index="35" value="OH">
                                                        OH
                                                    </option>
                                                    <option data-index="36" value="OK">
                                                        OK
                                                    </option>
                                                    <option data-index="37" value="OR">
                                                        OR
                                                    </option>
                                                    <option data-index="38" value="PA">
                                                        PA
                                                    </option>
                                                    <option data-index="39" value="RI">
                                                        RI
                                                    </option>
                                                    <option data-index="40" value="SC">
                                                        SC
                                                    </option>
                                                    <option data-index="41" value="SD">
                                                        SD
                                                    </option>
                                                    <option data-index="42" value="TN">
                                                        TN
                                                    </option>
                                                    <option data-index="43" value="TX">
                                                        TX
                                                    </option>
                                                    <option data-index="44" value="UT">
                                                        UT
                                                    </option>
                                                    <option data-index="45" value="VA">
                                                        VA
                                                    </option>
                                                    <option data-index="46" value="VT">
                                                        VT
                                                    </option>
                                                    <option data-index="47" value="WA">
                                                        WA
                                                    </option>
                                                    <option data-index="48" value="WI">
                                                        WI
                                                    </option>
                                                    <option data-index="49" value="WV">
                                                        WV
                                                    </option>
                                                    <option data-index="50" value="WY">
                                                        WY
                                                    </option>
                                                </select>
                                            </div> -->
                                        </div>

                                        <label for="zipcode">Postcode</label>
                                        <input type="number" id="zipcode" name="zipcode" placeholder="10000">
								<input type="hidden" name=firstName value=${firstName }>
								<input type="hidden" name=lastName value=${lastName }>
								<input type="hidden" name=email value=${email }>
								<input type="hidden" name=gender value=${gender }>
								<input type="hidden" name=passport value=${passport }>
								<input type="hidden" name=nationality value=${ nationality}>
								<input type="hidden" name=dob value=${ dob}>
								<input type="hidden" name=phoneNumber value=${ phoneNumber}>
								<!-- <input type="hidden" name=firstname> -->
								<input type="hidden" name=ticketId value=${ ticketId}>
								<input type="hidden" name=flightId value=${flightId }>
								
								<input type="hidden" name=shipping value=10>
								<input type="hidden" name=tax value=10>
								<input type="hidden" name=total value=120>
								<input type="hidden" name=subtotal value=100>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </form>
                <div>
                    <label style="display: inline;">
                        <input type="checkbox" checked="checked" name="sameadr">
                    </label>
                    <label style="font-style: italic; font-size: small; display: inline; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">
                        I have read and accept the General Conditions of Voyago and the privacy and data
                        protection policy and I agree to pay for this purchase Group. I understand and accept that
                        economy fares are non-refundable and that when refunds are allowed, these may entail
                        expenses.</label>
                </div>
                <div>
               <%--  <div> ${firstName }</div> --%>
                </div>
                <div class="purchaseBt_wrap">
                    <input class="purchaseBt" type="submit" form="form" value="Purchase">
                    <a href="/AirlineReservationSystem/generatePDF" class="purchaseBt" type="submit"  value="generate PDF"> Generate pdf</a>
                </div>

            </div>

        </div>
    </div>
</body>

</html>