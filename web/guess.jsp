<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>

<%!int number = new Random().nextInt(10) + 1;%>

<!DOCTYPE html>
<html>
<head>
<title>Guess</title>
<link rel="stylesheet" href="css/sample.css" type="text/css">
</head>
<body>
	<h1>Thinking a number</h1>
	<%
		String guessFromParameter = request.getParameter("guess");
		int guessedNumber = Integer.parseInt(guessFromParameter);
	%>
	<p>You guessed <%=guessedNumber%>...</p>
	<%
		String resultMessage = null;
		if (guessedNumber == number) {
			resultMessage = "Well done! That was correct!";
			number = new Random().nextInt(10) + 1;
		} else if (guessedNumber > number) {
			resultMessage = "Lower!";
		} else {
			resultMessage = "Higher!";
		}
	%>
	<h2><%=resultMessage%></h2>
	<img src="images/guess.jpg">
</body>
</html>