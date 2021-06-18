<%@include file ="CommonHeader.jsp"%>

<div class="container register">
	<div class="row">
    	<div class="col-md-3 register-left">
        	<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
           	<h2>Welcome</h2>
          	<h4>to</h4>
        	<h2>CityHospital</h2>
        	<input type="submit" name="" value="Patient"/><br/>
      	</div>
        <div class="col-md-9 register-right">
       		<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
           		<li class="nav-item">
              		<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Stay Home</a>
            	</li>
           		<li class="nav-item">
              		<a class="nav-link" id="profile-tab" data-toggle="tab" href="" role="tab" aria-controls="profile" aria-selected="true">Stay Safe</a>
             	</li>
       		</ul>
     		
            	<div class="tab-content" id="myTabContent">
                  	<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                  		<h3 class="register-heading">Welcome ${sessionScope.username}</h3>
                     		<div class="row register-form">
                         		<div class="col-md-6">
                          			<h5>Coronavirus DO'S</h5>
                                  	<p>Use A Mask</p> 
                                   	<p>Keep Distance from others</p>
                                    <p>Stay At Home</p>
                                    <p>Use Hand Sanitizer</p>
                                 </div>
                                 <div class="col-md-6">
                               		<h5>DONT'S</h5>
                              		<p>Avoid Handshakes</p>
                             		<p>Avoid Traveling if not Required</p>
                           			<p>Don't Touch Face</p>
                              		<p>Avoid Crowd Places</p>		
                                 </div>
                            </div>
                    </div>
             	</div>
      	
