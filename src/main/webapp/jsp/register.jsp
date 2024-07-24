<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="../include/head.jsp" %>

<link rel="stylesheet" type="text/css" href="../css/styles.css">

</head>
<body>

	<div class="container">

		<div class="card w-50 mx-auto my-5">

			<div class="card-header text-center">Registration</div>
			<div class="card-body">

				<form action="register" method="post">
				
				<div class="form-group">

						<label>Username</label> <input 
							class="form-control" name="username" placeholder="Enter Username"
							required>


					</div>

					<div class="form-group">

						<label>Email address</label> <input type="email"
							class="form-control" name="email" placeholder="Enter Email"
							required>


					</div>

					<div class="form-group">

						<label>Password</label> <input type="password"
							class="form-control" name="password"
							placeholder="Enter Password" required>


					</div>

					<div class="text-center">

						 <button type="submit" class="btn btn-primary">Register</button>
					</div>

				</form>
			</div>
				<div class="card-footer text-center">
				<p>Already have an account? <a href="login.jsp">Login here</a></p>
			</div>

		</div>
	</div>

</body>
</html>