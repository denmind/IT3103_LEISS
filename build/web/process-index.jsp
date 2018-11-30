<%-- 
    Document   : index-process
    Created on : 11 25, 18, 3:03:53 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Processing...</title>
        <meta charset="UTF-8">
    </head
    <%
        String check_username = "student";
        String check_password = "student";

        String username = request.getParameter("email");
        String password = request.getParameter("password");
        int value = -1;

        if (username == check_username && password == check_password) {
            value = 1;
        }

        if (value == 1) {
            response.sendRedirect("login.jsp");
        } else if (value != 1) {
            response.sendRedirect("index.jsp");
        }
    %>
</html>
