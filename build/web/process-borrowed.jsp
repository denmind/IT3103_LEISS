<%-- 
    Document   : process-borrowed
    Created on : 11 25, 18, 3:03:53 PM
    Author     : User
--%>

<%@page import="java.util.Date"%>
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

        //BORROWED TO NORMAL
        if (request.getParameter("process_type").equals("normal")) {
            String SERIAL_FIND_NORM = request.getParameter("serial_normal");

            for (Item item : Leiss.getLab_list().getLab_items()) {
                if (item.getItem_serial_no().equals(SERIAL_FIND_NORM)) {
                    String log_date = new Date().toString();
                    /*CHANGE*/ String log_name = "Borrowed to Normal";
                    String log_description = "[" + item.getItem_serial_no()+ "] Item changed state.";

                    item.setItem_state(new Item_Normal());

                    Leiss.getLab_log().add(new Log(log_date, log_name, log_description));
                }
            }
            //BORROWED TO DAMAGED
        } else if (request.getParameter("process_type").equals("damaged")) {
            String SERIAL_FIND_DAMAGED = request.getParameter("serial_damaged");

            for (Item item : Leiss.getLab_list().getLab_items()) {
                if (item.getItem_serial_no().equals(SERIAL_FIND_DAMAGED)) {
                    String log_date = new Date().toString();
                    /*CHANGE*/ String log_name = "Borrowed to Damaged";
                    String log_description = "[" + item.getItem_serial_no()+ "] Item changed state.";

                    item.setItem_state(new Item_Damaged());

                    Leiss.getLab_log().add(new Log(log_date, log_name, log_description));
                }
            }
        }
        response.sendRedirect("equipments-borrowed.jsp");
    %>
</html>
