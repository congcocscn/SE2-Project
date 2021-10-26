<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voyago</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">


 
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${url}/css/searchResult.css">

<link href="${url}/css/nav.css" rel="stylesheet" >
    <link href="${url}/css/responsive.css" rel="stylesheet" >
    <link href="${url}/images/logo.png" rel="logo" >
    <link href="${url}/images/favicon.png" rel="shortcut icon" >

</head>
<script type="text/javascript">
$(document).ready(function(){
	   
    
    // subscribe to the keydown event
    $('.tab-btn1').click(function(e) {
        // when a key is pressed check if its code was 9 (TAB)
            // if TAB was pressed send an AJAX request
            // to the server passing it the currently 
            // entered value in the first textbox
           
            $.ajax({
                url: '/AirlineReservationSystem/search',
                type: 'POST',
                data: { tab: 1 },
            success: function(result) {
          /*  when the AJAX succeeds update the value of the 
              second textbox using the result returned by the server
               In this example we suppose that the servlet returns */
              // the following JSON: {"foo":"bar"}
           console.log("okok")
            // $('#text2').val(result.foo);
          }
            });    
        
  
})
})
$(document).ready(function(){ 
	
    $('.stop').change(function(e) {
    	function findGetParameter(parameterName) {
    	    var result = null,
    	        tmp = [];
    	    location.search
    	        .substr(1)
    	        .split("&")
    	        .forEach(function (item) {
    	          tmp = item.split("=");
    	          if (tmp[0] === parameterName) result = decodeURIComponent(tmp[1]);
    	        });
    	    return result;
    	}
    	let from=findGetParameter("from")
    	let to=findGetParameter("to")
    /* 	console.log(e.target.value) */
    	let stop=e.target.value
       let url=`/AirlineReservationSystem/search?from=${from}&to=${to}&stop=`+stop
         console.log(url)
           location.replace(url)  

})
 $('.range').change(function(e) {
	 function findGetParameter(parameterName) {
 	    var result = null,
 	        tmp = [];
 	    location.search
 	        .substr(1)
 	        .split("&")
 	        .forEach(function (item) {
 	          tmp = item.split("=");
 	          if (tmp[0] === parameterName) result = decodeURIComponent(tmp[1]);
 	        });
 	    return result;
 	}
 	let from=findGetParameter("from")
 	let to=findGetParameter("to")
 /* 	console.log(e.target.value) */
 	let stop=findGetParameter("stop")
 	let maxPrice=e.target.value
    let url=`/AirlineReservationSystem/search?from=${from}&to=${to}&stop=${stop}&minPrice=1&maxPrice=`+maxPrice
       /* let url="/AirlineReservationSystem/search?"+window.location.search.substr(1)+"&stop=1-stops"
         console.log(url)
          */
    location.replace(url) 
}) 
})

