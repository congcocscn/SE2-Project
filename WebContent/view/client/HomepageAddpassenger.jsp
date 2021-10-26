<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>


<form action="PassengerListServlet" method="get">
	<input type="submit" value="View all passenger">
</form> 
<a href="addPassenger.jsp">Add new Passenger</a><br><br> 
<form action="PaymentListServlet" method="get">
	<input type="submit" value="View all payment">
</form> 
<a href="addPayment.jsp">Add new Payment</a><br><br>

</body>
</html>