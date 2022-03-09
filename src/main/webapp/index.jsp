<html>
<head>
<title>Hello World!</title>
	<br>
	<h1>Thi is my test page <h1>
		<br>

</head>
<body>
	<h1>Hello World!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from <br>Browser <br>
		<%= request.getRemoteAddr()  %></p>
</body>
