<%-- 
    Document   : index-process
    Created on : 11 25, 18, 3:03:53 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Processing...</title>
    </head
    <%
        String username = request.getParameter("email");
        String password = request.getParameter("password");
        int value = -1;

        if (username == "student" && password == "student") {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    %>
</html>
