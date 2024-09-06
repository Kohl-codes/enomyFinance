<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enomy Finance</title>
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
    
    <section class="home-section" >
      <div class="content">
        <h1>Empower Your Financial Journey with Enomy Finance:</h1>
        <p>
          Where Your Prosperity Takes Flight!
        </p>
        <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/EnomySpringMVC/InvestmentsServlet"
        style="--bs-btn-padding-y: .50rem; --bs-btn-padding-x: 1rem; --bs-btn-font-size: 19px; background-color: #179b81; border-color: #179b81;">
  Invest Now !
</a>
      </div>
  </section>
    
    <section id="aboutus">
      <!-- About Section Start -->
      <div class="about-title">About Us</div>
<div class="section section-padding pb-0">
  <div class="container">
    <div class="row learts-mb-n30">

      <div class="col-md-6 col-12 align-self-center learts-mb-30">
        <div class="about-us3">
          <span class="sub-title">Live out your life.</span>
          <h2 class="title">Welcome to <em>Enomy Finance</em> <br> Your Trusted Partner in Financial Success!</h2>
          <div class="desc">
            <p class="">At Enomy Finance, we understand the significance of financial well-being in achieving life's aspirations. Established with a vision to empower individuals with sound financial strategies, we are committed to delivering personalized and innovative solutions that pave the way for a secure financial future.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-12 text-center learts-mb-30">
        <img src="https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg?cs=srgb&dl=pexels-expect-best-323705.jpg&fm=jpg" alt="" class="img-fluid">
      </div>
       <h2 class="title">Mission</h2>
          <div class="desc">
            <p class="">Enomy Finance is on a mission to simplify the complexities of finance, making it accessible to everyone. We strive to provide unparalleled financial services, fostering a community where individuals can confidently navigate their financial journey.</p>
          </div>
      <h2 class="title">What Sets Us Apart:</h2>
          <div class="desc">
             <p>
        <b>Expert Guidance:</b> Our team of seasoned financial experts is dedicated to providing expert guidance tailored to your unique financial goals.
    </p>

    <p>
        <b>Innovation:</b> We leverage cutting-edge technology to offer innovative solutions, ensuring you stay ahead in an ever-evolving financial landscape.
    </p>

    <p>
        <b>Transparency:</b> Trust is the foundation of our relationship. We maintain transparency in all our dealings, empowering you with the knowledge to make informed decisions.
    </p>

    <p>
        <b>Client-Centric Approach:</b> Your success is our success. Our client-centric approach ensures that your financial objectives remain at the forefront of everything we do.
    </p>
          </div>
    </div>
  </div>
</div>
    </section>
   
    <section>
      <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://media.istockphoto.com/id/1406447835/photo/portrait-on-a-man-in-his-40s.jpg?b=1&s=612x612&w=0&k=20&c=9DmujOO1v_KSN2CawxmcAT4r4lwZZYfVs4PYBYmtW4Q=" class="d-block w-100" alt="pic 1">
      <div class="carousel-caption d-none d-md-block">
        <h5>James Fredrick</h5>
        <p>"Enomy Finance truly understands the pulse of the market. Their innovative approach to wealth management has not only protected my assets but has also provided consistent growth. It's refreshing to work with a team that prioritizes transparency and client satisfaction."</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://media.istockphoto.com/id/1145045107/photo/portrait-of-a-beautiful-mature-indian-woman.jpg?s=612x612&w=0&k=20&c=ezBRqDoUXJmSx2uoVUm0kw6Dj0N4CxtS49CoGs2TeKw=" class="d-block w-100" alt="pic 2">
      <div class="carousel-caption d-none d-md-block">
        <h5>Emily Kai</h5>
        <p>"Choosing Enomy Finance was one of the best decisions I made for my retirement planning. Their dedicated team took the time to understand my aspirations and crafted a tailored strategy that aligns perfectly with my goals. I feel secure and well-prepared for the future."</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://media.istockphoto.com/id/1216152397/photo/portrait-of-female-owner-of-gift-store-standing-in-front-of-shelves-with-cosmetics-and-candles.jpg?s=612x612&w=0&k=20&c=23L_GhirOBiExv00QPw555TiTsSrZqhFii2F89CHXVE=" class="d-block w-100" alt="pic 3">
      <div class="carousel-caption d-none d-md-block">
        <h5>Sarah Thompson</h5>
        <p>"Enomy Finance has been a game-changer for my financial journey. Their expert guidance and personalized strategies helped me navigate complex investment decisions with confidence. I can't thank them enough for their commitment to my financial success."</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </section>

     <section class="inquiry">
        <article class="inquiry-title"><h1>INQUIRIES</h1></article><br>
        <form>
            <p>Email:</p>
            <div class="input-group flex-nowrap">
  <span class="input-group-text" id="addon-wrapping">@</span>
  <input type="text" class="form-control" placeholder="Enter Email" aria-label="email" aria-describedby="addon-wrapping">
</div><br>
            <p>Message:</p>
            <div class="input-group">
  <textarea class="form-control" aria-label="With textarea" placeholder="Enter Message"></textarea>
</div><br>
            <button type="button" class="btn btn-success">Send</button>
        </form>
    </section>
    
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
    
  </body>
 
</html>