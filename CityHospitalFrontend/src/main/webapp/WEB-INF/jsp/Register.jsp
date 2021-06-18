<%@include file="CommonHeader.jsp"%>

<div class="container register">
	<div class="row">
   		<div class="col-md-3 register-left">
 			<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
   			<h2>Welcome</h2>
    		<h4>to</h4>
      		<h2>CityHospital</h2>
    		<input type="submit" name="" value="Register"/><br/>
 		</div>
        <div class="col-md-9 register-right">
      		<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
             	<li class="nav-item">
              		<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Doctor</a>
            	</li>
                <li class="nav-item">
                	<a class="nav-link" id="profile-tab" data-toggle="tab" href="" role="tab" aria-controls="profile" aria-selected="true">Patient</a>
             	</li>
        	</ul>
            <form:form action="registerUser" modelAttribute="user" method="post">
          		<div class="tab-content" id="myTabContent">
               		<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                 		<h3 class="register-heading">Enter Details to Register</h3>
                      		<div class="row register-form">
                       			<div class="col-md-6">
                            		<div class="form-group">
                                    	<form:input path="username" class="form-control" placeholder="username *" value="" />
                                   	</div>
                                    <div class="form-group">
                                   		<form:input path="name" class="form-control" placeholder="Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                    	<form:password path="password" class="form-control" placeholder="Password *" value="" /> 
                                    </div>
                                    <div class="form-group">
                                    	<form:password path="rPassword" class="form-control"  placeholder="Confirm Password *" value="" />
                                    </div>
                                    <div class="form-group">
                                   		<form:input path="gender" class="form-control"  placeholder="Enter Your Gender *" value="" />
                                    </div>
                              	</div>
                                <div class="col-md-6">
                                	<div class="form-group">
                                  		<div class="maxl">
                                       		<label class="radio inline"> 
                                           		<form:radiobutton path="role" value="ROLE_DOCTOR"/>
                                                    <span> ROLE_DOCTOR </span> 
                                             </label>
                                             <label class="radio inline"> 
                                           		<form:radiobutton path="role" value="ROLE_PATIENT"/>
                                                    <span>ROLE_PATIENT </span> 
                                             </label>
                                         </div>
                                	</div>
                                    <div class="form-group">
                                		<form:input path="emailId" class="form-control" placeholder="Your Email *" value="" />
                                    </div>
                                    <div class="form-group">
                                     	<form:input path="contactNumber" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />
                                    </div>
                                    <div class="form-group">
                                    	<form:textarea path="address" class="form-control" placeholder="Enter Your Address *" value="" />
                                    </div>
                                     	<input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                            </div>
                   	</div>
                </div>
            </form:form>                       
</body>
</html>