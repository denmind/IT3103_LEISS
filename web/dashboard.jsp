<html>
    <%@page import="model.*"%>
    <%
        Laboratory Leiss = Laboratory.getInstance();
    %>
    <head>
        <title>Dashboard</title>
        <link rel='stylesheet' href='bootstrap-3.3.7-dist/css/bootstrap.css'>
        <link rel='stylesheet' href='bootstrap-3.3.7-dist/fonts/glyphicons-halflings-regular.ttf'>
        <link rel='stylesheet' href='leiss.css'>
    </head>
    <body>
        <div class='container-fluid'>
            <div class='row'>
                <!--        SIDE MENU        -->
                <div class='col-lg-2 sidemenu'>
                    <div class='row'>
                        <div class='col-lg-12' style='text-align: center'><br><img src='images/tinylabel.png' style='height: 30px'></div>
                    </div>

                    <hr>

                    <div class='row'>
                        <div class='col-lg-12' style='text-align: center;'><span style='color: #898989'>Lab Technician</span> : <span style='color: whitesmoke'><%= Leiss.getLab_uc().getUsername()%></span></div>
                    </div>

                    <hr>

                    <div class='row'>
                        <div class='col-lg-12' style='padding: 5px;'>
                            <ul class="nav nav-pills nav-stacked sidemenuul" >
                                <li role="presentation"><a class="selected" href="dashboard.jsp">Dashboard</a></li>
                                <li role="presentation"><a href="equipments-all.jsp">All Equipments</a></li>
                                <li role="presentation"><a href="equipments-normal.jsp">Normal Equipments</a></li>
                                <li role="presentation"><a href="equipments-borrowed.jsp">Borrowed Equipments</a></li>
                                <li role="presentation"><a href="equipments-damaged.jsp">Damaged Equipments</a></li>
                                <li role="presentation"><a href="login.jsp">Log</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class='col-lg-10 dash'>
                    <div class='row dashrow'>
                        <!-- NORMAL -->
                        <div class='col-lg-4'>
                            <div class="panel panel-success">
                                <div class="panel-heading">Normal Equipment</div>
                                <div class="panel-body panelbodydash">
                                    <table class='table'>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>Name</th>
                                        </tr>
                                        <!-- DATA -->
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- BORROWED -->
                        <div class='col-lg-4'>
                            <div class="panel panel-info">
                                <div class="panel-heading">Borrowed Equipment</div>
                                <div class="panel-body panelbodydash">
                                    <table class='table'>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>Name</th>
                                            <th>Date Borrowed</th>
                                        </tr>
                                        <!-- DATA -->
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- DAMAGED -->
                        <div class='col-lg-4'>
                            <div class="panel panel-warning">
                                <div class="panel-heading">Damaged Equipment</div>
                                <div class="panel-body panelbodydash">
                                    <table class='table'>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>Name</th>
                                            <th>Date Damaged</th>
                                        </tr>
                                        <!-- DATA -->
                                    </table>
                                </div>
                            </div>
                        </div>

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