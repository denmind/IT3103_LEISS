<%-- 
    Document   : forDebug
    Created on : 12 6, 18, 2:53:53 AM
    Author     : Carah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            String log_name = "Item Borrowed";
            String stud_name = request.getParameter("borrow_name");  
            String SERIAL_FIND_NORM = request.getParameter("serial_borrow");
            
        
        %>
        
        Serial : <%=SERIAL_FIND_NORM %>
        Stud name : <%=stud_name %> 
        
        
    </body>
</html>
