<html>
    <%@page import="model.*"%>
    <%
        Laboratory Leiss = Laboratory.getInstance();
    %>
    <head>
        <title>Borrowed Equipments</title>
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
                        <div class='col-lg-12' style='text-align: center;'><span style='color: #898989'>Lab Technician</span> : <span style='color: whitesmoke'>Tom Holland</span></div>
                    </div>

                    <hr>

                    <div class='row'>
                        <div class='col-lg-12' style='padding: 5px;'>
                            <ul class="nav nav-pills nav-stacked sidemenuul" >
                                <li role="presentation"><a href="dashboard.jsp">Dashboard</a></li>
                                <li role="presentation"><a href="equipments-all.jsp">All Equipments</a></li>
                                <li role="presentation"><a href="equipments-normal.jsp">Normal Equipments</a></li>
                                <li role="presentation"><a class="selected" href="equipments-borrowed.jsp">Borrowed Equipments</a></li>
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
                            <form class="navbar-form">
                                <div class="form-group">
                                    <input type="text" class="form-control"  id='searchbar' placeholder="Search">
                                </div>
                                <button type="submit" class="btn btn-default btn-lg transbtn" title='Search'><span class="glyphicon glyphicon-search" aria-hidden="true" style='color: whitesmoke;'></span></button>
                            </form>
                        </div>
                        <div class='col-lg-1' style="background-color: #131419; height: 60px; text-align: left; padding-left: 0px;">
                            <form class="navbar-form">

                                <!-- MODAL TRIGGER BUTTON -->
                                <button type="button" class="btn btn-default btn-lg transbtn" title='Borrow Equipment' data-toggle="modal" data-target="#borrowEquipment"><span class="glyphicon glyphicon-bold" style='color: whitesmoke;'></span></button>

                                <!-- Modal -->
                                <div id="borrowEquipment" class="modal fade" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">New Borrowed Equipment</h4>
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
                                                        <label for="dateadded">Date of Borrowing:</label><br>
                                                        <input type="date" class="form-control" id="dateadded">
                                                    </div>
                                                    <br> <br>
                                                    <div class="form-group">
                                                        <label for="bname">Borrower's Name:</label><br>
                                                        <input type="text" class="form-control" id="bname">
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
                            <div class="panel panel-info">
                                <div class="panel-heading">Borrowed Equipment</div>
                                <div class="panel-body panelbodyequip">
                                    <table class='table'>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>Name</th>
                                            <th>Date Added</th>
                                            <th>Borrower's Name</th>
                                            <th>Date Borrowed</th>
                                            <th>Options</th>
                                        </tr>
                                        <!-- DATA -->
                                        <tr>
                                            <td>2983019</td>
                                            <td>Pyrex test tube - 20ml</td>
                                            <td>Mar 16 2017</td>
                                            <td>Brutasha Romanov</td>
                                            <td>Nov 16 2018</td>
                                            <td><button type="button" class="btn btn-success btn-sm transbtn" title='Returned'><span class="glyphicon glyphicon-ok-sign" style='color: whitesmoke;'></span></button><button type="button" class="btn btn-danger btn-sm transbtn" title='Mark as Damaged'><span class="glyphicon glyphicon-exclamation-sign" style='color: whitesmoke;'></span></button></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class='row'>
                    <div class='col-lg-12 equip'>
                        <div class="panel panel-info">
                            <div class="panel-heading">Borrowed Equipment</div>
                            <div class="panel-body panelbodyequip">
                                <table class='table'>
                                    <tr>
                                        <th>Serial No.</th>
                                        <th>Name</th>
                                        <th>Date Added</th>
                                        <th>Borrower's Name</th>
                                        <th>Date Borrowed</th>
                                        <th>Options</th>
                                    </tr>
                                    <tr>
                                        <td>2983019</td>
                                        <td>Pyrex test tube - 20ml</td>
                                        <td>Mar 16 2017</td>
                                        <td>Brutasha Romanov</td>
                                        <td>Nov 16 2018</td>
                                        <td><button type="button" class="btn btn-success btn-sm transbtn" title='Returned'><span class="glyphicon glyphicon-ok-sign" style='color: whitesmoke;'></span></button><button type="button" class="btn btn-danger btn-sm transbtn" title='Mark as Damaged'><span class="glyphicon glyphicon-exclamation-sign" style='color: whitesmoke;'></span></button></td>
                                    </tr>
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