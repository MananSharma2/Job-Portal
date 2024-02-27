<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color: maroon;">
<%@include file="all_components/navbar.jsp"%>
<div class ="container-fluid">
<div class ="row p-4">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<div class="text-center">
<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
<h5>Registration</h5>
</div>

<form action="adduser" method="post">
<div class=form-group>
<label>Enter Full Name</label><input type="text" required ="required" class="form-control" 
id="exampleInputEmail" aria-describedby="emailhelp" name="name">
</div>
<div class="form-group">
<label>Enter Qualification</label><input  type="text" required ="required" class="form-control" 
id="exampleInputEmail" aria-describedby="emailhelp" name="qua">
</div>
<div class=form-group>
<label>Enter Email</label><input type="email" required ="required" class="form-control" 
id="exampleInputEmail" aria-describedby="emailhelp" name="email">
</div>
<div class="form-group">
<label>Enter Password</label><input type="password" required ="required" class="form-control" 
id="exampleInputPassword" name="ps">
</div>
<button type="submit"
class="btn btn-primary badge-pill btn-block">Register
</button>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>