<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Passenger</title>
</head>
<body>

	<h1>Add new passenger</h1>

	<form action="PassengerAddServlet" method="post">
		Passport id number:   <input type="text" name="passport_id_number" required placeholder="Enter a String"><br />
		<br> Nationality:   <input type="text" name="nationality" required placeholder="Enter a string"><br />
		<br> Address line 1:   <input type="text" name="address_line1" required placeholder="Enter a string"><br />
		<br> Address line 2:   <input type="text" name="address_line2" required placeholder="Enter a string"><br />
		<br> Address line 3:   <input type="text" name="address_line3" required placeholder="Enter a string"><br />
		<br> Country:   <input type="text" name="country" required placeholder="Enter a string"><br />
		<br> Province:   <input type="text" name="province" required placeholder="Enter a string"><br />
		<br> District:   <input type="text" name="district" required placeholder="Enter a string"><br />
		<br> Postal code:   <input type="text" name="postal_code" required placeholder="Enter a string"><br />
		<br> Title:   <input type="text" name="title" required placeholder="Enter a string"><br />
		<br> User id:   <input type="number" name="user_id" required placeholder="Enter a number"><br />
		<br> Payment id:   <input type="number" name="payment_id" required placeholder="Enter a number"><br />
		<br> <br> <br /> <input type="submit" value="Add">
	</form>

</body>
</html>