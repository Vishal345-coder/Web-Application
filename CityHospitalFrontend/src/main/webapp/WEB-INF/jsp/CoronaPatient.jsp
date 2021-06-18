<%@include file="CommonHeader.jsp"%>

<div class="container register">
	<div class="row">
    	<div class="col-md-3 register-left">
        	<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
            <h2>CITY</h2>
            <h2>HOSPITAL</h2>
            <input type="submit" name="" value="Corona Patients"/><br/>
		</div>
		
		<div class="col-md-9 register-right">
       		<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
            	<li class="nav-item"> 
                	<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Healthier</a>
                </li>
                <li class="nav-item">
                	<a class="nav-link" id="profile-tab" data-toggle="tab" href="" role="tab" aria-controls="profile" aria-selected="true">Happier</a>
                </li>
       		</ul>
                        
           	<form action="<c:url value='/insertCoronaPatient'/>" method="post">
            	<div class="tab-content" id="myTabContent">
               		<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    	<h3 class="register-heading">CORONA PATIENTS</h3>
                        	<div class="row register-form">
                           		<div class="col-md-6">
                                	<div class="form-group">
                                    	<input type="text" name="patientId" class="form-control" placeholder="Patient Id *" value="" />
                                    </div>
                                    <div class="form-group">
                                    	<input type="text" name="patientName" class="form-control" placeholder="Patient Name *" value="" />
                                   	</div>
                                    <div class="form-group">
                                    	<input type="text" name="patientAge" class="form-control" placeholder="Patient Age *" value="" />
                                    </div>
                                    <div class="form-group">
                                    	<input type="text" name="patientAdmitDate" class="form-control" placeholder="Patient Admit Date *" value="" />
                                    </div>
                                </div>
                               	<div class="col-md-6">
                                	<div class="form-group">
                                    	<input type="text" name="relativeMobNo" class="form-control" placeholder="Relative Mobile No *" value="" />
                                    </div>
                                    <div class="form-group">
                                    	<textarea rows="5" cols="30" name="patientAddress" class="form-control" placeholder="Address *" value="" /></textarea>
                                    </div>
                                    	<input type="submit" class="btnRegister"  value="INSERT"/>
                              	</div>
                             </div>
                    </div>
                </div>
        </div>
            </form>

<table align="center" cellspacing="3" cellpadding="3" class="table table-condensed">
	<tr bgcolor="#8080ff">
		<td>Patient ID</td>
		<td>Patient Name</td>
		<td>Patient Age</td>
		<td>Patient Admit Date</td>
		<td>Relative Mob No</td>
		<td>Patient Address</td>
		<td>Operation</td>
	</tr>
	
	<c:forEach items="${coronaPatientList}" var= "coronaPatient">
	<tr bgcolor="#b3c6ff">
		<td>${coronaPatient.patientId}</td>
		<td>${coronaPatient.patientName}</td>
		<td>${coronaPatient.patientAge}</td>
		<td>${coronaPatient.patientAdmitDate}</td>
		<td>${coronaPatient.relativeMobNo}</td>
		<td>${coronaPatient.patientAddress}</td>
		
		<td>
			<a href="<c:url value='/deleteCoronaPatient/${coronaPatient.patientId}'></c:url>">Delete</a>
				&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<c:url value='/editCoronaPatient/${coronaPatient.patientId}'></c:url>">Edit</a>
		</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>