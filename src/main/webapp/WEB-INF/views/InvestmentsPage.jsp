<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Enomy Finance</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Investmentscss.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
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
    
    <!--   Body details   -->
<!--     <dic class="card-deck mb-3"> -->
    <section>
     <div class="wrapper">
    <input type="radio" name="slider" id="tab-1">
    <input type="radio" name="slider" id="tab-2" checked>
    <input type="radio" name="slider" id="tab-3">
    <header>
      <label for="tab-1" class="tab-1">Basic</label>
      <label for="tab-2" class="tab-2">Plus</label>
      <label for="tab-3" class="tab-3">Team</label>
      <div class="slider"></div>
    </header>
    <div class="card-area">
      <div class="cards">
        <div class="row row-1">
          <div class="price-details">
            <span class="price">50</span>
            <p>For basic use</p>
            <h4>---- Basic Savings Plan ----</h4>
          </div>
          <ul class="features">
            <li><i class="fas fa-check"></i><span><b>£20 000</b> Max Investment Per Year</span></li>
            <li><i class="fas fa-check"></i><span><b>£50</b> Min Monthly Investment</span></li>
            <li><i class="fas fa-check"></i><span><b>No</b> Minimum Initial Invest Lump Sum</span></li>
            <li><i class="fas fa-check"></i><span><b>1.2% to 2.4%</b> Predicted Returns Per Year</span></li>
             <li><i class="fas fa-check"></i><span><b>0%</b> Estimated Tax</span></li>
             <li><i class="fas fa-check"></i><span><b>0.25%</b> RBSX Group Fee Per Month</span></li>
          </ul>
        </div>
        <div class="row">
          <div class="price-details">
            <span class="price">50</span>
            <p class="text-muted">For premium use</p>
            <h4>---- Savings Plan Plus ----</h4>
          </div>
          <ul class="features">
            <li><i class="fas fa-check"></i><span><b>£30 000</b> Max Investment Per Year</span></li>
            <li><i class="fas fa-check"></i><span><b>£50</b> Min Monthly Investment</span></li>
            <li><i class="fas fa-check"></i><span><b>£300</b> Minimum Initial Invest Lump Sum</span></li>
            <li><i class="fas fa-check"></i><span><b>3% to 5.5%</b> Predicted Returns Per Year</span></li>
             <li><i class="fas fa-check"></i><span><b>10% on above £12 000</b> Estimated Tax</span></li>
             <li><i class="fas fa-check"></i><span><b>0.3%</b> RBSX Group Fee Per Month</span></li>
          </ul>
        </div>
        <div class="row">
          <div class="price-details">
            <span class="price">150</span>
            <p>For team collaboration</p>
            <h4> Managed Stock Investments </h4>
          </div>
          <ul class="features">
            <li><i class="fas fa-check"></i><span><b>Unlimited</b> Max Investment Per Year</span></li>
            <li><i class="fas fa-check"></i><span><b>£150</b> Min Monthly Investment</span></li>
            <li><i class="fas fa-check"></i><span><b>£1000</b> Minimum Initial Invest Lump Sum</span></li>
            <li><i class="fas fa-check"></i><span><b>4% to 23%</b> Predicted Returns Per Year</span></li>
             <li><i class="fas fa-check"></i><span><b>10% on profits above £12 000 <br> 20% on profits above £40 000 </b> Estimated Tax</span></li>
             <li><i class="fas fa-check"></i><span><b>1.3%</b> RBSX Group Fee Per Month</span></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  </section> 
    
    
    
	<!-- Investment Form -->
	<div class="invest-input">
	    <div class="col-md-15">
	        <div class="justify-content-center">
	            <div class=" justify-content-center">
	                <p class="text-muted"><h1>Investment Now!</h1></p>
	                <!-- Form for entering investment details -->
	                <form action="showresults" method="post" id="investmentForm">
	                    <div class="mb-3">
	                        <label for="investmentType" class="form-label">Investment Type</label>
	                        <select type="text" class="form-select" id="investmentType" name="investmentType" required>
	                            <option value="Basic Savings Plan">Basic Savings Plan</option>
	                            <option value="Savings Plan Plus">Savings Plan Plus</option>
	                            <option value="Managed Stock Investments">Managed Stock Investments</option>
	                        </select>
	                    </div>
	                    <div class="mb-3">
	                        <label for="initialLumpSum" class="form-label">Initial Lump Sum</label>
	                        <input type="number" class="form-control" id="initialLumpSum" name="initialLumpSum" required>
	                    </div>
	                    <div class="mb-3">
	                        <label for="monthlyInvestment" class="form-label">Monthly Investment</label>
	                        <input type="number" class="form-control" id="monthlyInvestment" name="monthlyInvestment" required>
	                    </div>
	                    <button type="button" class="btn btn-primary w-100" onclick="calculateInvestment()">Show Results</button>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
	
	  <div class="container mt-5">
	  <h1>Investment Results</h1>
	  <div id="investmentQuote" class="m-5">
	    <table class="table">
	      <thead>
	        <tr>
	          <th scope="col">Time Frame</th>
	          <th scope="col">Maximum Returns</th>
	          <th scope="col">Minimum Returns</th>
	          <th scope="col">Total Profit</th>
	          <th scope="col">RBSX Group Total Fees</th>
	          <th scope="col">Total Taxes</th>
	        </tr>
	      </thead>
	      <tbody>
	        <tr>
	          <th scope="row">1 Year</th>
	          <td><span id="maxReturns1Year"></span></td>
	          <td><span id="minReturns1Year"></span></td>
	          <td><span id="totalProfit1Year"></span></td>
	          <td><span id="totalFees1Year"></span></td>
	          <td><span id="totalTaxes1Year"></span></td>
	        </tr>
	        <tr>
	          <th scope="row">5 Years</th>
	          <td><span id="maxReturns5Years"></span></td>
	          <td><span id="minReturns5Years"></span></td>
	          <td><span id="totalProfit5Years"></span></td>
	          <td><span id="totalFees5Years"></span></td>
	          <td><span id="totalTaxes5Years"></span></td>
	        </tr>
	        <tr>
	          <th scope="row">10 Years</th>
	          <td><span id="maxReturns10Years"></span></td>
	          <td><span id="minReturns10Years"></span></td>
	          <td><span id="totalProfit10Years"></span></td>
	          <td><span id="totalFees10Years"></span></td>
	          <td><span id="totalTaxes10Years"></span></td>
	        </tr>
	      </tbody>
	    </table>
	  </div>
	</div>


	
	<script>
	    function calculateInvestment() {
	        // Retrieve input values
	        const investmentType = document.getElementById("investmentType").value;
	        const initialLumpSum = parseFloat(document.getElementById("initialLumpSum").value);
	        const monthlyInvestment = parseFloat(document.getElementById("monthlyInvestment").value);
	
	        // Calculate investment quote
	        const quote = calculateInvestmentQuote(investmentType, initialLumpSum, monthlyInvestment);
	
	        // Display results for 1 year
	        document.getElementById("maxReturns1Year").textContent = quote[1].maxReturn.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("minReturns1Year").textContent = quote[1].minReturn.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalProfit1Year").textContent = quote[1].totalProfit.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalFees1Year").textContent = quote[1].totalFees.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalTaxes1Year").textContent = quote[1].totalTax.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	
	        // Display results for 5 years
	        document.getElementById("maxReturns5Years").textContent = quote[5].maxReturn.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("minReturns5Years").textContent = quote[5].minReturn.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalProfit5Years").textContent = quote[5].totalProfit.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalFees5Years").textContent = quote[5].totalFees.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalTaxes5Years").textContent = quote[5].totalTax.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	
	        // Display results for 10 years
	        document.getElementById("maxReturns10Years").textContent = quote[10].maxReturn.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("minReturns10Years").textContent = quote[10].minReturn.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalProfit10Years").textContent = quote[10].totalProfit.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalFees10Years").textContent = quote[10].totalFees.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	        document.getElementById("totalTaxes10Years").textContent = quote[10].totalTax.toLocaleString('en-GB', { style: 'currency', currency: 'GBP' });
	    }
	
	</script>

  
    
    
    <!-- Footer -->
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
<script>
//Investment types information
const investmentTypes = {
  "Basic Savings Plan": {
    maxInvestmentPerYear: 20000,
    minMonthlyInvestment: 50,
    minInitialLumpSum: 0,
    predictedReturns: [0.012, 0.024],
    estimatedTax: 0,
    feesPerMonth: 0.0025
  },
  "Savings Plan Plus": {
    maxInvestmentPerYear: 30000,
    minMonthlyInvestment: 50,
    minInitialLumpSum: 300,
    predictedReturns: [0.03, 0.055],
    estimatedTax: 0.1,
    taxThreshold: 12000,
    feesPerMonth: 0.003
  },
  "Managed Stock Investments": {
    maxInvestmentPerYear: Infinity,
    minMonthlyInvestment: 150,
    minInitialLumpSum: 1000,
    predictedReturns: [0.04, 0.23],
    estimatedTax: [0.1, 0.2],
    taxThresholds: [12000, 40000],
    feesPerMonth: 0.013
  }
};

