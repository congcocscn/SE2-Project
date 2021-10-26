<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import = "java.util.Date" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
    
    <% 	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
    	String dateNow = sdf.format(new Date());%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Payment</title>
</head>
<body>

	<h1>Add new payment</h1>

	<form action="PaymentAddServlet" method="post">
		Customer name:   <input type="text" name="customer_name" required maxlength="255" placeholder="Enter a String"><br />
		<br> Card type:   <input type="text" name="card_type" required maxlength="255" placeholder="Enter a string"><br />
		<br> Card number:   <input type="text" name="card_number" required maxlength="255" placeholder="Enter a string"><br />
		<br> Exp date:   <input type="date" name="exp_date" required min=<%=dateNow%> ><br />
		<br> CVV:   <input type="text" name="cvv" required maxlength="10" placeholder="Enter a string"><br />
		<br> <br> <br /> <input type="submit" value="Add">
	</form>

</body>
</html>