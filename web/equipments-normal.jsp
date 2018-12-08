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
                            <!-- FORMER SEARCH BAR WAS HERE -->
                        </div>
                        <div class='col-lg-1' style="background-color: #131419; height: 60px; text-align: left; padding-left: 0px;">

                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-lg-12 equip'>
                            <div class="panel panel-success">
                                <div class="panel-heading">Normal Equipment</div>
                                <div class="panel-body ">
                                    <table class='table table-striped table-hover' style="width:100%" id='displayTable'>
                                        <thead>    
                                            <tr>
                                                <th>Serial No.</th>
                                                <th>Name</th>
                                                <th>Date Added</th>
                                                <th>Options</th>
                                            </tr>
                                        </thead>
                                        <!-- DATA -->
                                        <tbody>
                                        <%
                                            for (Item data_item : Leiss.getLab_list().getLab_items()) {
                                                if (data_item.getItem_state().showState().equals("Normal")) {
                                                    out.println("<tr>");
                                                    out.println("<td>" + data_item.getItem_serial_no() + "</td>");
                                                    out.println("<td>" + data_item.getItem_name() + "</td>");
                                                    out.println("<td>" + data_item.getItem_date_added() + "</td>");
                                                    out.println("<td><button type='button' class='btn btn-success btn-sm transbtn' title='Borrow Item' data-toggle='modal' data-target='#borrowEquipment'><span class='glyphicon glyphicon glyphicon-bold' style='color: black;'></span></button><button type='button' class='btn btn-danger btn-sm transbtn' title='Mark as Damaged' data-toggle='modal' data-target='#damageEquipment'><span class='glyphicon glyphicon-ban-circle' style='color: black;'></span></button></td>"
//                                                            
                                                            /**BORROW FORM**/
                                                                + "<div id='borrowEquipment' class='modal fade' role='dialog'>"
                                                                    + "<div class='modal-dialog'> "
                                                                        + "<div class='modal-content'>"
                                                            
                                                                            + "<div class='modal-header'>"
                                                                            + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                                            + "<h4 class='modal-title' style='color: black;'>New Borrow Equipment</h4>"
                                                                            + "</div>"
                                                                                    
                                                                            + "<div class='modal-body'>"
                                                                                + "<form>"//FORM HERE
                                                                                    + "<input type='hidden' name='process_type' value='borrowed'>"
                                                                                        + "<div class='form-group'>"
                                                                                        + "<label for='bname' style='color: black;'>Borrower's Name:</label><br>"
                                                                                        + "<input type='text' class='form-control' name='borrow_name' id='borrowName'>" //NAME
                                                                                        + "</div>"
                                                                                    + "<button type='button' class='btn btn-default pull-right' data-toggle='modal' data-target='#borrowEConfirm' data-dismiss='modal' id='fromBorrow'>Submit</button>"
                                                                                    + "<br><br>"
                                                                                + "</form>"
                                                                            + "</div>"
                                                                                            
                                                                        + "</div>"
                                                                    + "</div>"
                                                                + "</div>"
                                                                          
                                                            /**BORROW FORM MODAL**/
                                                                + "<div id='borrowEConfirm' class='modal fade' role='dialog'>"
                                                                    + "<div class='modal-dialog'> "
                                                                        + "<div class='modal-content'>"
                                                            
                                                                            + "<div class='modal-header'>"
                                                                            + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                                            + "<h4 class='modal-title' style='color: black;'>Borrow Equipment : Are you sure?</h4>"
                                                                            + "</div>"
                                                                                    
                                                                            + "<div class='modal-body'>"
                                                                                + "<form action='process-normal.jsp' method='POST'>"//FORM HERE
                                                                                    + "<input type='hidden' class='form-control' name='serial_borrow' id='bserial' value=''>" 
                                                                                    + "<input type='hidden' name='process_type' value='borrowed'>"
                                                                                        + "<span class='boldify'>Borrower's Name</span>: <span id='bName'></span><br>"
                                                                                        + "<span class='boldify'>Equipment Serial</span>: <span id='bSerialText'></span><br>"
                                                                                        + "<span class='boldify'>Equipment Name</span>: <span id='bNameText'></span><br>"
                                                                                        + "<input type='hidden' value='' id='bNameHidden' name='borrow_name'><br>"
                                                                                    + "<button type='submit' class='btn btn-success pull-right'>Yes</button>"
                                                                                    + "<br><br>"
                                                                                + "</form>"
                                                                            + "</div>"
                                                                                            
                                                                        + "</div>"
                                                                    + "</div>"
                                                                + "</div>"
//                                                           
                                                             /**DAMAGED FORM**/
                                                            + "<div id='damageEquipment' class='modal fade' role='dialog'>"
                                                                + "<div class='modal-dialog'> "
                                                                    + "<div class='modal-content'>"
                                                                        + "<div class='modal-header'>"
                                                                            + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                                            + "<h4 class='modal-title' style='color: black;'>Mark as Damaged Equipment</h4>"
                                                                        + "</div>"
                                                                                    
                                                                        + "<div class='modal-body'>"
                                                                            + "<form>"//FORM HERE
                                                                                + "<input type='hidden' name='process_type' value='damaged'>"
                                                                                    + "<div class='form-group'>"
                                                                                    + "<label for='dname' style='color: black;'>Person's Name:</label><br>"
                                                                                    + "<input type='text' class='form-control' name='damaged_name' id='damagedName'>" //NAME
                                                                                    + "</div>"
                                                                                + "<button type='button' class='btn btn-default pull-right' data-toggle='modal' data-target='#damageEConfirm' data-dismiss='modal' id='fromDamage'>Submit</button>"
                                                                                + "<br><br>"
                                                                            + "</form>"
                                                                        + "</div>"
                                                                                        
                                                                    + "</div>"
                                                                + "</div>"
                                                            + "</div>"
                                                            
                                                            /**DAMAGED FORM MODAL**/
                                                            + "<div id='damageEConfirm' class='modal fade' role='dialog'>"
                                                                + "<div class='modal-dialog'> "
                                                                    + "<div class='modal-content'>"
                                                                        + "<div class='modal-header'>"
                                                                            + "<button type='button' class='close' data-dismiss='modal'>&times;</button>"
                                                                            + "<h4 class='modal-title' style='color: black;'>Report Damaged Equipment : Are you sure?</h4>"
                                                                        + "</div>"
                                                                        + "<div class='modal-body'>"
                                                                            + "<form action='process-normal.jsp' method='POST'>"//FORM HERE
                                                                                + "<input type='hidden' class='form-control' name='serial_damaged' id='dserial'>"
                                                                                + "<input type='hidden' name='process_type' value='damaged'>"
                                                                                        + "<span class='boldify'>Student's Name</span>: <span id='dName'>  </span><br>"
                                                                                        + "<span class='boldify'>Equipment Serial</span>: <span id='dSerialText'></span><br>"
                                                                                        + "<span class='boldify'>Equipment Name</span>: <span id='dNameText'></span><br>"
                                                                                + "<input type='hidden' value='' id='dNameHidden' name='damaged_name'><br>"                                                                     
                                                                            + "<button type='submit' class='btn btn-default pull-right'>Yes</button>"
                                                                            + "<br><br>"
                                                                            + "</form>"
                                                                        + "</div>"
                                                                    + "</div>"
                                                                + "</div>"
                                                            + "</div>"
//                                                       
                                                    );
                                                    out.println("</tr>");
                                                }
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
<script src="DataTables/datatables.min.js"></script>

<script>
    $(document).ready(function () {
        
        $('#displayTable').DataTable();
        
        var table = $('#displayTable').DataTable();
        
        $('#displayTable tbody').on( 'click', 'button', function () {
            var data = table.row( $(this).parents('tr') ).data();
//            console.log(data[0]);
            
            var serialSelected = data[0];
            var nameSelected = data[1];
            
            $('#bserial').val(serialSelected);
            $('#dserial').val(serialSelected);
            
                $('#fromBorrow').click(function(){
                    
                    //OF STUDENT
                    var bname = $('#borrowName').val();
                    $('#bName').text(bname);
                    $('#bNameHidden').val(bname);

                    //OF EQUIPMENT
                    $('#bSerialText').text(serialSelected);
                    $('#bNameText').text(nameSelected);
                    
//                    console.log(bname);
//                    console.log($('#bserial').val());
                });
        
                $('#fromDamage').click(function(){
                    
                    //OF STUDENT
                    var dname = $('#damagedName').val();
                    $('#dName').text(dname);
                    $('#dNameHidden').val(dname);
                    
                    //OF EQUIPMENT
                    $('#dSerialText').text(serialSelected);
                    $('#dNameText').text(nameSelected);

//                    console.log(dname);
//                    console.log($('#dserial').val());
                });
            
        });
        
    });
                  
    
</script>