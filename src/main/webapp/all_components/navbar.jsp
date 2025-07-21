<%@page import="com.User.UserDetails"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#" style="color: black;">Navbar</a>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" style="color: black;" href="index.jsp">Home </a></li>
			<li class="nav-item"><a class="nav-link" style="color: black;" href="addNotes.jsp">Add notes</a></li>
			<li class="nav-item"><a class="nav-link" style="color: black;" href="showNotes.jsp">Show notes</a></li>
		</ul>
		
			<%
			UserDetails user = (UserDetails) session.getAttribute("UserD");
			if (user != null) {
				//System.out.println(user.getName());
			%>

		<div class="ml-auto d-flex">
			<a class="btn btn-outline-primary my-2 my-sm-0" data-toggle="modal" data-target="#exampleModal" style="color: black;" type="submit" href=" login.jsp"><%=user.getName()%>
			</a>
			<a class="btn btn-outline-primary my-2 my-sm-0 ml-2" style="color: black;" type="submit" href="LogoutServlet">Logout </a>
		</div>
		
		<!-- Button trigger modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title w-100 text-center" id="exampleModalLabel">Profile</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="container text-center">
							<i class="fas fa-user fa-3x"></i>
							<h5></h5>
							<table class="table">
								<tbody>
									<tr>
										<th>User Id</th>
										<td><%=user.getId()%></td>
									</tr>

									<tr>
										<th>Full Name</th>
										<td><%=user.getName()%></td>
									</tr>

									<tr>
										<th>Email Id</th>
										<td><%=user.getemail()%></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>

		<% } else { %>
			<div class="ml-auto d-flex">
				<a class="btn btn-outline-success my-2 my-sm-0" type="submit" style="color: black;" href="login.jsp">Login</a>
				<a class="btn btn-outline-success my-2 my-sm-0 ml-2" type="submit" style="color: black;" href="register.jsp">Register</a>
			</div>
		<% } %>
	
	</div>
</nav>






