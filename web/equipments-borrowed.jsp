<html>
    <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="model.*"%>
    <%
        Laboratory Leiss = Laboratory.getInstance();
    %>
    <head>
        <title>Borrowed Equipments</title>
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
                                <li role="presentation"><a href="equipments-all.jsp">All Equipments</a></li>
                                <li role="presentation"><a href="equipments-normal.jsp">Normal Equipments</a></li>
                                <li role="presentation"><a class="selected" href="equipments-borrowed.jsp">Borrowed Equipments</a></li>
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
                                    <th style='color: whitesmoke;'>Symbol</th>
                                    <th style='color: whitesmoke;'>Action</th>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-ban-circle" style='color: whitesmoke;'></span></td>
                                    <td style='color: whitesmoke;'>Mark as Damaged</td>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-ok-circle" style='color: whitesmoke;'></span></td>
                                    <td style='color: whitesmoke;'>Mark as Returned</td>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-record" style='color: whitesmoke;'></span></td>
                                    <td style='color: whitesmoke;'>Mark as Normal</td>
                                </tr>
                                <tr>
                                    <td><span class="glyphicon glyphicon-bold" style='color: whitesmoke;'></span></td>
                                    <td style='color: whitesmoke;'>Borrow Equipment</td>
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
                        </div>
                        <div class='col-lg-1' style="background-color: #131419; height: 60px; text-align: left; padding-left: 0px;">
                          
                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-lg-12 equip'>
                            <div class="panel panel-info">
                                <div class="panel-heading">Borrowed Equipment</div>
                                <div class="panel-body">
                                    <table class='table table-striped table-hover' id='displayTable'>
                                        <thead>
                                            <tr>
                                                <th>Serial No.</th>
                                                <th>Name</th>
                                                <th>Date Added</th>
                                                <th>Name of Student</th>
                                                <th>Date Borrowed</th>
                                                <th>Options</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <!-- DATA -->
                                        <%
                                            for (Item data_item : Leiss.getLab_list().getLab_items()) {
                                                if (data_item.getItem_state().showState().equals("Borrowed")) {
                                                    out.println("<tr>");
                                                    out.println("<td>" + data_item.getItem_serial_no() + "</td>");
                                                    out.println("<td>" + data_item.getItem_name() + "</td>");
                                                    out.println("<td>" + data_item.getItem_date_added() + "</td>");
                                                    out.println("<td>" + data_item.getItem_stud().getStud_name() + "</td>");
                                                    out.println("<td>" + data_item.getItem_date_special() + "</td>");
                                                    out.println("<td>"
                                                                    + "<button type='button' class='btn btn-success btn-sm transbtn subButt' title='Mark as Normal' data-toggle='modal' data-target='#normalConfirmation'><span class='glyphicon glyphicon glyphicon-record' style='color: black;'></span></button>"
                                                                    + "<button type='button' class='btn btn-danger btn-sm transbtn subButt' title='Mark as Damaged' data-toggle='modal' data-target='#damagedConfirmation'><span class='glyphicon glyphicon glyphicon-ban-circle' style='color: black;'></span></button>"
                                                                        
                                                                        + "<div id='normalConfirmation' class='modal fade' role='dialog'>"
                                                                        + "<div class='modal-dialog'> "
                                                                            + "<div class='modal-content'>"

                                                                                + "<div class='modal-header'>"
                                                                                + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                                                + "<h4 class='modal-title' style='color: black;'>Mark as Normal : Are you sure?</h4>"
                                                                                + "</div>"

                                                                                + "<div class='modal-body'>"
                                                                                    + "<form action='process-borrowed.jsp' method='POST'>"//FORM HERE
                                                                                        + "<input type='hidden' class='form-control bdserial' name='serial_normal'>" 
                                                                                        + "<input type='hidden' name='process_type' value='normal'>"
                                                                                            + "<span class='boldify'>Equipment Serial</span>: <span class='serialT'></span><br>"
                                                                                            + "<span class='boldify'>Equipment Name</span>: <span class='nameT'></span><br>"
                                                                                        + "<button type='submit' class='btn btn-success pull-right'>Yes</button>"
                                                                                        + "<br><br>"
                                                                                    + "</form>"
                                                                                + "</div>"

                                                                            + "</div>"
                                                                        + "</div>"
                                                                        + "</div>"
                                                    
                                                                        + "<div id='damagedConfirmation' class='modal fade' role='dialog'>"
                                                                        + "<div class='modal-dialog'> "
                                                                            + "<div class='modal-content'>"

                                                                                + "<div class='modal-header'>"
                                                                                + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                                                + "<h4 class='modal-title' style='color: black;'>Mark as Damaged : Are you sure?</h4>"
                                                                                + "</div>"

                                                                                + "<div class='modal-body'>"
                                                                                    + "<form action='process-borrowed.jsp' method='POST'>"//FORM HERE
                                                                                        + "<input type='hidden' class='form-control bdserial' name='serial_damaged'>" 
                                                                                        + "<input type='hidden' class='form-control' name='person_name' id='pname'>" 
                                                                                        + "<input type='hidden' name='process_type' value='damaged'>"
                                                                                            + "<span class='boldify'>Student's Name</span>: <span id='pnameT'></span><br>"
                                                                                            + "<span class='boldify'>Equipment Serial</span>: <span class='serialT'></span><br>"
                                                                                            + "<span class='boldify'>Equipment Name</span>: <span class='nameT'></span><br>"
                                                                                        + "<button type='submit' class='btn btn-success pull-right'>Yes</button>"
                                                                                        + "<br><br>"
                                                                                    + "</form>"
                                                                                + "</div>"

                                                                            + "</div>"
                                                                        + "</div>"
                                                                        + "</div></td>");
                                                    
                                                    
                                                    
                                                    out.println("</tr>");
                                                }
                                            }
                                        %>
                                        </tbody>
                                        <tfoot>
                                            <tr></tr>
                                        </tfoot>
                                    </table>
                                </div>
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
        
        var table = $('#displayTable').DataTable();
        
        $('#displayTable tbody').on( 'click', '.subButt', function () {
            
            var data = table.row( $(this).parents('tr') ).data();
            
//            console.log(data[0]);
            
            var serialSelected = data[0];
            var nameSelected = data[1];
            var studNameSelected = data[3];
            
//            console.log(serialSelected);
//            console.log(nameSelected);
//            console.log(studNameSelected);
            
            $('.bdserial').val(serialSelected);

                //OF STUDENT
                $('#pname').val(studNameSelected);
                $('#pnameT').text(studNameSelected);

                //OF EQUIPMENT
                $('.serialT').text(serialSelected);
                $('.nameT').text(nameSelected);
                
        });
        
    });
</script>