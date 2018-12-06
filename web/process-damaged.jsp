<%-- 
    Document   : process-damaged
    Created on : 11 25, 18, 3:03:53 PM
    Author     : User
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Processing...</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <%
            Laboratory Leiss = Laboratory.getInstance();

            String SERIAL_FIND_DMG = request.getParameter("serial_damaged");
            String PROCESS = request.getParameter("process_type");
            DateFormat DF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            if (PROCESS.equals("normal")) {
                for (Item item : Leiss.getLab_list().getLab_items()) {
                    if (item.getItem_serial_no().equals(SERIAL_FIND_DMG)) {

                        String log_date = DF.format(new Date());
                        String log_name = "Item repaired.";
                        String log_description = "Item " + item.getItem_serial_no() + " repaired.";

                        item.setItem_state(Leiss.getItemStateFactory().giveItem_State(Leiss.getLab_list(), "Normal"));

                        Leiss.getLab_log().add(new Log(log_date, log_name, log_description));
                    }
                }
            }

            response.sendRedirect("equipments-damaged.jsp");
        %>
    </body>
</html>
