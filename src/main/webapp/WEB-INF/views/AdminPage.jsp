<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enomy Finance</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Logincss.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Homecss.css">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
  </head>
  
  <body>
  
    <header>
    <nav class="navbar bg-body-tertiary fixed-top" style="background-color: #e3f2fd;">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Enomy Finance<em>.</em></a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Enomy Finance.</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/EnomySpringMVC/HomeServlet">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#aboutus">About Us</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/EnomySpringMVC/InvestmentsServlet">Investments</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/EnomySpringMVC/CurrencyServlet">Currency Converter</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/EnomySpringMVC/DashboardServlet">Dashboard</a>
              </li>
              <li><div class="d-grid gap-2 d-md-flex justify-content-md-end">
               <a href="${pageContext.request.contextPath}/EnomySpringMVC/LogoutServlet" class="btn">Logout</a>
                </div></li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    </header>
    
    
    
    <form id="adminForm" action="${pageContext.request.contextPath}/ForgotPasswordServlet" method="post">
        <h2>Admin</h2>
        <div class="form-group email">
            <label for="email">Email Address</label>
            <input type="text" id="email" name="email" placeholder="Enter email address" required>
        </div>

        <div class="form-group submit-btn">
            <input type="submit" value="Delete">
        </div>
        
        <a href="${pageContext.request.contextPath}/LoginPage.jsp" class="btn">Go Back</a>
    </form>
    
    
    
  
  </body>
 
</html>