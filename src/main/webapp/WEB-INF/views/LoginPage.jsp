<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | Enomy Finance</title>
<style> @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Open Sans', sans-serif;
}

body {
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0;
    height: 100vh;
    padding: 50px;
    flex-direction: column;
}

form {
    padding: 25px;
    background: #fff;
    max-width: 500px;
    width: 100%;
    border-radius: 7px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
}

form h2 {
  font-size: 27px;
  text-align: center;
  margin: 0px 0 30px;
}

form .form-group {
  margin-bottom: 15px;
  position: relative;
}

form label {
  display: block;
  font-size: 15px;
  margin-bottom: 7px;
}

form input,
form select {
  height: 45px;
  padding: 10px;
  width: 100%;
  font-size: 15px;
  outline: none;
  background: #fff;
  border-radius: 3px;
  border: 1px solid #bfbfbf;
}

form input:focus,
form select:focus {
  border-color: #9a9a9a;
}

form input.error,
form select.error {
  border-color: #f91919;
  background: #f9f0f1;
}

form small {
  font-size: 14px;
  margin-top: 5px;
  display: block;
  color: #f91919;
}

form .password i {
  position: absolute;
  right: 0px;
  height: 45px;
  top: 28px;
  font-size: 13px;
  line-height: 45px;
  width: 45px;
  cursor: pointer;
  color: #939393;
  text-align: center;
}


.submit-btn {
  margin-top: 30px;
}

.submit-btn input {
  color: white;
  border: none;
  height: auto;
  font-size: 16px;
  padding: 13px 0;
  border-radius: 5px;
  cursor: pointer;
  font-weight: 500;
  text-align: center;
  background: #1BB295;
  transition: 0.2s ease;
}

.submit-btn input:hover {
  background: #179b81;
}
</style>
</head>
    <body style="background: url('https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D') center center/cover no-repeat; ">
	<form action="/EnomySpring/login" method="post" >
	 <h2>Login</h2>
	    <div class="form-group fullname">
        	<label for="fullname">Full Name</label>
        	<input type="text" id="fullname" name="fullname" placeholder="Enter your full name">
      	</div>
      
      	<div class="form-group email">
        	<label for="email">Email Address</label>
       	 	<input type="text" id="email" name="email" placeholder="Enter your email address">
      	</div>
      	
      	<div class="form-group password">
        	<label for="password">Password</label>
        	<input type="password" id="password" name="password" placeholder="Enter your password">
        	<i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
      	</div>
      	
      	<div class="form-group submit-btn">
      		<input type="submit" value="Submit">
     	</div>
     	
     	<div class="form-group forgot-password">
            <a href="/ForgotPassword.jsp">Forgot Password?</a>
        </div>
        <div class="form-group error-message">
    <c:if test="${not empty error}">
        <small>${error}</small>
    </c:if>
</div>
	</form>
	
	</body>
</html>