</script>
<body>
<input type="hidden" id="selectedTabInput" name="" value="${requestScope.selectedTab}">
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
<div class="resultSearch">
<div class="container1">
  <div class="resultSearch--formview">
    <div class="resultSearch--formview--select">
      <div class="formview--select--roundtrip">
        <div class="dropdown">
          <button type="button" class="custombutton custombutton1" data-toggle="dropdown">
            ${type} <i class="fas fa-chevron-down"></i>
          </button>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="/AirlineReservationSystem/search?from=${from}&to=${to}&type=One-way&typeticket=${typeticket}" onclick="chooseStop('One-way')">One-way</a>
            <a class="dropdown-item" href="/AirlineReservationSystem/search?from=${from}&to=${to}&type=Round-trip&typeticket=${typeticket}" onclick="chooseStop('Round-trip')">Round-trip</a>
            <a class="dropdown-item" href="/AirlineReservationSystem/search?from${from}&to=${to}&type=Multi-city&typeticket=${typeticket}" onclick="chooseStop('Multi-city')">Multi-city</a>
          </div>
        </div>
        
      </div>
      <div class="formview--select--person">
        <div class="dropdown">
          <button type="button" class="custombutton custombutton2" data-toggle="dropdown">
            ${typeticket } <i class="fas fa-chevron-down"></i>
          </button>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="/AirlineReservationSystem/search?from=${from}&to=${to}&type=${type }&typeticket=Economy" onclick="chooseTypeTicket('Economy')">Economy</a>
            <a class="dropdown-item" href="/AirlineReservationSystem/search?from=${from}&to=${to}&type=${type }&typeticket=PreniumBussiness" onclick="chooseTypeTicket('Premium')">Premium Economy</a>
            <a class="dropdown-item" href="/AirlineReservationSystem/search?from=${from}&to=${to}&type=${type }&typeticket=Bussiness">Business</a>
             <a class="dropdown-item" href="/AirlineReservationSystem/search?from=${from}&to=${to}&type=${type }&typeticket=First" >First</a>
          </div>
        </div>
      </div>
      <%-- <div class="formview--select--economy" action="/AirlineReservationSystem/search" method="post">
        <div class="dropdown">
          <button type="button" class="custombutton custombutton3" data-toggle="dropdown">
            1 Adult <i class="fas fa-chevron-down"></i>
          </button>
          <div class="dropdown-menu">
          <div class="dropdown-item"> 
          	<div class="dropdown-item-wrapper">
          		<div class="dropdown-item-wrapper"> adult</div>
          		<div class="dropdown-item-wrapper-range">18-64</div>
          		<div class="dropdown-item-wrapper-input">
          			<a class="dropdown-item-wrapper-input-button" href="/AirlineReservationSystem/search?from=${from}&to=${to}&stop=one-way&type=${tpye}&numberChild=${NumberYoung}&numberYoung=${NumberYoung}&numberAdult=${NumberAdult}&IncreseOrDecrese=DecreseChild" >
          			-
          			</a>
          			<div class="dropdown-item-wrapper-input-adult"> 1</div>
          			<a class="dropdown-item-wrapper-input-button" href="/AirlineReservationSystem/search?from=${from}&to=${to}&stop=one-way&type=${tpye}&numberChild=${NumberYoung}&numberYoung=${NumberYoung}&numberAdult=${NumberAdult}&IncreseOrDecrese=IncreseChild" >+</a>
          		</div>
          </div>
          <div class="dropdown-item-wrapper">
          		<div class="dropdown-item-wrapper-name"> youth</div>
          		<div class="dropdown-item-wrapper-range">12-18</div>
          		<div class="dropdown-item-wrapper-input">
          			<a class="dropdown-item-wrapper-input-button" href="/AirlineReservationSystem/search?from=${from}&to=${to}&stop=one-way&type=${tpye}&numberChild=${NumberYoung}&numberYoung=${NumberYoung}&numberAdult=${NumberAdult}&IncreseOrDecrese=DecreseYoung" >-</a>
          			<div class="dropdown-item-wrapper-input-young">2</div>
          			<a class="dropdown-item-wrapper-input-button" href="/AirlineReservationSystem/search?from=${from}&to=${to}&stop=one-way&type=${tpye}&numberChild=${NumberYoung}&numberYoung=${NumberYoung}&numberAdult=${NumberAdult}&IncreseOrDecrese=InsreseYoung" >+</a>
          		</div>
          </div>
          <div class="dropdown-item-wrapper">
          		<div class="dropdown-item-wrapper-name">child</div>
          		<div class="dropdown-item-wrapper-range">2-12</div>
          		<div class="dropdown-item-wrapper-input">
          			<a class="dropdown-item-wrapper-input-button" href="/AirlineReservationSystem/search?from=${from}&to=${to}&stop=one-way&type=${tpye}&numberChild=${NumberYoung}&numberYoung=${NumberYoung}&numberAdult=${NumberAdult}&IncreseOrDecrese=DecreseAdult" >-</a>
          			<div class="dropdown-item-wrapper-input-child">3</div>
          			<a class="dropdown-item-wrapper-input-button" href="/AirlineReservationSystem/search?from=${from}&to=${to}&stop=one-way&type=${tpye}&numberChild=${NumberYoung}&numberYoung=${NumberYoung}&numberAdult=${NumberAdult}&IncreseOrDecrese=IncreseAdult" >+</a>
          		</div>
          </div>
           </div>
           
          </div>
        </div>
      </div> --%>
    </div>
    <form action="/AirlineReservationSystem/search?type=${type}&typeticket=${typeticket}" method="GET">
    
    <div class="resultSearch--formview--search">
      <div class="search--group">
        <div class="search--group--from">
         
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-plane"></i></span>
            </div>
            <input type="text" class="form-control" placeholder="From" id="from" name="from"value=${from } >
            <input type="text" class="inputhidden" placeholder="From" id="from" name="type" value=${type}>
            <input type="text" class="inputhidden" placeholder="From" id="from" name="typeticket" value=${typeticket }>
          </div>
        </div>
        <div class="search--group--to">
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-plane"></i></span>
            </div>
            <input type="text" class="form-control" placeholder="To" id="to" name="to"value=${to }>
          </div>
        </div>
        <div class="search--group--Datefrom">  
         <div class="form-group">
          <div class="input-group" >
            <input type="text" class="form-control" id="datetimepicker"  placeholder="flight_date" name="flight_date">
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
          <input type="submit" class="btn btn-info" value="Search" ></input>
        </div>
      </div>
    </div>
    </form>
    
  </div>
