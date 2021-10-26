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
                  <h4 class="card-title d-flex justify-content-center flex-nowrap ">Update Passenger</h4>
                  
                  <form class="forms-sample" action="/AirlineReservationSystem/admin/passenger/edit"  method="post" >
                  
                     <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1">ID</label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="passenger_id" name="passenger_id" value="${passenger.passenger_id}"/> </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1">Passport Number</label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="passportNumber" name=passportNumber value="${passenger.passport_number}"/> </div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label class=" form-control-label">First Name</label></div>
                      <div class="col-12 col-md-9"><input type="text" name="firstName" id="firstname" class="form-control" value="${passenger.firstName}"/></div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label for="exampleInputCity1">Last Name</label></div>
                      <div class="col-12 col-md-9"><input type="text" class="form-control" id="lastName" name = "lastName" value="${passenger.lastName}"/></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputCity1">Nationality </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="nationality" name = "nationality" value="${passenger.nationality}"/></div>
                      </div>
                    <div class="row form-group">
                      <div class="col col-md-3"><label for="exampleInputCity1">Date of birth</label></div>
                      <div class="col-12 col-md-9"><input type="date" class="form-control" id="dob" name = "dob" value="${passenger.dob}"/> </div>
                    </div>                   
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputCity1">Phone Number </label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="phoneNumber" name = "phoneNumber" value="${passenger.phone_number}"/></div>
                      </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label for="exampleInputName1">Email</label></div>
                        <div class="col-12 col-md-9"><input type="text" class="form-control" id="email" name = "email"  value="${passenger.email}"/></div>
                    </div>
                   
                      <div class="row form-group">
                      <div class="col col-md-3"><label for="session-input" class=" form-control-label">Gender</label></div>
                      <div class="col-md-6">
                      
                    <div class="form-group">
                          <div class="form-check form-check-primary">
                           
                              <input type="radio" class="form-check-input" name="gender" id="ExampleRadio1" value="male">
                              <label class="form-check-label" for="ExampleRadio1">
                             Male
                            </label>
                          </div>
                          <div class="form-check form-check-success">
                           
                              <input type="radio" class="form-check-input" name="gender" id="ExampleRadio2" value="female">
                             <label class="form-check-label" for="ExampleRadio2">  Female
                            </label>
                          </div>
                          <div class="form-check form-check-info">
                           
                              <input type="radio" class="form-check-input" name="gender" id="ExampleRadio3" value="other">
                             
                            <label class="form-check-label" for="ExampleRadio3">
                             Other
                             </label>
                          </div>
                          
                        </div>
                     </div>
                     </div>
                      

                  <div class="template-demo d-flex justify-content-center flex-nowrap">
                  	
                 
			  			                          
                    <input type="submit" class="btn btn-outline-success btn-icon-text" value="Update">
                                                                      
                      
                   
                    <a href="/AirlineReservationSystem/admin/passenger/list"  class="btn btn-outline-warning btn-icon-text"/>
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
