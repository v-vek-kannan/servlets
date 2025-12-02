<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
<head><title>Dashboard</title></head>
<body>
<h2>Welcome, <%= session.getAttribute("username") %>!</h2>
<p>This is your dashboard.</p>
<a href="index.jsp">Logout</a>
</body>
</html>
