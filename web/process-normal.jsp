<%-- 
    Document   : process-normal
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
        
        //NORMAL TO BORROWED
        if (request.getParameter("process_type").equals("borrowed")) {
            String SERIAL_FIND_NORM = request.getParameter("serial_borrow");

            for (Item item : Leiss.getLab_list().getLab_items()) {
                if (item.getItem_serial_no().equals(SERIAL_FIND_NORM)) {
                    
                    String log_date = new Date().toString();
                    /*CHANGE*/ 
                    String log_name = "Item Borrowed";
                    String stud_name = request.getParameter("borrow_name");
                    String log_description = "Item " + item.getItem_serial_no() + " borrowed by " + stud_name;

                    /*CHANGE*/
                    item.setItem_state(new Item_Borrowed());
                    item.setItem_stud(new Student(stud_name));
                    
                    Leiss.getLab_log().add(new Log(log_date, log_name, log_description));
                }
            }
            //NORMAL TO DAMAGED
        } else if (request.getParameter("process_type").equals("damaged")) {
            String SERIAL_FIND_DAMAGED = request.getParameter("serial_damaged");

            for (Item item : Leiss.getLab_list().getLab_items()) {
                if (item.getItem_serial_no().equals(SERIAL_FIND_DAMAGED)) {
                    
                    String log_date = new Date().toString();
                    /*CHANGE*/ 
                    String log_name = "Item Damaged";
                     String stud_name = request.getParameter("damaged_name");
                     String log_description = "Item " + item.getItem_serial_no() + " damaged by " + stud_name;

                    item.setItem_state(new Item_Damaged());
                    item.setItem_stud(new Student(stud_name));

                    Leiss.getLab_log().add(new Log(log_date, log_name, log_description));
                }
            }
        }
        response.sendRedirect("equipments-normal.jsp");
    %>
</html>
