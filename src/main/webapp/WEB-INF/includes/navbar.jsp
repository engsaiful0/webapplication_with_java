<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="<%= request.getContextPath() %>/index.jsp">My Website</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/about.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/view-contact">Contact</a>
        </li>

        <!-- Check if the user is logged in -->
        <%
          String username = (String) session.getAttribute("username");
          if (username == null) {
        %>
        <!-- Show Login and Sign Up buttons if the user is not logged in -->
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/signup.jsp">Sign Up</a>
        </li>
        <%
        } else {
        %>
        <!-- Show Sign Out button if the user is logged in -->
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/logout.jsp">Sign Out</a>
        </li>
        <%
          }
        %>
      </ul>
    </div>
  </div>
</nav>
