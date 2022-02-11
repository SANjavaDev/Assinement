<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
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
		<!-- Intro settings -->
		<style>
/* Default height for small devices */
#intro-example {
	height: 800px;
}

/* Height for devices larger than 992px */
@media ( min-width : 992px) {
	#intro-example {
		height: 600px;
	}
}
</style>
		<h1>Employee Details Application</h1>

		<!-- Background image -->
		<div id="intro-example" class="p-5 text-center bg-image"
			style="background-image: url('https://mdbcdn.b-cdn.net/img/new/slides/041.webp');">
			<div class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
				<div class="d-flex justify-content-center align-items-center h-100">
					<div class="text-white">
						<h1 class="mb-3">Welcome To Home Page</h1>
						<h5 class="mb-4">Proceed to Login.</h5>
						<a class="btn btn-outline-light btn-lg m-2" href="./login"
							role="button" rel="nofollow" target="_blank">Login</a> <a
							class="btn btn-outline-light btn-lg m-2" href="SignUp"
							target="_blank" role="button">SignUp</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Background image -->
	</header>



	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>