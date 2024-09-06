<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Enomy Finance</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Dashboardcss.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
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
                <a class="nav-link" href="${pageContext.request.contextPath}/EnomySpringMVC/AboutusServlet">About Us</a>
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
    
    
    
    <div class="container m-5">
<div class="row gutters">
<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="account-settings">
			<div class="user-profile">
				<div class="user-avatar">
					<img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Maxwell Admin">
				</div>
				<h5 class="user-name">Yuki Hayashi</h5>
				<h6 class="user-email">yuki@Maxwell.com</h6>
			</div>
			<div class="about">
				<h5>About</h5>
				<p>I'm a User.</p>
			</div>
		</div>
	</div>
</div>
</div>
<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<h6 class="mb-2 text-primary">Personal Details</h6>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="fullName">Full Name</label>
					<input type="text" class="form-control" id="fullName" placeholder="Enter full name">
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="eMail">Email</label>
					<input type="email" class="form-control" id="eMail" placeholder="Enter email ID">
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="phone">New Password</label>
					<input type="text" class="form-control" id="password" placeholder="Enter new password">
				</div>
			</div>
		</div>
	
		<div class="row gutters m-3">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
					<button type="button" id="submit" name="submit" class="btn btn-secondary">Cancel</button>
					<a type="button" id="submit" name="submit" class="btn btn-primary" href="${pageContext.request.contextPath}/EnomySpringMVC/UpdateServlet">Update</a>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
    
    
    <footer>
        <div class="bottom-details">
      <div class="bottom_text">
        <span class="copyright_text">Copyright © 2024 Enomy Finance. All rights reserved</span>
        <span class="policy_terms">
          <a href="#policy" data-bs-toggle="modal" data-bs-target="#policy" >Privacy policy</a>
          <a href="#terms " data-bs-toggle="modal" data-bs-target="#terms" >Terms & condition</a>
        </span>
      </div>
    </div>
    </footer>

<!-- Modal Policy-->
<div class="modal fade" id="policy" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Privacy Policy</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Effective Date: 2024 <br>

        <b>Introduction:</b> <br>
Welcome to Enomy Finance. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our services. By accessing or using our services, you consent to the terms outlined in this Privacy Policy.<br>

        <b>Information We Collect:</b><br>
We may collect personal information such as names, contact details, financial information, and other relevant data necessary for providing financial services.<br>

        <b>How We Use Your Information:</b><br>
We use your information to provide and improve our services, customize your experience, communicate with you, and comply with legal obligations.<br>

        <b>Data Security:</b><br>
We take appropriate measures to protect your information from unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet is completely secure, and we cannot guarantee absolute security.<br>

        <b>Third-Party Disclosure:</b><br>
We may share your information with trusted third parties to facilitate our services. However, we do not sell, trade, or transfer your personally identifiable information to outside parties without your consent.<br>

        <b>Cookies:</b><br>
We use cookies to enhance your experience on our website. You can choose to disable cookies in your browser settings, but this may affect certain functionalities.<br>

        <b>Changes to Privacy Policy:</b><br>
We reserve the right to modify this Privacy Policy at any time. Changes will be effective immediately upon posting. Please review this Privacy Policy periodically for updates.<br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    <!-- Modal Terms-->
<div class="modal fade" id="terms" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Terms and Conditions</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          Effective Date: 2024 <br>

          <b>Acceptance of Terms:</b> <br>
          By accessing or using the services provided by Enomy Finance, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, you may not use our services.<br>

          <b>Financial Advice:</b><br>
          Enomy Finance provides general financial information and does not constitute professional advice. We recommend consulting with a financial advisor before making any financial decisions.<br>

          <b>User Responsibilities:</b><br>
          Users are responsible for maintaining the confidentiality of their account information, including passwords. You agree to notify us immediately of any unauthorized access or use of your account.<br>

          <b>Intellectual Property:</b><br>
          All content and materials on the Enomy Finance platform are protected by intellectual property laws. You may not reproduce, distribute, or modify any part of our services without explicit written consent.<br>

          <b>Limitation of Liability:</b><br>
          Enomy Finance is not liable for any direct, indirect, incidental, consequential, or punitive damages arising from the use of our services.<br>

          <b>Governing Law:</b><br>
          These Terms and Conditions are governed by and construed in accordance with the laws of the earth.<br>

          <b>Contact Information:</b><br>
          If you have any questions or concerns about our Privacy Policy or Terms and Conditions, please contact us at enomyfinance@gmail.com .<br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script src="${pageContext.request.contextPath}/js/Currencyjs.js"></script>
  </body>
 
</html>