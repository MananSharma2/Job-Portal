<%@page import="com.entity.jobs"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="com.DB.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Jobs</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color: maroon;">
<%@include file="all_components/navbar.jsp"%>
<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class="card">
<div class="card-body">
<div class="text-center text-success">
<i class="fa fa-user-friends fa-3x" ></i>

<% 
int id=Integer.parseInt(request.getParameter("id"));
JobDAO dao=new JobDAO(DBconnect.getConn());
jobs j=dao.getJobById(id);
%>

<h5>Edit Jobs</h5>
</div>
<form action="update" method="post">
<input type="hidden" value="<%= j.getId()%>" name="id">
<div class="form-group">
<label>Enter Title</label><input type="text" name="title" required class="form-control" value="<%=j.getTitle() %>">
</div>
<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label><select name="location" class="custom-select" id="inlineFormCustomSelectPref">
<option value="<%= j.getLocation() %>"><%= j.getLocation() %></option>
<option value="Delhi">Delhi</option>
<option value="Mumbai">Mumbai</option>
<option value="Banglore">Banglore</option>
<option value="Chennai">Chennai</option>
</select>
</div>
<div class="form-group col-md-4">
<label>Category</label><select class="custom-select" id="inlineFormCustomSelectPref" name="category">
<option value="<%= j.getCategory() %>"><%= j.getCategory() %></option>
<option value="IT">IT</option>
<option value="Developer">Developer</option>
<option value="Developer">Banking</option>
<option value="Developer">Engineer</option>
<option value="Developer">Teacher</option>
</select>
</div>
<div class="form-group col-md-4" >
<label>Status</label><select class="form-control" name="status">
<option class="Active" value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
<option class="Active" value="Active">Active</option>
<option class="Inactive" value="Inactive">Inactive</option>>
</select>
</div>
</div>
<div class="form-group">
<label>Enter Description</label>
<textarea rows="6" cols="" name="desc" class="form-control"><%= j.getDescription() %></textarea>
</div>
<button class="btn btn-success">Publish Job</button>
</form>
</div>
</div>
</div>
</div>
</body>
</html>