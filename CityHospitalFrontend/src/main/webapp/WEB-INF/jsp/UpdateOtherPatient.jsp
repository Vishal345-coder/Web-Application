<%@ include file ="CommonHeader.jsp" %>

<div class="table-responsive">
	<form action="<c:url value='/UpdateOtherPatient'/>" method="post">
		<table align="center" class="table">
			<tr>
				<td colspan="2"><center>Other Patients Information</center></td>
			</tr>
			<tr>
				<td>Patient ID</td>
				<td><input type="text" name="patientId" value="${otherPatient.patientId}"></td>
			</tr>
			<tr>
				<td>Patient Name</td>
				<td><input type="text" name="patientName" value="${otherPatient.patientName}"></td>
			</tr>
			<tr>
				<td>Patient Age</td>
				<td><input type="text" name="patientAge" value="${otherPatient.patientAge}"></td>
			</tr>
			<tr>
				<td>Patient Admit Date</td>
				<td><input type="text" name="patientAdmitDate" value="${otherPatient.patientAdmitDate}"></td>
			</tr>
			<tr>
				<td>Relative Mobile Number</td>
				<td><input type="text" name="relativeMobNo" value="${otherPatient.relativeMobNo}"></td>
			</tr>
			<tr>
				<td>Patient Address</td>
				<td><textarea rows="5" cols="30" name="patientAddress" >"${otherPatient.patientAddress}"</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<center>
					<input type="reset" value="RESET"/>
					<input type="submit" value="UPDATE PATIENT"/>
				</center>
				</td>
			</tr> 
		</table>
	</form>
</div>
</body>
</html>