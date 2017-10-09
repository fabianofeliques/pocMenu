<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="br.com.projCardapio.model.Cardapio"%>
<%@ page import="br.com.projCardapio.db.CardapioDB"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Lunch Menu Application</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/dataTables.bootstrap.min.css" rel="stylesheet"
	type="text/css">

<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="index.html">
                        Menu
                    </a>
                </li>
                <li>
                    <a href="Insert.jsp">Insert data</a>
                </li>
                <li>
                    <a href="Update.jsp">Update data</a>
                </li>
                <li>
                    <a href="Show.jsp">Show data</a>
                </li>
                <li>
                    <a href="Delete.jsp">Delete data</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Lunch Menu Application</h1>
                        <p>Welcome to the show data page.</p>
                        <p>You will find the lunch data below</p>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Menu</a>
                        <br>
                        <br>
		<table id="example" width="100%"
		class="table table-striped table-bordered" cellspacing="100%">

		<thead>
			<tr>
				<th>ID</th>
				<th>Date</th>
				<th>Lunch</th>
				<th>Option A</th>
				<th>Option B</th>
				<th>Dessert A</th>
				<th>Dessert B</th>
				<th>Drink</th>
			</tr>
		</thead>
		<tbody>
			<jsp:useBean id="dados" class="br.com.projCardapio.db.CardapioDB"></jsp:useBean>

			<c:forEach var="cardapio" items="${dados.lista}">
				<tr>
					<td>${cardapio.id}</td>
					<td>${cardapio.data}</td>
					<td>${cardapio.descPrato}</td>
					<td>${cardapio.descCarneA}</td>
					<td>${cardapio.descCarneB}</td>
					<td>${cardapio.descSaladaA}</td>
					<td>${cardapio.descSaladaB}</td>
					<td>${cardapio.descSuco}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
	
</script>
</html>
