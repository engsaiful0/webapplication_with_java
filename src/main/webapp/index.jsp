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
  <%@ include file="/WEB-INF/includes/navbar.jsp" %>

  <!-- Form Start -->
  <form action="submit-form" method="post" enctype="multipart/form-data">
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
    <div class="form-group">
      <label for="image">Upload Image</label>
      <input type="file" class="form-control-file" id="image" name="image">
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  <!-- Form End -->
</div>

<!-- Link to local Bootstrap JS and dependencies -->
<script src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>
</body>
</html>
