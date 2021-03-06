<%-- 
    Document   : process-add
    Created on : 12 6, 18, 5:03:57 PM
    Author     : User
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@page import="java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Processing...</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <%
            //out.println(I.toString());
            Laboratory Leiss = Laboratory.getInstance();

            String DEF_ITEM_STATE = "Normal";

            DateFormat DF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String item_serial_no = request.getParameter("serialno");
            String item_name = request.getParameter("itemname");
            String item_state = request.getParameter("itemstate");
            String item_date_added = DF.format(new Date());

            Item I = new Item(item_serial_no, item_name, item_date_added);

            if (I.serialAndNameIsEmpty() == false) {

                for (Item_State IS : Leiss.getLab_list().getItem_states()) {
                    if (item_state.equals(IS.showClassName())) {
                        I.setItem_state(Leiss.getItemStateFactory().giveItem_State(Leiss.getLab_list(), IS.showState()));

                        if (DEF_ITEM_STATE != IS.showState()) {
                            I.setItem_date_special(item_date_added);
                        }

                        /*ADD TO LOG*/
                        String log_date = item_date_added;
                        String log_name = "Item added";
                        String log_description = "[" + item_serial_no + "] Item added";

                        Leiss.getLab_log().add(new Log(log_date, log_name, log_description));

                        break;
                    }
                }

                /*Add item to Laboratory List*/
                Leiss.getLab_list().getLab_items().add(I);
            }

            response.sendRedirect("equipments-all.jsp");
        %>
    </body>
</html>
