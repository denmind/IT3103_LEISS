<html>
    <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="model.*"%>
    <%
        Laboratory Leiss = Laboratory.getInstance();
    %>
    <head>
        <title>Normal Equipments</title>
        <meta charset="UTF-8">
        <link rel='stylesheet' href='bootstrap-3.3.7-dist/css/bootstrap.css'>
        <link rel="stylesheet" href="DataTables/datatables.css" >
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
                                <li role="presentation"><a href="equipments-all.jsp">All Equipments</a></li>
                                <li role="presentation"><a class="selected" href="equipments-normal.jsp">Normal Equipments</a></li>
                                <li role="presentation"><a href="equipments-borrowed.jsp">Borrowed Equipments</a></li>
                                <li role="presentation"><a href="equipments-damaged.jsp">Damaged Equipments</a></li>
                                <li role="presentation"><a href="login.jsp">Log</a></li>
                            </ul>
                        </div>
                    </div>

                    <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
                    <div class="row">
                        <div class="col-lg-12" style="padding: 10px;">
                            <table class='table'>
                                <tr>
                                    <th>Symbol</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-ban-circle" style='color: whitesmoke;'></span></td>
                                    <td>Mark as Damaged</td>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-ok-circle" style='color: whitesmoke;'></span></td>
                                    <td>Mark as Returned</td>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-record" style='color: whitesmoke;'></span></td>
                                    <td>Mark as Normal</td>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-bold" style='color: whitesmoke;'></span></td>
                                    <td>Borrow Equipment</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->


                </div>

                <div class='col-lg-10 dash'>
                    <div class='row'>
                        <div class='col-lg-8' style="background-color: #131419; height: 60px;"></div>
                        <div class='col-lg-3' style="background-color: #131419; height: 60px; text-align: right; padding-right: 0px;">
                            <form class="navbar-form">
                                <div class="form-group">
                                    <input type="text" class="form-control"  id='searchbar' placeholder="Search">
                                </div>
                                <button type="submit" class="btn btn-default btn-lg transbtn" title='Search'><span class="glyphicon glyphicon-search" aria-hidden="true" style='color: whitesmoke;'></span></button>
                            </form>
                        </div>
                        <div class='col-lg-1' style="background-color: #131419; height: 60px; text-align: left; padding-left: 0px;">

                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-lg-12 equip'>
                            <div class="panel panel-success">
                                <div class="panel-heading">Normal Equipment</div>
                                <div class="panel-body panelbodyequip">
                                    <table class='table' id='displayTable'>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>Name</th>
                                            <th>Date Added</th>
                                            <th>Options</th>
                                        </tr>
                                        <!-- DATA -->
                                        <%
                                            for (Item data_item : Leiss.getLab_list().getLab_items()) {
                                                if (data_item.getItem_state().showState().equals("Normal")) {
                                                    out.println("<tr>");
                                                    out.println("<td>" + data_item.getItem_serial_no() + "</td>");
                                                    out.println("<td>" + data_item.getItem_name() + "</td>");
                                                    out.println("<td>" + data_item.getItem_date_added() + "</td>");
                                                    out.println("<td><button type='button' class='btn btn-success btn-sm transbtn' title='Borrow Item' data-toggle='modal' data-target='#borrowEquipment'><span class='glyphicon glyphicon glyphicon-bold' style='color: whitesmoke;'></span></button><button type='button' class='btn btn-danger btn-sm transbtn' title='Mark as Damaged' data-toggle='modal' data-target='#damageEquipment'><span class='glyphicon glyphicon-ban-circle' style='color: whitesmoke;'></span></button></td>"
                                                            + "<form class='navbar-form'>"
                                                            + "<div id='borrowEquipment' class='modal fade' role='dialog'>"
                                                            + "<div class='modal-dialog'> "
                                                            + "<div class='modal-content'>"
                                                            + "<div class='modal-header'>"
                                                            + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                            + "<h4 class='modal-title' style='color: black;'>" + data_item.getItem_serial_no() + "\t" + data_item.getItem_name() + "</h4>"
                                                            + "</div>"
                                                            + "<div class='modal-body'>"
                                                            + "<form action='process-normal.jsp' method='POST'>"//FORM HERE
                                                            + "<input type='hidden' class='form-control' name='serial_borrow' value=' " + data_item.getItem_serial_no() + " '>" /**
                                                             * * INPUT TYPE
                                                             * HIDDEN **
                                                             */
                                                            + "<input type='hidden' name='process_type' value='borrowed'>"
                                                            + "<div class='form-group'>"
                                                            + "<label for='bname' style='color: black;'>Borrower's Name:</label><br>"
                                                            + "<input type='text' class='form-control' id='name'>" //NAME
                                                            + "</div>"
                                                            + "<button type='submit' class='btn btn-default pull-right'>Submit</button>"
                                                            + "<br><br>"
                                                            + "</form>"
                                                            + "</div></div></div></div></form>"
                                                            + "<form class='navbar-form'>"
                                                            + "<div id='damageEquipment' class='modal fade' role='dialog'>"
                                                            + "<div class='modal-dialog'> "
                                                            + "<div class='modal-content'>"
                                                            + "<div class='modal-header'>"
                                                            + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                            + "<h4 class='modal-title' style='color: black;'>" + data_item.getItem_serial_no() + "\t" + data_item.getItem_name() + "</h4>"
                                                            + "</div>"
                                                            + "<div class='modal-body'>"
                                                            + "<form action='process-normal.jsp' method='POST'>"//FORM HERE
                                                            + "<input type='hidden' class='form-control' name='serial_damaged' value=' " + data_item.getItem_serial_no() + " '>" /**
                                                             * * INPUT TYPE
                                                             * HIDDEN **
                                                             */
                                                            + "<input type='hidden' name='process_type' value='damaged'>"
                                                            + "<div class='form-group'>"
                                                            + "<label for='dname' style='color: black;'>Person's Name:</label><br>"
                                                            + "<input type='text' class='form-control' id='name'>" //NAME
                                                            + "</div>"
                                                            + "<button type='submit' class='btn btn-default pull-right'>Submit</button>"
                                                            + "<br><br>"
                                                            + "</form>"
                                                            + "</div></div></div></div></form>"
                                                    );
                                                    out.println("</tr>");
                                                }
                                            }
                                        %>




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

<!--<script src="DataTables/datatables.js"></script>-->

<script>
    $(document).ready(function () {
        $('#displayTable').DataTable();
    });
</script>