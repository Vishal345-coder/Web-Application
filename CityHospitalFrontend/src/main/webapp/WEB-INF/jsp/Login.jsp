<%@include file="CommonHeader.jsp"%>

<div class="container register">
	<div class="row">
    	<div class="col-md-3 register-left">
        	<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
            <h2>Welcome</h2>
           	<h4>to</h4>
            <h2>CityHospital</h2>
            <input type="submit" name="" value="Login"/><br/>
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
      		<form action="perform_Login" method="post">
            	<div class="tab-content" id="myTabContent">
             		<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                		<h3 class="register-heading">Fill Credentials to LogIn</h3>
             				<div class="row register-form">
                   				<div class="col-md-6">
                             	</div>
                              	<div class="col-md-6">
                                <div class="form-group">
                                	<input type="text" name="username" class="form-control" placeholder="username *" value="" />
                              	</div>
                                <div class="form-group">
                            		<input type="password" name="password" class="form-control" placeholder="Password *" value="" />
                           		</div>
                                 	<input type="submit" class="btnRegister"  value="LogIn"/>
                                </div>
                      		</div>
            		</div>
            	</div>
      		</form>                     
</body>
</html>