<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="bootstrap_link.jsp"></jsp:include>
<body>
<jsp:include page="menu.jsp"></jsp:include>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-6">
			<img alt="sorry..." class="img img-thumbnail" src="images/bus4.png">
		</div>
		<div class="col-sm-6">
			<h3>User Registration</h3>
			<form action="saveuser" method="post">
				<div class="mb-4">
					<input type="text" class="form-control" name="name" placeholder="Full Name" required>
				</div>
				<div class="mb-4">
					<input type="email" class="form-control" name="email" placeholder="Email" required>
				</div>
				<div class="mb-4">
					<input type="password" class="form-control" name="password" placeholder="Password" required>
				</div>
				<div class="mb-4">
					<select name="role" class="form-control" required>
						<option value="USER" selected>User</option>
						<option value="ADMIN">Admin</option>
					</select>
				</div>
				<div class="mb-4">
					<button type="submit" class="btn btn-primary">Register</button>
					<button type="reset" class="btn btn-danger">Reset</button>
				</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>
