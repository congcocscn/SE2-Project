<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Payment</title>
</head>
<body>

	<h1>Edit payment</h1>

	<form action="PaymentEditServlet" method="post">
		Payment ID:   <input type="number" name="payment_id" required value=<%= request.getParameter("payment_id") %> readonly="readonly"><br />
		<br>Customer name:   <input type="text" name="customer_name" required value=<%= request.getParameter("customer_name") %>><br />
		<br> Card type:   <input type="text" name="card_type" required value=<%= request.getParameter("card_type") %>><br />
		<br> Card number:   <input type="text" name="card_number" required value=<%= request.getParameter("card_number") %>><br />
		<br> Exp date:   <input type="date" name="exp_date" required value=<%= request.getParameter("exp_date") %>><br />
		<br> CVV:   <input type="text" name="cvv" required value=<%= request.getParameter("cvv") %> maxlength="10"><br />
		<br> <br> <br /> <input type="submit" value="Save change">
	</form>

</body>
</html>