<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <c:url value="/admin" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav ">
        <li class="nav-item sidebar-category">
          <p>Navigation</p>
          <span></span>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${url}">
            <i class="mdi mdi-view-quilt menu-icon"></i>
            <span class="menu-title">Dashboard</span>
            
          </a>
        </li><br>
        <li class="nav-item sidebar-category">
          <p>Components</p>
          <span></span>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${url}/flight/list">
            <i class="mdi mdi-airplane menu-icon"></i>
            <span class="menu-title">Flights</span>
          </a>
        </li><br>

        <li class="nav-item">
          <a class="nav-link" href="${url}/passenger/list">
            <i class="mdi mdi-account-multiple menu-icon"></i>
            <span class="menu-title">Passengers</span>
          </a>
        </li> <br> 
        <li class="nav-item">
          <a class="nav-link" href="${url}/user/list">
            <i class="mdi mdi-account-box-outline menu-icon"></i>
            <span class="menu-title">Users</span>
          </a>
        </li>      
        
      </ul>
    </nav>

</body>
</html>