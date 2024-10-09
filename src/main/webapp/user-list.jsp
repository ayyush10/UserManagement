<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>User Management Application</title>
  <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
</head>
<body>
<header>
  <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
    <div>
      <a href="https://www.xadmin.net" class="navbar-brand">User Management</a>
    </div>
    <ul class="navbar-nav">
      <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Home</a></li>
    </ul>
  </nav>
</header>
<br>
<div class="row">
  <div class="container">
    <h3 class="text-center">List of Users</h3>
    <hr>
    <div class="container text-left">
      <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>
    </div>
    <br>
    <table class="table table-bordered">
      <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="user" items="${listUser}">
        <tr>
          <td>${user.id}</td>
          <td>${user.name}</td>
          <td>${user.email}</td>
          <td>${user.country}</td>
          <td>
            <a href="edit?id=${user.id}" class="btn btn-info">Edit</a>
            <a href="delete?id=${user.id}" class="btn btn-danger">Delete</a>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>