<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
   <script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
  <title>Student details</title>
  </head>
  <body>
       <%@include file="header_user.jsp"  %>
       <br>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Student Details</h1>
       </header>
   
   <section class="container my-2 bg-gray  p-2">
     <form class="row g-3 p-3"action="student_details" method="POST">
      
      <div class="container-fluid"> 
      <div class="row">
  <div class="col-sm-6">
    <label for="txt_stusername" class="form-label">Username</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" id="txt_stusername" name="txt_stusername" value="<%=session.getAttribute("username")%>" value="<%=request.getParameter("username")%>" placeholder="Enter Username" required>
      <div class="invalid-feedback">
      </div>
      </div>
  </div>
     <div class="col-sm-6">
      <label for="txt_stpassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_stpassword" name="txt_stpassword" placeholder="Enter Password">
     <div class="invalid-feedback">
      </div>
     </div>
 </div> 

 
<div class="row">
    <div class="col-sm-6">
    <label for="txt_fullname" class="form-label">Fullname</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" id="txt_fullname" name="txt_fullname" value="<%=session.getAttribute("fullname")%>"  placeholder="Enter Fullname" required>
      <div class="invalid-feedback">
      </div>
      </div>
  </div>
  <div class="col-sm-6">
    <label for="txt_stcontact" class="form-label">Contact</label>
    <input type="text" class="form-control" id="txt_stcontact" name="txt_stcontact" value="<%=session.getAttribute("contact")%>" placeholder="Enter Mobile No" required>
    <div class="valid-feedback">
    </div>
  </div>
  
   </div>
<div class="row">
    <div class="col-sm-6">
      <label for="txt_stemail" class="form-label">Email</label>
    <input type="email" class="form-control" id="txt_stemail" name="txt_stemail" value="<%=session.getAttribute("email")%>" placeholder="Enter Email">
  </div>
    
  <div class="col-sm-6">
   <label for="txt_stdob" class="form-label">DOB</label>
    <input type="date" class="form-control" id="txt_stdob" name="txt_stdob" placeholder="Enter dob"   onchange="calculateAge()">
  </div>
 
   </div>
<div class="row">
     <div class="col-sm-6">
    <label for="txt_gender" class="form-label">Gender</label>
    <select id="inputCountry" id="txt_gender" name="txt_gender" class="form-control">
      <option selected>Select Gender</option>
      <option>Male</option>
      <option>Female</option>
    </select>
  </div>
    <div class="col-sm-6">
      <label for="txt_stage" class="form-label">Age</label>
    <input type="Number" class="form-control" id="txt_stage" name="txt_stage" placeholder="Enter Age">
  </div>
 
  </div>
         
<div class="container-fluid bg-gray  py-3">
   <header class="text-center">
   <h1 class="display-9">Address Details</h1>
  </header>
   </div>
   
     <div class="container-fluid"> 
      <div class="row">
   <div class="col-sm-6">
    <label for="txt_staddress">Address</label>
  <textarea class="form-control" placeholder="Enter Address"  id="txt_staddress" name="txt_staddress"></textarea>
  </div>
     <div class="col-sm-6">
    <div class="form-group">
                       
         <select class="form-control" onchange="print_state('state',this.selectedIndex);" id="txt_country" name ="txt_country"></select>
         <script language="javascript">print_country("country");</script>
                      </div>
     </div>
 </div> 
 <div class="row">
  <div class="col-sm-6">
      <div class="form-group">
                        
                        <select class="form-control" name ="txt_state" id ="txt_state"  onchange="print_city('sts', this.selectedIndex);"></select>
                         <script language="javascript">print_country("country");</script>
                      </div>
 
  </div>
  <div class="col-sm-6">
      
                    <div class="form-group">
                        
<!--                       <select  onchange="print_city('state', this.selectedIndex);" id="sts" name ="stt" class="form-control" required></select>-->
<select id ="sts" class="form-control" required></select>

                     
                   
      <label for="txt_stcity" class="form-label">City</label>
    <input type="text" class="form-control" id="txt_stcity" name="txt_stcity" placeholder="Enter City">
  </div>
   </div>
 <div class="row">
  <div class="col-sm-6">
    <label for="txt_stpincode" class="form-label">Pin Code</label>
    <input type="text" class="form-control" id="txt_stpincode" name="txt_stpincode" placeholder="Enter Pin Code">
  </div>
     
    
     
     
 </div>
         
 <div class="container-fluid bg-gray  py-3">
    <header class="text-center">
     <h1 class="display-9">Document Details</h1>
    </header>
   </div>
   
   <div class="container-fluid"> 
    <div class="row">
   <div class="col-sm-5">
   <label for="fileUpload"class="form-label">Image</label>
    <input type="file" id="txt_image" name="txt_image" accept="image/x-png,image/jpeg" class="form-control" aria-label="file example" >
  </div>
     <div class="col-sm-5">
     <label for="fileUpload" class="form-label">Upload CV</label>
    <input type="file" id="txt_cv" name="txt_cv" class="form-control" aria-label="file example" >
     </div>
  </div> 
 </div>
 </div>


  <div class="row">
    <div class="col-sm-12 text-center">
    <button type="submit" name="btn" value="save" class="col btn btn-pink-moon btn-rounded ">Save</button>
    <button type="submit" name="btn" value="clear" class="col btn btn-pink-moon btn-rounded">Clear</button>
    </div>
  </div>
      </div>
   </form>

  </section>
  </div>
  
   

        
         <script>
    function calculateAge() {
      var dobInput = document.getElementById("txt_stdob");
      var dob = new Date(dobInput.value);
      var today = new Date();
      var age = today.getFullYear() - dob.getFullYear();
      var monthDiff = today.getMonth() - dob.getMonth();
      if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < dob.getDate())) {
        age--;
      }
      document.getElementById("txt_stage").value = age;
    }
    
    
    //adress details
    
  </script>


  </body>
</html>