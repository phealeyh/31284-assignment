<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>You have been logged out</title>
</head>
<body>

<%session.invalidate(); %>
<br><br>
<h3>You have been logged out.</h3>
<br>
<p> Click <a href="index.jsp">here</a> to return to search through publicly available articles. </p>


</body>
</html>