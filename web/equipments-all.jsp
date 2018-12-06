<html>
    <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="model.*"%>
    <%
        Laboratory Leiss = Laboratory.getInstance();
    %>
    <head>
        <title>All Equipments</title>
        <meta charset="UTF-8">
        <link rel='stylesheet' href='bootstrap-3.3.7-dist/css/bootstrap.css'>
        <link rel="stylesheet" href="DataTables/datatables.css" >
        <link rel="stylesheet" href="DataTables/datatables.min.css" >
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
                        <div class='col-lg-12' style='text-align: center;'><span style='color: #898989'>Lab Technician : <%= Leiss.getLab_uc().showName()%></span></div>
                    </div>

                    <hr>

                    <div class='row'>
                        <div class='col-lg-12' style='padding: 5px;'>
                            <ul class="nav nav-pills nav-stacked sidemenuul" >
                                <li role="presentation"><a href="dashboard.jsp">Dashboard</a></li>
                                <li role="presentation"><a class="selected" href="equipments-all.jsp">All Equipments</a></li>
                                <li role="presentation"><a href="equipments-normal.jsp">Normal Equipments</a></li>
                                <li role="presentation"><a href="equipments-borrowed.jsp">Borrowed Equipments</a></li>
                                <li role="presentation"><a href="equipments-damaged.jsp">Damaged Equipments</a></li>
                                <li role="presentation"><a href="login.jsp">Log</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class='col-lg-10 dash'>
                    <div class='row'>
                        <div class='col-lg-8' style="background-color: #131419; height: 60px;"></div>
                        <div class='col-lg-3' style="background-color: #131419; height: 60px; text-align: right; padding-right: 0px;">

                        </div>
                        <div class='col-lg-1' style="background-color: #131419; height: 60px; text-align: left; padding-left: 0px;">
                            <form class="navbar-form">

                                <!-- MODAL TRIGGER BUTTON -->
                                <button type="button" class="btn btn-default btn-lg transbtn" title='Add New Equipment' data-toggle="modal" data-target="#addEquipment"><span class="glyphicon glyphicon-plus" style='color: whitesmoke;'></span></button>

                                <!-- Modal -->
                                <div id="addEquipment" class="modal fade" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Add New Equipment</h4>
                                            </div>

                                            <div class="modal-body">

                                                <form action="#">

                                                    <div class="form-group">
                                                        <label for="serial">Serial No.</label><br>
                                                        <input type="text" class="form-control" id="serial">
                                                    </div>
                                                    <br> <br>
                                                    <div class="form-group">
                                                        <label for="newname">Equipment Name:</label><br>
                                                        <input type="text" class="form-control" id="newname">
                                                    </div>
                                                    <br> <br>
                                                    <div class="form-group">
                                                        <label for="dateadded">Date Added:</label><br>
                                                        <input type="date" class="form-control" id="dateadded">
                                                    </div>
                                                    <br> <br>
                                                    <button type="submit" class="btn btn-default pull-right">Submit</button>

                                                    <br><br>
                                                </form>

                                            </div>

                                        </div>

                                    </div>
                                </div>


                            </form>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-lg-12 equip'>
                            <div class="panel panel-danger">
                                <div class="panel-heading">All Equipment</div>
                                <div class="panel-body">
                                    <table class='table table-striped table-hover' style="width:100%" id='displayTable'>
                                        <thead>
                                            <tr>
                                                <th>Serial No.</th>
                                                <th>Name</th>
                                                <th>Date Added</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>  
                                        <tbody>
                                        <!-- DATA -->
                                        <%
                                            for (Item data_item : Leiss.getLab_list().getLab_items()) {
                                                out.println("<tr>");
                                                out.println("<td>" + data_item.getItem_serial_no() + "</td>");
                                                out.println("<td>" + data_item.getItem_name() + "</td>");
                                                out.println("<td>" + data_item.getItem_date_added() + "</td>");
                                                out.println("<td>" + data_item.getItem_state().showState() + "</td>");
                                                out.println("</tr>");
                                            }
                                        %>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            </tr>
                                        </tfoot>
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
<script src="DataTables/datatables.js"></script>

<script>
    $(document).ready(function () {
        $('#displayTable').DataTable();
    });
</script>