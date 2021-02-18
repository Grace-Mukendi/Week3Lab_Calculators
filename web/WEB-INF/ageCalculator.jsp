<%-- 
    Document   : ageCalculator
    Created on : Feb 17, 2021, 3:22:06 PM
    Author     : 842223
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
        
            <script>
       /*validation for empty form*/ 
       function validateForm() {
        var x = document.forms["ageCalculator"]["age"].value;
            if (x == "" || x == null) {
                document.getElementById("warning").innerHTML = "You must give your current age.";
            }
        
           else if (isNaN(x)) {
              document.getElementById("warning").innerHTML = "You must enter a number.";
           }
          else {document.getElementById("warning").innerHTML = "Your next age will be " + ++x;}
  }




    </script>
    </head>
    <body>
        

    <h1>Age Calculator</h1>

    <form method="POST" action="" name="ageCalculator" onsubmit="return validateForm()">
    <label for="age">Enter your age:</label>
    <input type="text" id="age">
    <br>
    <button type="button" onclick="validateForm()">Age next birthday</button>
    <p id="warning"></p>
    <a href="ArithmeticCalculatorsServlet">Arithmetic Calculator</a>

    </body>
</html>
