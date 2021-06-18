<%@include file="CommonHeader.jsp"%>

<table align="center" class="table">
	<tr bgcolor="pink">
		<td colspan="2">
			Confirm Your Details
		</td>
	</tr>
	<tr>	
		<td>Username</td>
		<td>${user.username}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${user.name}</td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>${user.gender}</td>
	</tr>
	<tr>
		<td>Contact Number</td>
		<td>${user.contactNumber}</td>
	</tr>
	<tr>
		<td>Email Id</td>
		<td>${user.emailId}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${user.address}</td>
	</tr>
	<tr>
		<td>Role</td>
		<td>${user.role}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>*****</td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="Login">Confirm and SignIn</a>
				&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="Register">Edit Details</a>
		</td>
	</tr>
</table>
</body>
</html>