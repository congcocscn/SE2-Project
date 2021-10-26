<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/view/admin" var="url"></c:url>
<!DOCTYPE html>
<html>
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
      
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title" style ="font-weight:bold; font-size: 25px; float:left;">Passenger table</h4>
	              <p class="card-description"></p>
                  <div class="table-responsive">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Passport number</th>
                          <th>First name</th>
                          <th>Last name</th>
                          <th>Nationality</th>
                          <th>Date of birth</th>
                          <th>Gender</th>
                          <th>Phone Number</th>
                          <th>Email</th>
                          <th>Options</th>
                        </tr>
                      </thead>
                      <tbody>
							<%-- c:forEach => basic iteration tag --%>
							<c:forEach var="passenger" items="${listPassenger}">
								<tr>
									<%-- c:out => for expressions --%>
									<td><c:out value="${passenger.passenger_id}" /></td>
									<td><c:out value="${passenger.passport_number}" /></td>
									<td><c:out value="${passenger.firstName}" /></td>
									<td><c:out value="${passenger.lastName}" /></td>
									<td><c:out value="${passenger.nationality}" /></td>
									<td><c:out value="${passenger.dob}" /></td>
									<td><c:out value="${passenger.gender}" /></td>
									<td><c:out value="${passenger.phone_number}" /></td>
									<td><c:out value="${passenger.email}" /></td>
									
									<td>
			                          <a class="btn btn-outline-danger btn-icon-text" href="delete?passenger_id=<c:out value='${passenger.passenger_id}' />" role="button">
			                          <i class="mdi mdi-delete-sweep btn-icon-prepend"></i> Delete</a>
			                          </td>
			                          <td>
			                          <a class="btn btn-outline-info btn-icon-text" href="edit?passenger_id=<c:out value='${passenger.passenger_id}' />" role="button">
			                          <i class="mdi mdi-file-check btn-icon-prepend"></i> Edit</a>
			                          </td>
			                          
							</c:forEach>
						</tbody>
                        
                    </table>
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
  <script src="${url}/vendors/js/vendor.bundle.base.js"></script>
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