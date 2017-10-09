<%@page import="java.io.PrintWriter"%>
<%@page import="br.com.projCardapio.db.CardapioDB"%>
<%@page import="br.com.projCardapio.model.Cardapio"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
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
						<p>Below you will find the data of the lunch you entered the ID. Fill in the fields below to update the lunch.</p>
						<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Menu</a>
						<br> <br>

					</div>
					<%
						int id = Integer.parseInt(request.getParameter("id"));
						Cardapio c = new Cardapio();
						c.setId(id);
						c = new CardapioDB().selectById(c);

						if (c == null) {
							PrintWriter p = response.getWriter();

							p.println("<html>");
							p.println("<body>");
							p.println("<script> alert('Invalid ID')</script>");
							p.println("<script>setTimeout(\"window.location='Delete.jsp'\", 50)</script>");
							p.println("</body>");
							p.println("</html>");
						} else {
					%>
					<table class="table">
						<tr class="success">
							<th>Id</th>
							<th>Date</th>
							<th>Lunch</th>
							<th>Option A</th>
							<th>Option B</th>
							<th>Dessert A</th>
							<th>Dessert B</th>
							<th>Drink</th>
						</tr>

						<tr>
							<td><%=c.getId()%></td>
							<td><%=c.getData()%></td>
							<td><%=c.getDescPrato()%></td>
							<td><%=c.getDescCarneA()%></td>
							<td><%=c.getDescCarneB()%></td>
							<td><%=c.getDescSaladaA()%></td>
							<td><%=c.getDescSaladaB()%></td>
							<td><%=c.getDescSuco()%></td>
					</table>
			<form action="servAlterar" method="post">
			<div style=display:none>
				<label for="nome"></label> <input type="id"
					class="form-control" id="id" value= "<%=c.getId()%>" name="id">
			</div>					
			<div class="form-group">
				<label for="nome">Date</label> <input type="date" min="2017-10-02"
					class="form-control" id="data" placeholder="<%=c.getData()%>" name="data">
			</div>
			<div class="form-group">
				<label for="descPrato">Lunch</label> <input type="text"
					class="form-control" id="descPrato" placeholder="<%=c.getDescPrato()%>" value= "<%=c.getDescPrato()%>"name="descPrato">
			</div>
			<div class="form-group">
				<label for="descCarneA">Option A</label> <input type="text"
					class="form-control" id="descCarneA" value="<%=c.getDescCarneA()%>" placeholder="<%=c.getDescCarneA()%>" name="descCarneA">
			</div>
			<div class="form-group">
				<label for="descCarneB">Option B</label> <input type="text"
					class="form-control" id="descCarneb" value="<%=c.getDescCarneB()%>" placeholder="<%=c.getDescCarneB()%>" name="descCarneB">
			</div>
			<div class="form-group">
				<label for="descSaladaA">Dessert A</label> <input type="text"
					class="form-control" id="descSaladaA" value="<%=c.getDescSaladaA()%>" placeholder="<%=c.getDescSaladaA()%>" name="descSaladaA">
			</div>			
			<div class="form-group">
				<label for="descSaladaB">Dessert B</label> <input type="text"
					class="form-control" id="descSaladaB" value="<%=c.getDescSaladaB()%>" placeholder="<%=c.getDescSaladaB()%>" name="descSaladaB">
			</div>			
			<div class="form-group">
				<label for="suco">Drink</label> <input type="text"
					class="form-control" id="descSuco" value="<%=c.getDescSuco()%>" placeholder="<%=c.getDescSuco()%>" name="descSuco">
			</div>	
			<button type="submit" class="btn btn-default">Update</button>
			<button type="reset" class="btn btn-default">Reset</button>	
			<button class="btn btn-default" onclick="voltar()">Back	</button>

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
		function excluir(id) {
			var ms = confirm("Do you confirm?")
			if (ms) {
				location.href = "servDelete?id="+id;
			}
		}
		function voltar() {

			window.location = 'Update.jsp';
		}
	</script>
</body>
<%
	}
%>
</html>
