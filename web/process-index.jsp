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
        <meta charset="UTF-8">
    </head
    <%

        String check_username = "student";
        String check_password = "student";

        String username = request.getParameter("email");
        String password = request.getParameter("password");

        String urlDirect = (username.equals(check_username) && password.equals(check_password)) ? "login.jsp" : "index.jsp";

        response.sendRedirect(urlDirect);
    %>
</html>
