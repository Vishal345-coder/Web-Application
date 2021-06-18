<%@include file="CommonHeader.jsp"%>

<div class="container register">
	<div class="row">
 		<div class="col-md-3 register-left">
     		<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
      		<h2>Protect Yourself</h2>
       		<h4>and</h4>
      		<h2>Others</h2>
  			<input type="submit" name="" value="Vaccination"/><br/>           
   		</div>
  		<div class="col-md-9 register-right">
  			<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
         		<li class="nav-item">
            		<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Stay Safe</a>
           		</li>
          		<li class="nav-item">
            		<a class="nav-link" id="profile-tab" data-toggle="tab" href="" role="tab" aria-controls="profile" aria-selected="true">Stay Healthy</a>
           		</li>
       		</ul>
   			<form:form action="VaccineUser" modelAttribute="vaccine" method="post">
        		<div class="tab-content" id="myTabContent">
            		<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                  		<h3 class="register-heading">Enter Details to Register for Vaccination</h3>
                 			<div class="row register-form">
                     			<div class="col-md-6">
                       				<div class="form-group">
                          				<form:input path="aadharNumber" class="form-control" placeholder="AadharNumber *" value="" />
                                    </div>
                                    <div class="form-group">
                                   		<form:input path="name" class="form-control" placeholder="Name *" value="" />
                                    </div>
                            	</div>
                                <div class="col-md-6">
                               		<div class="form-group">
                                 		<form:input path="mobNumber" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />
                                    </div>
                                    <div class="form-group">
                              			<form:textarea path="location" class="form-control" placeholder="Enter Your Address *" value="" />
                                    </div>
                                   	<div class="form-group">
                                  		<div class="maxl">
                                			<label class="radio inline"> 
                                       			<form:radiobutton path="vaccine" value="Covishield"/>
                                                    <span> Covishield </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <form:radiobutton path="vaccine" value="Covaccine"/>
                                                    <span>Covaccine </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <form:radiobutton path="vaccine" value="Sputnik V"/>
                                                    <span>Sputnik V </span> 
                                                </label>
                                        </div>
                                    </div>
                                    	<input type="submit" class="btnRegister"  value="Register"/>
                                </div>
                            </div>
                    </div>
                </div>
            </form:form>                   
</body>
</html>