<%@ page session="true" %>
<%
    if (!"user".equals(session.getAttribute("role"))) {
        response.sendRedirect("error.jsp");
    }
%>
<h2>User Dashboard</h2>
Welcome, <%= session.getAttribute("username") %>!
