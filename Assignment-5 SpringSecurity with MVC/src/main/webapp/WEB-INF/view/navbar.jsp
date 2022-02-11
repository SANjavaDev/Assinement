<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />

</head>
<body>



	<header>
		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-light bg-secondary fixed-top">
			<div class="container-fluid">
				<button class="navbar-toggler " type="button"
					data-mdb-toggle="collapse" data-mdb-target="#navbarExample01"
					aria-controls="navbarExample01" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarExample01">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
						<li class="nav-item active"><a
							class="nav-link text-light btn" aria-current="page" href="#">DashBord</a></li>
						<li class="nav-item"><a class="nav-link text-light btn"
							href="./addUser">add Employee Details</a></li>
						<li class="nav-item"><a class="nav-link text-light btn"
							href="./seeById">See By EmployeeID</a></li>
						<li class="nav-item"><a class="nav-link text-light btn"
							href="./seeAll">See All EmployeeDetails</a></li>
						<li class="nav-item"><a class="nav-link text-light btn"
							href="/deleteData">Delete EmployeeRecord</a></li>

						<li class="nav-item"><a class="nav-link text-light btn"
							href="./logout">CheckOut</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Navbar -->


	</header>
	Home Features Pricing About




	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>