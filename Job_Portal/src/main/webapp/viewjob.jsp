<%@page import="com.entity.jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="com.DB.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Jobs</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body>
<%@include file="all_components/navbar.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-12">
<h5 class="text-center text-primary">All Jobs</h5>

<%
JobDAO dao=new JobDAO(DBconnect.getConn());
List<jobs> list=dao.getAllJobs();
for(jobs j:list){%>
	<div class="card mt-2">
<div class="card-body">
<div class="text-center text-primary">
<i class="far fa-clipboard fa-2x"></i>
</div>


<h6><%= j.getTitle() %></h6>
<p><%= j.getDescription() %></p>
<br>
<div class="form-row">
<div class="form-group col md-3">
<input type="text" class="form-control form-control-sm" value="Location:<%=j.getLocation() %>" readonly>
</div>
<div class="form-group col md-3">
<input type="text" class="form-control form-control-sm" value="Category:<%= j.getCategory() %>" readonly>
</div>
<div class="form-group col md-3">
<input type="text" class="form-control form-control-sm" value="Status:<%= j.getStatus() %>" readonly>
</div>
</div>
<h6>Publish Date:<%= j.getPdate() %></h6>
<div class="text-center">
<a href="editjob.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">Edit</a> <a
href="delete?id=<%=j.getId() %>" class="btn btn-sm bg-danger text-white">Delete</a>
</div>
</div>
</div>
<%}
%>

</div>
</div>
</div>
</body>
</html>