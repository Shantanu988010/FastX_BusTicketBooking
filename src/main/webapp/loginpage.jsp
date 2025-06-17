<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="bootstrap_link.jsp"></jsp:include>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container-fluid">
			
			<div class="row">
					<div class="col-sm-6">
						<img alt="sorry..." class="img img-thumbnail" src="images/bus3.png">
					</div>
					<div class="col-sm-6">
						<h3>Login Page</h3>
						<form action="logincheck"  method="post" >
							<div class="mb-4">
								<input type="email" value ="${register.getEmail()}" class="form-control" name="email" placeholder="Email:" required >
							</div>
							<div class="mb-4">
								<input type="password" value ="${register.getPassword()}" class="form-control" name="password" placeholder="Password:"  required>
							</div>
							<div class="mb-4">
								<button type="submit" class="btn btn-primary">Login</button>
								<button type="reset" class="btn btn-danger" >Reset</button>
							</div>
							<div>
								${msg}
							</div>
					
						</form>
					</div>
			</div>
			
		</div>




</body>
</html>