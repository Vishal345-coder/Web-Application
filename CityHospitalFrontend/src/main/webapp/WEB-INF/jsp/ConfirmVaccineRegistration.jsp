<%@include file="CommonHeader.jsp"%>

<table align="center" class="table">
	<tr bgcolor="pink">
		<td colspan="2">
			Confirm Your Details
		</td>
	</tr>
	<tr>	
		<td>Aadhar Number</td>
		<td>${vaccine.aadharNumber}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${vaccine.name}</td>
	</tr>
	<tr>
		<td>Mobile Number</td>
		<td>${vaccine.mobNumber}</td>
	</tr>
	<tr>
		<td>Location</td>
		<td>${vaccine.location}</td>
	</tr>
	<tr>
		<td>Vaccine</td>
		<td>${vaccine.vaccine}</td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="Home">Confirm and Register</a>
				&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="RegisterVaccineUser">Edit Details</a>
		</td>
	</tr>
</table>
</body>
</html>