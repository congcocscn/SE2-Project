<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All Passenger</title>
</head>
<body>
	<h1>List All of Passenger</h1>

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
			<th style="text-align: center">Passenger ID</th>
			<th style="text-align: center">Passport ID</th>
			<th style="text-align: center">Nationality</th>
			<th style="text-align: center">Address line 1</th>
			<th style="text-align: center">Address line 2</th>
			<th style="text-align: center">Address line 3</th>
			<th style="text-align: center">Country</th>
			<th style="text-align: center">Province</th>
			<th style="text-align: center">District</th>
			<th style="text-align: center">Postal code</th>
			<th style="text-align: center">Title</th>
			<th style="text-align: center">User ID</th>
			<th style="text-align: center">Payment ID</th>
			<th style="text-align: center">Function</th>

		</tr>

		<c:forEach items="${list}" var="c">
			<tr>
				<td style="text-align: right">${c.passenger_id}</td>
				<td style="text-align: right">${c.passport_id_number}</td>
				<td style="text-align: right">${c.nationality}</td>
				<td style="text-align: right">${c.address_line1}</td>
				<td style="text-align: right">${c.address_line2}</td>
				<td style="text-align: right">${c.address_line3}</td>
				<td style="text-align: right">${c.country}</td>
				<td style="text-align: right">${c.province}</td>
				<td style="text-align: right">${c.district}</td>
				<td style="text-align: right">${c.postal_code}</td>
				<td style="text-align: right">${c.title}</td>
				<td style="text-align: right">${c.user_id}</td>
				<td style="text-align: right">${c.payment_id}</td>
				<td style="text-align: center"><a
					href="editPassenger.jsp?passenger_id=${c.passenger_id}&passport_id_number='${c.passport_id_number}'&nationality='${c.nationality}'&address_line1='${c.address_line1}'&address_line2='${c.address_line2}'&address_line3='${c.address_line3}'&country='${c.country}'&province='${c.province}'&district='${c.district}'&postal_code='${c.postal_code}'&title='${c.title}'&user_id=${c.user_id}&payment_id=${c.payment_id}">Edit</a>
					<a href="PassengerDeleteServlet?passenger_id=${c.passenger_id}"
					onclick="return confirm('Are you sure you want to delete this passenger?');">Delete</a>
				</td>
			</tr>
		</c:forEach>

	</table>
	<br>
	<br>
	<br>
	<a href="addPassenger.jsp">Add new passenger</a>

</body>
</html>