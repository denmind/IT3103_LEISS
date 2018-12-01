
<html>
    <!--
            Singleton = Lab
            Strategy = Item states (NORMAL,BORRWOED, DAMAGED)
            Factory = Item creations
    -->
    <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="model.*"%>
    <%
        //LEISS Default Values
        int lab_id = 1;
        String lab_name = "LEISS";
        String lab_in_charge = request.getParameter("email");
        String username = lab_in_charge;
        String password = request.getParameter("password");

        Laboratory Leiss = new Laboratory(lab_id, lab_name, lab_in_charge, username, password);

        Leiss.getLab_uc().settleUC();
    %>
    <head>
        <title>LEISS</title>
        <meta charset="UTF-8">
        <link rel='stylesheet' href='bootstrap-3.3.7-dist/css/bootstrap.css'>
        <link rel='stylesheet' href='leiss.css'>
    </head>
    <body>
        <div class='container-fluid'>
            <div class='row'>
                <div class='col-lg-6 indexleft'>
                    <div class='row indexleftcenter'>
                        <img src="images/label.png" style='height: 200px'>
                        <!--                <h4>LEISS</h4><h8>Laboratory Equipment Inventory System</h8>-->
                    </div>
                </div>
                <div class='col-lg-6 indexright'>
                    <div class='row'>
                        <form role="form" action="login.jsp" method="POST" class="login-form" autocomplete="off">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">ID No.</label>
                                <input type="text" name="email" placeholder="ID No." class="form-username form-control" id="id">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="password" placeholder="Password" class="form-password form-control" id="pw">
                            </div>
                            <input type="hidden" name="instance" value="start">
                            <center><button type="submit" class="btn" style='color: white; background-color: #18181b;'>Log In</button></center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<script src="bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script>


</script>