</div>

 
  <div></div>
  <div></div>

</div>
<div class="main">
  <div class="main--content">
    <div class="main--content--box">
      <div class="main--content--tabbar">
       <div class="content--tabbar--container">
         <form class="content-colapse-reconmend" action="/AirlineReservationSystem/search" method="GET">
         
            <a class="btncollapse" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
              Recommended filters
            </a>
           
          </p>
          <div class="collapse" id="collapseExample" action="/search" method="get">
            <div class=" customcard ">
              <div>
                <div class="box">
                  <div>
                    <input type="checkbox" id="c1" name="test" value="option1">
                    <label for="c1">Option 01</label>
                  </div>
                  <div>
                    <input type="checkbox" id="c2" name="test" value="option1">
                    <label for="c2">Option 02</label>
                  </div>
                  <div>
                    <input type="checkbox" id="c3" name="test" value="option1">
                    <label for="c3">Option 03</label>
                  </div>
                </div>

              </div>
            </div>
          </form>
         </div>
         <form class="content-colapse-reconmend" action="/AirlineReservationSystem/search" method="GET">
         
          <a class="btncollapse" data-toggle="collapse" href="#search" role="button" aria-expanded="false" aria-controls="search">
            Stop
          </a>
         
        </p>
        <div class="collapse" id="search">
          <div class=" customcard ">
            <div>
              <div class="box">
                <div>
                  <input type="checkbox" id="c4" class="stop" name = "stop" value = "nonstop" from=${from } to=${to }>
                  <label for="c4">Nonstop</label>
                </div>
                <div>
                  <input type="checkbox" id="c5"  class="stop" name="stop" value="1-stops" from=${from } to=${to }>
                  <label for="c5">1 stop</label>
                </div>
                <div>
                  <input type="checkbox" id="c6"  class="stop" name="stop" value="2-stops" from=${from } to=${to }>
                  <label for="c6">2+ stops</label>
                </div>
              </div>

            </div>
          </div>
        </div>
       </form>
       <div class="content-colapse-reconmend">
         
        <a class="btncollapse" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample">
          Price
        </a>
       
      </p>
      <div class="collapsePrice" id="collapseExample2">
        <div class=" customcard">
          <div>
            <div class="box">
              
              <div class="values">
                  <div>$<span id="first">1</span></div> - <div>$<span class="second">${maxPrice }</span></div>
              </div>
              <input class="range"  type="range" min="1" max="1000" value="100" step="1">
          
            </div>
          
          </div>
        </div>
      </div>
     </div>
     <div class="content-colapse-reconmend">
         
      <a class="btncollapse" data-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false" aria-controls="collapseExample">
        Cabin
      </a>
     
    </p>
    <div class="collapse" id="collapseExample4">
      <div class=" customcard ">
        <div>
          <div class="box">
            <div>
              <input type="checkbox" id="c10" name="cb">
              <label for="c10">Option 01</label>
            </div>
            <div>
              <input type="checkbox" id="c11" name="cb">
              <label for="c11">Option 02</label>
            </div>
            <div>
              <input type="checkbox" id="c12" name="cb">
              <label for="c12">Option 03</label>
            </div>
          </div>

        </div>
      </div>
    </div>
   </div>
       </div>
      </div>
      <div class="main--content--info">
        <div class="main--content--infor--header">
          <ul class="nav nav-pills">
            <li class="tab-custom"><a class="tab-btn tab-btn1" data-toggle="pill" href="#home">Recommended</a></li>
            <li class="tab-custom"><a  class="tab-btn tab-btn2" data-toggle="pill" href="#menu1">Promotion</a></li>
            <li class="tab-custom"><a class="tab-btn tab-btn3" data-toggle="pill" href="#menu2">Shortest</a></li>
            <li class="tab-custom"><a  class="tab-btn tab-btn4" data-toggle="pill" href="#menu3">Cheapest</a></li>
          </ul>

        </div>
    
        <div class="tab-content">
          <div id="home" class="tab-pane fade in active show">
            <div class="tab--content--box--ticket">
              <div class="list--ticket">
                <div class="list--ticket--box">
                 <div>
                 	<c:forEach var="s" items="${flightList}">
               
                 
                 	<div class="ticket--box--content">
                     <div class="ticket--box--info">
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city">${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                        
                          
                       </div>
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city"> ${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                         
                       </div>
                      
                     </div>
                     <div class="ticket--box--deal"> 
                       <div>
                         <div> <h3>
                          $ ${s.price}
                         </h3>
                        </div>
                         <div><a class=" btn btn-primary" href="/AirlineReservationSystem/detailFlight?id=${s.flightID}&ticketId=${s.ticketID}"> view deal</a></div>
                       </div>
                     </div>
                   </div>
                  
                 	</c:forEach>
                   
                   
                 </div>
                 <div></div>
                </div>
                <div class="list--ticket--box">
                  
                </div>
              </div>
            </div>
          </div>
          <div id="menu1" class="tab-pane fade">
            <c:forEach var="s" items="${flightList}">
               
                 
                 	<div class="ticket--box--content">
                     <div class="ticket--box--info">
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city">${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                        
                          
                       </div>
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city"> ${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                         
                       </div>
                      
                     </div>
                     <div class="ticket--box--deal"> 
                       <div>
                         <div> <h3>
                           ${s.price}
                         </h3>
                        </div>
                         <div><a class=" btn btn-primary" href="/AirlineReservationSystem/detailFlight?id=${s.flightID}"> view deal</a></div>
                       </div>
                     </div>
                   </div>
                  
                 	</c:forEach>
          </div>
          <div id="menu2" class="tab-pane fade">
            <c:forEach var="s" items="${flightList}">
               
                 
                 	<div class="ticket--box--content">
                     <div class="ticket--box--info">
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city">${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                        
                          
                       </div>
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city"> ${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                         
                       </div>
                      
                     </div>
                     <div class="ticket--box--deal"> 
                       <div>
                         <div> <h3>
                           ${s.price}
                         </h3>
                        </div>
                         <div><a class=" btn btn-primary" href="/AirlineReservationSystem/detailFlight?id=${s.flightID}"> view deal</a></div>
                       </div>
                     </div>
                   </div>
                  
                 	</c:forEach>
          </div>
          <div id="menu3" class="tab-pane fade">
            <c:forEach var="s" items="${flightList}">
               
                 
                 	<div class="ticket--box--content">
                     <div class="ticket--box--info">
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city">${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                        
                          
                       </div>
                       <div class="ticket--box--infoxrrow">
                        <div class="inforrow--checkbox" >
                          <input type="checkbox" name="check" id="check">
                        </div>
                         <div class="inforrow--brand">${s.airlineName}</div>
                          <div class="inforrow--time">
                            <div class="inforrow--time--wrapper--stop">${s.departure}- ${s.arrival}</div>
                            <div  class="inforrow--time--wrapper--city"> ${s.departureTime}-${s.arrivalTime}</div>
                           </div>
                         <div class="inforrow--route">
                          <div class="inforrow--route--wrapper">
                            <div class="inforrow--route--wrapper--stop">${s.stop }</div>
                            <div  class="inforrow--route--wrapper--date">${s.flightDate}</div>
                           </div>
                         </div>
                         <div class="inforrow--estimate">${s.flightDuration}</div>
                         
                       </div>
                      
                     </div>
                     <div class="ticket--box--deal"> 
                       <div>
                         <div> <h3>
                           ${s.price}
                         </h3>
                        </div>
                         <div><a class=" btn btn-primary" href="/AirlineReservationSystem/detailFlight?id=${s.flightID}"> view deal</a></div>
                       </div>
                     </div>
                   </div>
                  
                 	</c:forEach>
          </div>
        </div>
      </div>
      <div class="advantise"></div>
    </div>
  </div>
</div>
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
       
       function changeNumberAdult(type){
    	   
       let adult= document.querySelector(".dropdown-item-wrapper-input-adult").textContent
       adult=+adult
    	   type==="increase"?adult+=1:adult-=1;
       document.querySelector(".dropdown-item-wrapper-input-adult").textContent=adult
       document.querySelector(".custombutton3").textContent=`${adult} Adult`
       }
       function changeNumberYoung(type){
    	   
           let young= document.querySelector(".dropdown-item-wrapper-input-young").textContent
           young=+young
        	   type==="increase"?young+=1:young-=1;
           document.querySelector(".dropdown-item-wrapper-input-adult").textContent=young
           document.querySelector(".custombutton3").textContent=`${young} Young`
           }
       function changeNumberChild(type){
    	   
           let child= document.querySelector(".dropdown-item-wrapper-input-child").textContent
           child=+child
        	   type==="increase"?child+=1:child-=1;
           document.querySelector(".dropdown-item-wrapper-input-adult").textContent=child
           document.querySelector(".custombutton3").textContent=`${child} Child`
           }
       
      
</script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</html>