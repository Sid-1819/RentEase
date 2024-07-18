<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="include/head.jsp" %>

<link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>

	<div class="container">

		<div class="card w-50 mx-auto my-5">

			<div class="card-header text-center">Login</div>
			<div class="card-body">

				<form action="" method="post">

					<div class="form-group">

						<label>Email address</label> <input type="email"
							class="form-control" name="login-email" placeholder="Enter Email"
							required>


					</div>

					<div class="form-group">

						<label>Password</label> <input type="password"
							class="form-control" name="login-password"
							placeholder="Enter Password" required>


					</div>

					<div class="text-center">

						<button type="submit" class="btn btn primary" href="index.jsp">Login</button>
					</div>

				</form>
			</div>

		</div>
	</div>

</body>
</html>