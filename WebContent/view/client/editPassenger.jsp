<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Passenger</title>
</head>
<body>

	<h1>Edit passenger</h1>

	<form action="PassengerEditServlet" method="post">
		Passenger ID:   <input type="number" name="passenger_id" required value=<%= request.getParameter("passenger_id") %> readonly="readonly"><br />
		<br>Passport id number:   <input type="text" name="passport_id_number" required value=<%= request.getParameter("passport_id_number") %>><br />
		<br> Nationality:   <input type="text" name="nationality" required value=<%= request.getParameter("nationality") %>><br />
		<br> Address line 1:   <input type="text" name="address_line1" required value=<%= request.getParameter("address_line1") %>><br />
		<br> Address line 2:   <input type="text" name="address_line2" required value=<%= request.getParameter("address_line2") %>><br />
		<br> Address line 3:   <input type="text" name="address_line3" required value=<%= request.getParameter("address_line3") %>><br />
		<br> Country:   <input type="text" name="country" required value=<%= request.getParameter("country") %>><br />
		<br> Province:   <input type="text" name="province" required value=<%= request.getParameter("province") %>><br />
		<br> District:   <input type="text" name="district" required value=<%= request.getParameter("district") %>><br />
		<br> Postal code:   <input type="text" name="postal_code" required value=<%= request.getParameter("title") %>><br />
		<br> Title:   <input type="text" name="title" required value=<%= request.getParameter("passenger_id") %>><br />
		<br> User id:   <input type="number" name="user_id" required value=<%= request.getParameter("user_id") %>><br />
		<br> Payment id:   <input type="number" name="payment_id" required value=<%= request.getParameter("payment_id") %>><br />
		<br> <br> <br /> <input type="submit" value="Save change">
	</form>

</body>
</html>