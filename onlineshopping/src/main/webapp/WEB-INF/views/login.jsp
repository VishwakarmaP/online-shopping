<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- Bootstrap readable theme  -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Online
						Shopping</a>
				</div>
			</div>
		</nav>
		<!-- home -->
		<div class="content">

			<div class="container">
				<%--this is display only if credential are wrong --%>
				<c:if test="${not empty message}">
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="alert alert-danger">${message}</div>
						</div>
					</div>
				</c:if>
				
				<%--this is display only if user has logged out --%>
				<c:if test="${not empty logout}">
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="alert alert-success">${logout}</div>
						</div>
					</div>
				</c:if>
				
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4>Login</h4>
							</div>
							<div class="panel-body">
								<form action="${contextRoot}/login" method="POST" class="form-horizontal" id="loginForm">
									<div class="form-group">
										<label class="control-label col-md-4" for="username">Email:	</label>
										<div class="col-md-8">
											<input name="username" type="text" class="form-control" placeholder="User Name" id="username" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4" for="password">Password: </label>
										<div class="col-md-8">
											<input name="password" type="password" class="form-control" placeholder="Password" id="password" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-8 col-md-offset-4">
											<input type="submit" class="btn btn-primary" value="Login" />
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										</div>
									</div>
								</form>
							</div>
							<div class="panel-footer">
								<div class="text-right">
									New User = <a href="${contextRoot}/register">Register Here</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>

		<!-- footer -->
		<%@ include file="./shared/footer.jsp"%>

		<!-- JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/jquery.validate.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/myapp.js"></script>
	</div>
</body>
</html>
