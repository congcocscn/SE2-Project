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
                  <h4 class="card-title">Create New Flight</h4>
                  <p class="card-description">
                    Create New Flight
                  </p>
                  <form class="forms-sample" action="/AirlineReservationSystem/admin/flight/add" method="post">
                    <div class="form-group">
                      <label for="exampleInputName1">Flight Code</label>
                      <input type="text" class="form-control" id="flightCode" placeholder="Flight Code" name="flightNumber">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputCity1">Airline Name</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Airline Name" name="airlineName">
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label class=" form-control-label">Flight Date</label></div>
                      <div class="col-12 col-md-9"><input type="text" name="flightDate" placeholder="YYYY-MM-DD" class="form-control" ></div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label for="exampleInputCity1">Departure Time</label></div>
                      <div class="col-12 col-md-9"><input type="text" class="form-control" placeholder="hh:mm:ss" id="boardingTime" name = "departureTime"></div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label for="exampleInputCity1">Arrival Time</label></div>
                      <div class="col-12 col-md-9"><input type="text" class="form-control" placeholder="hh:mm:ss" id="boardingTime" name = "arrivalTime"></div>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Departure</label>
                      <input type="text" class="form-control" id="flightCode" placeholder="Enter the Departure" name="departure">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputName1">Arrival</label>
                      <input type="text" class="form-control" id="flightCode" placeholder="Enter the Arrival" name="arrival">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Flight Duration</label>
                      <input type="text" class="form-control" id="Departure" placeholder="Enter flight duration" name="flightDuration">
                    </div>
                    
                    <div class="row form-group">
                      <div class="col col-md-3"><label class=" form-control-label">Capacity (person)</label></div>
                      <div class="col-12 col-md-9"><input type="number" min="2" value="350" max="500" name="capacity" class="form-control"><small class="form-text text-muted"></small></div>
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
                  </div >
                  <div class="row form-group">
                      <div class="col col-md-3"><label class=" form-control-label">Stop1</label></div>
                      <div class="col-12 col-md-9"><input type="text"  name="stop1" class="form-control"><small class="form-text text-muted"></small></div>
                    </div>
	<div class="row form-group">
                      <div class="col col-md-3"><label class=" form-control-label">Stop2</label></div>
                      <div class="col-12 col-md-9"><input type="text"   name="stop2" class="form-control"><small class="form-text text-muted"></small></div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label class=" form-control-label">Stop3</label></div>
                      <div class="col-12 col-md-9"><input type="text"  name="stop3" class="form-control"><small class="form-text text-muted"></small></div>
                    </div>
                    
                  <div class="template-demo d-flex justify-content-center flex-nowrap">
                  	<a href="/AirlineReservationSystem/admin/flight/list"  class="btn btn-outline-warning btn-icon-text"/>
                      <i class="mdi mdi-reload btn-icon-prepend"></i>                                                    
                      Cancel
                    </a>
                    
                    <input type="submit" class="btn btn-outline-success btn-icon-text" value ="Submit"/>
                                                                      
                    
                  
           
                  </div>
                  

                  </form>
                </div>
              </div>
            </div>
  
            </div>
       
          </div>
              </div>
      <!-- main-panel ends -->
    <!-- content-wrapper ends -->
        <!-- partial:./partials/footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
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
