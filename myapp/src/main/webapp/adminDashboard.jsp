<%@ page session="true" %>
<%
    if (!"admin".equals(session.getAttribute("role"))) {
        response.sendRedirect("error.jsp");
    }
%>
<h2>Admin Dashboard</h2>
Welcome, <%= session.getAttribute("username") %>!
