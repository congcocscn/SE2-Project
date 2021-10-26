<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/view/admin" var="url"></c:url>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Voyago Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="${url}/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="${url}/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${url}/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${url}/images/favicon.png" />
</head>

<body>
  <div class="container-scroller d-flex">
    <!-- partial:./partials/sidebar.jsp -->
    <jsp:include page="sidebar.jsp"></jsp:include>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:./partials/navbar.jsp -->
      <jsp:include page="navbar.jsp"></jsp:include>
  
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
              
                <div class="card-body">
                  <h4 class="card-title d-flex justify-content-center flex-nowrap ">Flight Details</h4>
                  
                  <form class="forms-sample" action="/AirlineReservationSystem/admin/flight/get"  method="post" >
                  <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1">Flight ID</label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="flightID" name=flightID value="${flight.flightID}"/> </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1">Flight Number</label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="flightNumber" name=flightNumber value="${flight.flightNumber}"/> </div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label class=" form-control-label">Flight Date</label></div>
                      <div class="col-12 col-md-9"><input type="date" name="flightDate" id="flightDate" class="form-control" value="${flight.flightDate}"/></div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label for="exampleInputCity1">Departure Time</label></div>
                      <div class="col-12 col-md-9"><input type="time" class="form-control" id="departureTime" name = "departureTime" value="${flight.departureTime}"/></div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label for="exampleInputCity1">Arrival Time</label></div>
                      <div class="col-12 col-md-9"><input type="time" class="form-control" id="arrivalTime" name = "arrivalTime" value="${flight.arrivalTime}"/> </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputCity1">Departure </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="departure" name = "departure" value="${flight.departure}"/></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputCity1">Arrival </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="arrival" name = "arrival" value="${flight.arrival}"/></div>
                      </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1">Flight Duration</label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="flightDuration" name = "flightDuration"  value="${flight.flightDuration}"/></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputCity1">Airline Name</label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="airlineName" name="airlineName" value="${flight.airlineName}"/></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1"> Capacity </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="capacity" name="capacity" value="${flight.capacity}"/></div>
                      </div>
                      <div class="row form-group">
                      <div class="col col-md-3"><label for="session-input" class=" form-control-label">Stop</label></div>
                      <div class="col-md-6">
                      
                    <div class="form-group">
                          <div class="form-check form-check-primary">
                           
                              <input type="radio" class="form-check-input" name="stop" id="ExampleRadio1" value="nonstop">
                              <label class="form-check-label" for="ExampleRadio1">
                             Non-stop
                            </label>
                          </div>
                          <div class="form-check form-check-success">
                           
                              <input type="radio" class="form-check-input" name="stop" id="ExampleRadio2" value="1-stops">
                             <label class="form-check-label" for="ExampleRadio2">  1-stop
                            </label>
                          </div>
                          <div class="form-check form-check-info">
                           
                              <input type="radio" class="form-check-input" name="stop" id="ExampleRadio3" value="2-stops">
                             
                            <label class="form-check-label" for="ExampleRadio3">
                             2-stops
                             </label>
                          </div>
                          <div class="form-check form-check-danger">
                           
                              <input type="radio" class="form-check-input" name="stop" id="ExampleRadio4" value="3-stops">
                            
                          <label class="form-check-label" for="ExampleRadio4" >
                             3-stops
                            </label>
                          </div>
                        </div>
                     </div>
                     </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1"> Stop 1 </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="stop1" name="stop1" value="${flight.stop1}"/></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1"> Stop 2 </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="stop2" name="stop2" value="${flight.stop2}"/></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1"> Stop 3 </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="stop3" name="stop3" value="${flight.stop3}"/></div>
                      </div>


                  <div class="template-demo d-flex justify-content-center flex-nowrap">
                  	
                 
			      <a class="btn btn-outline-danger btn-icon-text" href="delete?id=<c:out value='${flight.flightID}' />" role="button">
			      <i class="mdi mdi-delete-sweep btn-icon-prepend"></i> Delete</a>
			                          
                    <input type="submit" class="btn btn-outline-success btn-icon-text" value="Update">
                                                                      
                      
                   
                    <a href="/AirlineReservationSystem/admin/flight/list"  class="btn btn-outline-warning btn-icon-text"/>
                      <i class="mdi mdi-reload btn-icon-prepend"></i>                                                    
                      Cancel
                    </a>
                  </div>
                  

                  </form>
                </div>
              </div>
            </div>
  
            </div>
       
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:./partials/footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->

  <!-- container-scroller -->
  <!-- base:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="${url}/js/off-canvas.js"></script>
  <script src="${url}/js/hoverable-collapse.js"></script>
  <script src="${url}/js/template.js"></script>
  <!-- endinject -->
  <!-- End custom js for this page-->
</body>

</html>
