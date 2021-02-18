<%-- 
    Document   : arithmeticCalculator
    Created on : Feb 17, 2021, 4:02:13 PM
    Author     : 842223
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
        
           <script>
        function invalid() {
        var x = document.forms["arithmeticCalculator"]["first"].value;
        var y = document.forms["arithmeticCalculator"]["second"].value;
            if (x == "" || x == null || y == "" || y == null || isNaN(x) || isNaN(y)) {
                document.getElementById("answer").innerHTML = "Result: invalid.";
            } 

        function add(){
            var first, second;
            first = document.getElementById("first").value;
            second =  document.getElementById("second").value;
            result = first + second;
            document.getElementById("answer").innerHTML= "Result: " + result;
        }

        function subtract(){
            var first, second;
            first = document.getElementById("first").value;
            second =  document.getElementById("second").value;
            result = first - second;
            document.getElementById("answer").innerHTML= "Result: " + result;
        }

        function multiply(){
            var first, second;
            first = document.getElementById("first").value;
            second =  document.getElementById("second").value;
            result = first * second;
            document.getElementById("answer").innerHTML= "Result: " + result;
        }

        function divide(){
            var first, second;
            first = document.getElementById("first").value;
            second =  document.getElementById("second").value;
            result = first / second;
            document.getElementById("answer").innerHTML= "Result: " + result;
        }
    }
        
    </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="" name="arithmeticCalculator" >
        <label for="first">First:</label>
        <input type="text" id="first">
        <br>
        <label for="second">Second:</label>
        <input type="text" id="second">
        <br>
        <button type="button" onclick="invalid()" onclick="add()">+</button>
        <button type="button" onclick="invalid()" onclick="subtract()">-</button>
        <button type="button" onclick="invalid()" onclick="multiply()">*</button>
        <button type="button" onclick="invalid()" onclick="divide()">%</button>
    </form>
    <p id="answer">Result:---</p>
    <a href="AgeCalculatorServlet">Age Calculator</a>
    </body>
</html>
