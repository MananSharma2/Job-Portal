<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.entity.jobs"%>
<%@page import="com.dao.JobDAO"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User: View More</title>
<%@include file="all_components/all_css.jsp"%>
</head>



	<%@include file="all_components/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">



				<%
				int id = Integer.parseInt(request.getParameter("id"));
				JobDAO dao = new JobDAO(DBconnect.getConn());
				jobs j = dao.getJobById(id);
				%>
				<div class="card mt-5 bg-dark text-white"
					style="box-shadow: 8px 9px 19px -10px rgba(33, 37, 41, 1);">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>



						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						<br>
						<div class="row">
							<div class="col col-md-3 d-inline">
								<input type="text" class="form-control form-control-sm"
									value="Location: <%=j.getLocation()%>" readonly>
							</div>

							<div class="col col-md-3 d-inline">
								<input type="text" class="form-control form-control-sm"
									value="Category: <%=j.getCategory()%>" readonly>
							</div>

							<div class="col col-md-3 d-inline">
								<input type="text" class="form-control form-control-sm"
									value="Status: <%=j.getStatus()%>" readonly>
							</div>
						</div>

						<h6 class="mt-3">
							Publish Date:<%=j.getPdate()%></h6>

					</div>

				</div>



			</div>
		</div>
	</div>
	
</body>
</html>