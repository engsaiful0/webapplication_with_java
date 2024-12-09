<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP - Login Page</title>
    <!-- Link to local Bootstrap CSS -->
    <link href="<%= request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <%@ include file="/WEB-INF/includes/navbar.jsp" %>

    <h1 class="mt-4 mb-4">Login</h1>

    <!-- Login Form Start -->
    <form action="<%= request.getContextPath() %>/SignInServlet" method="post">
        <div class="form-group">
            <label for="username">User Name</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your User Name" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
        </div>

        <button type="submit" class="btn btn-primary">Login</button>
    </form>
    <!-- Login Form End -->

    <!-- Additional Links -->
    <div class="mt-3">
        <p>Don't have an account? <a href="<%= request.getContextPath() %>/signup.jsp">Signup here</a></p>
        <p><a href="<%= request.getContextPath() %>/forgot-password.jsp">Forgot your password?</a></p>
    </div>
</div>

<!-- Link to local Bootstrap JS and dependencies -->
<script src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>
</body>
</html>
