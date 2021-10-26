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
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                	<div>
                
	                  <h4 class="card-title" style ="font-weight:bold; font-size: 25px; float:left;">Flight table</h4>
	                  <a class="btn btn-success btn-icon-text" href="<%= request.getContextPath() %>/admin/flight/add" role="button" style ="float:right">
				                          <i class="mdi mdi-upload btn-icon-prepend"></i> Add Flight</a>
              		</div>
                  <div class="table-responsive pt-3">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                        <th style="font-weight:bold">
                            Flight ID</th>
             
                          <th style="font-weight:bold">
                            Flight Number</th>
                          <th style="font-weight:bold">
                            Flight Date</th>
                          <th style="font-weight:bold">
                            Departure</th>
                          <th style="font-weight:bold">
                            Arrival</th>
                          <th style="font-weight:bold">
                            Airline Name</th>
                            <th style="font-weight:bold">
                            Capacity</th>
                            <th>
                            </th>
                        </tr>
                      </thead>
                      <tbody>
							<%-- c:forEach => basic iteration tag --%>
							<c:forEach var="flight" items="${listFlight}">
								<tr>
									<%-- c:out => for expressions --%>
									<td><c:out value="${flight.flightID}" /></td>
									<td><c:out value="${flight.flightNumber}" /></td>
									<td><c:out value="${flight.flightDate}" /></td>
									<td><c:out value="${flight.departure}" /></td>
									<td><c:out value="${flight.arrival}" /></td>
									<td><c:out value="${flight.airlineName}" /></td>
									<td><c:out value="${flight.capacity}" /></td>
									<td>
			                          <a class="btn btn-inverse-info btn-fw" href="get?id=<c:out value='${flight.flightID}' />" role="button">
			                          <i class="mdi mdi-vector-arrange-below btn-icon-prepend"></i> More detail</a>
			                          </td>
			                          
							</c:forEach>
						</tbody>
                    </table>
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