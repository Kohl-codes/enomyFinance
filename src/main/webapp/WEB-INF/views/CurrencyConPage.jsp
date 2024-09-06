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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Currencycss.css">
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
    
     <!-- Currency Converter-->
    <section>

        <div class="content-container">
        <div class="converter">
            <h2>Currency Converter</h2>
            <label for="fromCurrency">From Currency:</label>
        <select id="fromCurrency">
            <option value="GBP">GBP - British Pound</option>
            <option value="USD">USD - US Dollar</option>
            <option value="EUR">EUR - Euro</option>
            <option value="BRL">BRL - Brazilian Real</option>
            <option value="JPY">JPY - Japanese Yen</option>
            <option value="TRY">TRY - Turkish Lira</option>
        </select>

        <label for="amount">Amount:</label>
        <input type="number" id="amount" min="300" max="5000" placeholder="Enter amount" required>

        <label for="toCurrency">To Currency:</label>
        <select id="toCurrency">
            <option value="GBP">GBP - British Pound</option>
            <option value="USD">USD - US Dollar</option>
            <option value="EUR">EUR - Euro</option>
            <option value="BRL">BRL - Brazilian Real</option>
            <option value="JPY">JPY - Japanese Yen</option>
            <option value="TRY">TRY - Turkish Lira</option>
        </select>
        
        <button class="convert-button" onclick="convertCurrency()">Convert</button>

        <div id="result"></div>
        <div id="fee"></div> 
        </div>    
      
         <div class="col-lg-6">
            <h4 class="mb-3">Initial Currency Amount and Fee</h4>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Initial Currency Amount</th>
                        <th scope="col">Fee</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Up to 500</td>
                        <td>3.5%</td>
                    </tr>
                    <tr>
                        <td>Over 500</td>
                        <td>2.7%</td>
                    </tr>
                    <tr>
                        <td>Over 1500</td>
                        <td>2.0%</td>
                    </tr>
                    <tr>
                        <td>Over 2500</td>
                        <td>1.5%</td>
                    </tr>
                </tbody>
            </table>
        </div>  
      
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
<script>
//Investment Calculator
document.getElementById("investmentForm").addEventListener("submit", function(event) {
    event.preventDefault();

    let initialAmount = parseFloat(document.getElementById("initialAmount").value);
    let monthlyInvestment = parseFloat(document.getElementById("monthlyInvestment").value);
    let investmentType = document.getElementById("investmentType").value;

    if (isNaN(initialAmount) || isNaN(monthlyInvestment)) {
        alert("Please enter valid numeric values for initial amount and monthly investment.");
        return;
    }

    let investmentValues = calculateInvestment(initialAmount, monthlyInvestment, investmentType);

    displayResults(investmentValues);
});

function calculateInvestment(initialAmount, monthlyInvestment, investmentType) {
    let investmentReturns = {
        'BasicSavingsPlan': {'1_year': 0.024, '5_years': 0.048, '10_years': 0.096},
        'SavingsPlanPlus': {'1_year': 0.055, '5_years': 0.083, '10_years': 0.11},
        'ManagedStockInvestments': {'1_year': 0.23, '5_years': 0.04, '10_years': 0.15}
    };

    let fees = {
        'BasicSavingsPlan': {'1_year': 25, '5_years': 50, '10_years': 100},
        'SavingsPlanPlus': {'1_year': 30, '5_years': 30, '10_years': 30},
        'ManagedStockInvestments': {'1_year': 130, '5_years': 130, '10_years': 130}
    };

    let taxes = {
        'BasicSavingsPlan': {'1_year': 0, '5_years': 0, '10_years': 0},
        'SavingsPlanPlus': {'1_year': 120, '5_years': 120, '10_years': 120},
        'ManagedStockInvestments': {'1_year': 120, '5_years': 200, '10_years': 200}
    };

    let investmentValues = {};
    for (let timeframe in investmentReturns[investmentType]) {
        let totalInvestment = initialAmount + (monthlyInvestment * 12 * parseInt(timeframe));
        let returns = totalInvestment * investmentReturns[investmentType][timeframe];
        let totalFees = fees[investmentType][timeframe];
        let totalTaxes = taxes[investmentType][timeframe];
        let totalProfit = returns - totalFees - totalTaxes;

        investmentValues[timeframe] = {
            'totalInvestment': totalInvestment.toFixed(2),
            'returns': returns.toFixed(2),
            'totalProfit': totalProfit.toFixed(2),
            'totalFees': totalFees.toFixed(2),
            'totalTaxes': totalTaxes.toFixed(2)
        };
    }

    return investmentValues;
}

function displayResults(investmentValues) {
    let resultsContainer = document.getElementById("resultsContainer");
    resultsContainer.innerHTML = "";

    for (let timeframe in investmentValues) {
        let div = document.createElement("div");
		div.innerHTML = `<h4>${timeframe.replace('_', ' ').toUpperCase()}</h4>`;
        div.innerHTML += `<p>Total Investment: &pound;${investmentValues[timeframe].totalInvestment}</p>`;
        div.innerHTML += `<p>Returns: &pound;${investmentValues[timeframe].returns}</p>`;
        div.innerHTML += `<p>Total Profit: &pound;${investmentValues[timeframe].totalProfit}</p>`;
        div.innerHTML += `<p>Total Fees: &pound;${investmentValues[timeframe].totalFees}</p>`;
        div.innerHTML += `<p>Total Taxes: &pound;${investmentValues[timeframe].totalTaxes}</p>`;

        resultsContainer.appendChild(div);
    }

    document.getElementById("investmentResults").classList.remove("hidden");
}


//Currency Converter
function convertCurrency() {
    const fromCurrency = document.getElementById("fromCurrency").value;
    const toCurrency = document.getElementById("toCurrency").value;
    const amount = parseFloat(document.getElementById("amount").value);

    const exchangeRate = getExchangeRate(fromCurrency, toCurrency);
    const convertedAmount = amount * exchangeRate;

    document.getElementById("result").innerText = `${amount} ${fromCurrency} = ${convertedAmount.toFixed(2)} ${toCurrency}`;
}

function getExchangeRate(fromCurrency, toCurrency) {
  
    const exchangeRates = {
        GBP: { USD: 1.38, EUR: 1.16, BRL: 7.66, JPY: 152.36, TRY: 14.72 },
        USD: { GBP: 0.72, EUR: 0.84, BRL: 5.26, JPY: 104.74, TRY: 10.15 },
        EUR: { GBP: 0.86, USD: 1.19, BRL: 6.25, JPY: 125.16, TRY: 12.11 },
        BRL: { GBP: 0.13, USD: 0.19, EUR: 0.16, JPY: 19.87, TRY: 1.92 },
        JPY: { GBP: 0.0066, USD: 0.0095, EUR: 0.008, BRL: 0.0503, TRY: 0.097 },
        TRY: { GBP: 0.068, USD: 0.098, EUR: 0.082, BRL: 0.52, JPY: 10.33 }
    };

    return exchangeRates[fromCurrency][toCurrency] || 1;
}
</script>
  </body>
 
</html>