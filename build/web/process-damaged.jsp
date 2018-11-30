<%-- 
    Document   : process-damaged
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
        Laboratory Leiss = Laboratory.getInstance();

        String SERIAL_FIND_DMG = request.getParameter("serial_damaged");
        
        for (Item item : Leiss.getLab_list().getLab_items()) {
            if (item.getItem_serial_no().equals(SERIAL_FIND_DMG)) {
                item.setItem_state(new Item_Normal());
                
            }
        }

        response.sendRedirect("equipments-damaged.jsp");
    %>
</html>
