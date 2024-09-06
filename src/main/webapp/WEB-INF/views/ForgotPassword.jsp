<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Forgot Password | Enomy Finance</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Logincss.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body style="background: url('<%= request.getContextPath() %>/img/registerbg1.png') center center/cover no-repeat; ">
    <form id="forgotPasswordForm" action="${pageContext.request.contextPath}/ForgotPasswordServlet" method="post">
        <h2>Forgot Password</h2>
        <div class="form-group email">
            <label for="email">Email Address</label>
            <input type="text" id="email" name="email" placeholder="Enter your email address" required>
        </div>
        
         <div class="form-group password">
        	<label for="password">New Password</label>
        	<input type="password" id="password" name="password" placeholder="Enter your new password" required>
        	<i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
      	</div>

        <div class="form-group submit-btn">
            <input type="submit" value="Submit">
        </div>
        
        <a href="${pageContext.request.contextPath}/LoginPage.jsp" class="btn">Go Back</a>
    </form>
</body>
</html>
