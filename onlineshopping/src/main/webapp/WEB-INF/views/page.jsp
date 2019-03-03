<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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

    <!-- Bootstrap core CSS -->
    <link href="${css}/boot_strap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
<!-- navigation -->

<%@ include file="./shared/navbar.jsp" %>
    <!-- home -->
    
    <c:if test="${userClickHome==true}">
    <%@ include file="home.jsp" %>
    </c:if>
    
    <!-- About -->
    <c:if test="${userClickAbout==true}">
    <%@ include file="about.jsp" %>
    </c:if>
    
    <!-- Contact -->
    <c:if test="${userClickContact==true}">
    <%@ include file="contact.jsp" %>
    </c:if>
<!-- footer -->

<%@ include file="./shared/footer.jsp" %>
    <!-- /.container -->

    <!-- JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/boot_strap.js"></script>

</body>

</html>
