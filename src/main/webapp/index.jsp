<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<h1>Hello World!</h1>
	We are learning Deployment on 7-july
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
