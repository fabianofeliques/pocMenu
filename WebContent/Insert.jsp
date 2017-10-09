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
                        <p>Welcome to the insert data page.</p>
                        <p>Fill in the fields below to insert a new Lunch.</p>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Menu</a>
                        <br>
                        <br>
            <form action="servInserir" method="post">
			<div class="form-group">
				<label for="nome">Date</label> <input type="date" min="2017-10-04"
					class="form-control" id="data" placeholder="Date" name="data">
			</div>
			<div class="form-group">
				<label for="descPrato">Lunch</label> <input type="text"
					class="form-control" id="descPrato" placeholder="Description" name="descPrato">
			</div>
			<div class="form-group">
				<label for="descCarneA">Option A</label> <input type="text"
					class="form-control" id="descCarneA" placeholder="Description" name="descCarneA">
			</div>
			<div class="form-group">
				<label for="descCarneB">Option B</label> <input type="text"
					class="form-control" id="descCarneb" placeholder="Description" name="descCarneB">
			</div>
			<div class="form-group">
				<label for="descSaladaA">Dessert A</label> <input type="text"
					class="form-control" id="descSaladaA" placeholder="Description" name="descSaladaA">
			</div>			
			<div class="form-group">
				<label for="descSaladaB">Dessert B</label> <input type="text"
					class="form-control" id="descSaladaB" placeholder="Description" name="descSaladaB">
			</div>			
			<div class="form-group">
				<label for="suco">Drink</label> <input type="text"
					class="form-control" id="descSuco" placeholder="Description" name="descSuco">
			</div>	
			<button type="submit" class="btn btn-default">Save</button>
			<button type="reset" class="btn btn-default">Reset</button>		
			
			
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

</html>