// Function to calculate investment quote
function calculateInvestmentQuote(investmentType, initialLumpSum, monthlyInvestment) {
  const investment = investmentTypes[investmentType];
  if (!investment) {
    return "Invalid investment type";
  }

  // Check if input values are valid
  if (initialLumpSum < investment.minInitialLumpSum || monthlyInvestment < investment.minMonthlyInvestment) {
    return "Invalid initial lump sum or monthly investment";
  }

  // Calculate returns, fees, and taxes for each year
  const years = [1, 5, 10];
  const quotes = {};
  years.forEach(year => {
    const totalInvestment = initialLumpSum + (monthlyInvestment * 12 * year);
    const returns = investment.predictedReturns.map(rate => totalInvestment * (1 + rate) - totalInvestment);
    const totalReturns = returns.reduce((acc, val) => acc + val, 0);
    const totalFees = investment.feesPerMonth * 12 * year;
    const totalTax = calculateTax(returns, investment, year);
    quotes[year] = {
      maxReturn: totalInvestment + totalReturns,
      minReturn: totalInvestment,
      totalProfit: totalReturns - totalFees - totalTax,
      totalFees,
      totalTax
    };
  });

  return quotes;
}

// Function to calculate tax
function calculateTax(returns, investment, year) {
  let totalTax = 0;
  if (investment.estimatedTax) {
    const taxRate = investment.estimatedTax;
    const taxThreshold = investment.taxThreshold || Infinity;
    const taxableProfit = Math.max(returns[1] - taxThreshold, 0);
    totalTax += taxableProfit * taxRate;
  } else if (Array.isArray(investment.estimatedTax)) {
    const taxRates = investment.estimatedTax;
    const taxThresholds = investment.taxThresholds;
    for (let i = 0; i < taxRates.length; i++) {
      const taxRate = taxRates[i];
      const taxThreshold = taxThresholds[i];
      const taxableProfit = Math.max(returns[year - 1] - taxThreshold, 0);
      totalTax += taxableProfit * taxRate;
    }
  }
  return totalTax;
}

// Example usage
const investmentType = "Basic Savings Plan";
const initialLumpSum = 1000;
const monthlyInvestment = 100;
const quote = calculateInvestmentQuote(investmentType, initialLumpSum, monthlyInvestment);
console.log(quote);

</script>
  </body>
 
</html>