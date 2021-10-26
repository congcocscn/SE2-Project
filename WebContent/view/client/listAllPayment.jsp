<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All Payment</title>
</head>
<body>
	<h1>List All of Payment</h1>

	<style>
		table {
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}

		td, th {
			border: 1px solid #dddddd;
			text-align: left;
			padding: 8px;
		}

		tr:nth-child(even) {
			background-color: #dddddd;
		}
	</style>

	<table>
		<tr>
			<th style="text-align: center">Payment ID</th>
			<th style="text-align: center">Customer name</th>
			<th style="text-align: center">Card type</th>
			<th style="text-align: center">Card number</th>
			<th style="text-align: center">Exp date</th>
			<th style="text-align: center">CVV</th>
			<th style="text-align: center">Function</th>

		</tr>

		<c:forEach items="${list}" var="c">
			<tr>
				<td style="text-align: right">${c.payment_id}</td>
				<td style="text-align: right">${c.customer_name}</td>
				<td style="text-align: right">${c.card_type}</td>
				<td style="text-align: right">${c.card_number}</td>
				<td style="text-align: right">${c.exp_date}</td>
				<td style="text-align: right">${c.cvv}</td>
				<td style="text-align: center"><a
					href="editPayment.jsp?payment_id=${c.payment_id}&customer_name='${c.customer_name}'&card_type='${c.card_type}'&card_number='${c.card_number}'&exp_date='${c.exp_date}'&cvv='${c.cvv}'">Edit</a>
					<a href="PaymentDeleteServlet?payment_id=${c.payment_id}"
					onclick="return confirm('Are you sure you want to delete this passenger?');">Delete</a>
				</td>
			</tr>
		</c:forEach>

	</table>
	<br>
	<br>
	<br>
	<a href="addPayment.jsp">Add new payment</a>

</body>
</html>