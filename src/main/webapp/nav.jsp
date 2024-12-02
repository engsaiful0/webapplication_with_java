<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP - Basic Form with Bootstrap</title>
  <!-- Link to local Bootstrap CSS -->
  <link href="<%= request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
  <h1 class="my-4">JSP - Basic Form</h1>

  <!-- Form Start -->
  <form action="submit-form" method="post">
    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">
    </div>

    <div class="form-group">
      <label for="email">Email address</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
    </div>
    <div class="form-group">
      <label for="email">Mobile</label>
      <input type="text" class="form-control" id="text" name="email" placeholder="Enter your mobile">
    </div>

    <div class="form-group">
      <label for="message">Message</label>
      <textarea class="form-control" id="message" name="message" rows="3" placeholder="Enter your message"></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  <!-- Form End -->

  <p class="mt-4"><a href="about.jsp" class="btn btn-info">Go to About Page</a></p>
  <p class="mt-4"><a href="view-contact" class="btn btn-info">View Contact</a></p>
</div>

<!-- Link to local Bootstrap JS and dependencies -->
<script src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>
</body>
</html>
