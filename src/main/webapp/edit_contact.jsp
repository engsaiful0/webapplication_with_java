<%@ page import="com.example.main.web_java.Contact" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Contact</title>
</head>
<body>
<h1>Edit Contact</h1>
<form action="update-contact" method="post">
    <input type="hidden" name="id" value="<%= request.getAttribute("contact").getId() %>">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="<%= request.getAttribute("contact").getName() %>"><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="<%= request.getAttribute("contact").getEmail() %>"><br>
    <label for="message">Message:</label>
    <textarea id="message" name="message"><%= request.getAttribute("contact").getMessage() %></textarea><br>
    <button type="submit">Update</button>
</form>
</body>
</html>
