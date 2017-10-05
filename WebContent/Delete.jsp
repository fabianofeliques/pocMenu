<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Programmer's Lunch Menu Application</title>
 
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
                      	<h1>Programmer's Lunch Menu Application</h1>
                        <p>Welcome to the delete data page.</p>
                        <p>Fill in the field below with the ID of the lunch you want to delete.</p>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Menu</a>
                        <br>
                        <br>

			<div class="form-group">
				<label for="nome">Lunch ID</label> <input type="text"
					class="form-control" id="id" placeholder="ID" name="id">
			</div>
		<button class="btn btn-default" onclick="buscar()">Search</button>
		<button class="btn btn-default" onclick="voltar()">Back</button>		
			
			
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
    function buscar(){
    	    var id = document.getElementById('id').value
    		location.href = "DeleteConfirm.jsp?id="+id;	
    }
    function voltar(){
    	
    	window.location='Delete.jsp';
    } 
    </script>

</body>

</html>
