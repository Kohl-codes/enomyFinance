<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Thank you for Registering!</title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;700&display=swap" rel="stylesheet">
    <style> @charset "ISO-8859-1";
*{
  box-sizing:border-box;
}
body{
	background: #FFF;
	background: linear-gradient(to bottom, #FFF 0%,#e1e8ed 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#e1e8ed',GradientType=0 );
	height: 100%;
	margin: 0;
	background-repeat: no-repeat;
	background-attachment: fixed;
  
}

.wrapper-1{
	width:100%;
  	height:100vh;
  	display: flex;
	flex-direction: column;
}
.wrapper-2{
 	 padding :30px;
  	 text-align:center;
 	 background-color:#1BB295;
	 border-radius: 25px;
}	
.thankyou {
  	 font-family: 'Lato';
 	 font-size: 3em;
  	 letter-spacing:-4px;
	 color:#FFFFFF ;
	 margin:0;
	 margin-bottom:20px;
}
.agreebetteremail{ 
	font-weight: bold;
	padding-bottom: 7px; 
}
.wrapper-2 p{
  margin:0;
  font-size:1.1em;
  color:#333;
  font-family: 'Source Sans Pro', sans-serif;
  letter-spacing:1px;
}
.go-home{
  color:#fff;
  background:#333;
  border:none;
  padding:10px 50px;
  margin:30px 0;
  border-radius:30px;
  text-transform:capitalize;
  
}
.footer-like{
  margin-top: auto; 
  background:#FFF;
  padding:6px;
  text-align:center;
  font-weight: bold;
  font-size: 13px;
}
.footer-like p{
  margin:0;
  padding:4px;
  color:#333;
  font-family: 'Lato', sans-serif;
  letter-spacing:1px;
}
.footer-like p a{
  text-decoration:none;
  color:#5892FF;
  font-weight:600;
}

@media (min-width:360px){
  h1{
    font-size:4.5em;
  }
  .go-home{
    margin-bottom:20px;
  }
}

@media (min-width:600px){
  .content{
  max-width:1000px;
  margin:0 auto;
}
  .wrapper-1{
  height: initial;
  max-width:620px;
  margin:0 auto;
  margin-top:50px;
  box-shadow: 4px 8px 40px 8px rgba(88, 146, 255, 0.2);
}
  
}</style>
</head>

<body>
    <div class="content">
        <div class="wrapper-1">
            <div class="wrapper-2">
                <h1 class='thankyou'>Thank You !</h1>
                <p class="agreebetteremail">Congratulations</p>
                <p>Thank you for registering.</p>

                <form action="/EnomySpring/thankyou" method="post">
                 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <input type="submit" value="Go to Login Page" class="go-home">
                </form>
            </div>
            <div class="footer-like">
                <p>&copy; 2024 Enomy Finance. All rights reserved.</p>
            </div>
        </div>
    </div>
</body>
</html>
