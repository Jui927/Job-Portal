<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
  <title>Student details</title>
  </head>
  <body>
       
       <div class="container-fluid bg-gray  py-12">
            <div class="row" >
                 <div class="col-sm-6">
           
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Student Details</h1>
       </header>
   
   <section class="container my-2 bg-gray  p-2">
     <form class="row g-3 p-3"action="student_details" method="POST">
      
      <div class="container-fluid bg-gray py-12"> 
      <div class="row" >
  <div class="col-sm-6">
    
         
    <label for="txt_stusername" class="form-label">Username</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" id="txt_stusername" name="txt_stusername"   placeholder="Enter Username" required>
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
      <input type="text" class="form-control" id="txt_fullname" name="txt_fullname"   placeholder="Enter Fullname" required>
      <div class="invalid-feedback">
      </div>
      </div>
  </div>
  <div class="col-sm-6">
    <label for="txt_stcontact" class="form-label">Contact</label>
    <input type="text" class="form-control" id="txt_stcontact" name="txt_stcontact"  placeholder="Enter Mobile No" required>
    <div class="valid-feedback">
    </div>
  </div>
  
   </div>
<div class="row">
    <div class="col-sm-6">
      <label for="txt_stemail" class="form-label">Email</label>
    <input type="email" class="form-control" id="txt_stemail" name="txt_stemail"  placeholder="Enter Email">
  </div>
    
  <div class="col-sm-6">
   <label for="txt_stdob" class="form-label">DOB</label>
    <input type="date" class="form-control" id="txt_stdob" name="txt_stdob" placeholder="Enter dob">
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
     <label for="txt_country" class="form-label">Country</label>
    <select id="inputCountry"  id="txt_country" name="txt_country" class="form-control">
      <option selected>Select Country</option>
      <option>India</option>
      <option>Amerika</option>
      <option>Australia</option>
      <option>Canada</option>
    </select>
     </div>
 </div> 
 <div class="row">
  <div class="col-sm-6">
  <label for="txt_state" class="form-label">State</label>
    <select id="inputState" id="txt_state" name="txt_state" class="form-control">
      <option selected>Select State</option>
      <option>Maharashtra</option>
      <option>Gujrat</option>
      <option>Karnataka</option>
      <option>Goa</option>
    </select>
  </div>
  <div class="col-sm-6">
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
    <input type="file" id="txt_image" name="txt_image" class="form-control" aria-label="file example" >
  </div>
     <div class="col-sm-5">
     <label for="fileUpload" class="form-label">Upload CV</label>
    <input type="file" id="txt_cv" name="txt_cv"class="form-control" aria-label="file example" >
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
  </div>
    </div>
  
  
   <div class="col-sm-6">
      

       <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Educational Details</h1>
       </header>
       
   </div>
   <section class="container my-2 bg-gray p-2" >
     <form class="row g-3 p-3">
       <div class="container-fluid"> 
       <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="validationCustom01" class="form-label">Select Graduation</label>
    <br>
   <input type="radio" class="form-check-input" id="radio1" name="graduation" value="ug" checked onclick="show1()">Under Graduation
  <label class="form-check-label" for="radio1"></label>
</div>
  <div class="col-sm-2"></div>
   </div>
 <div class="row" id="ug">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_stream" class="form-label">Select Stream</label>
    <select id="inputCountry" id="txt_stream" name="txt_stream" class="form-control">
      <option selected>Select Under Graduation Stream</option>
      <option>BCS</option>
      <option>B.Sc</option>
      <option>BE</option>
      <option>B.Tech</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <input type="radio" class="form-check-input" id="radio1" name="graduation" value="pg" onclick="show2()">Post Graduation
  <label class="form-check-label" for="radio1"></label>
</div>
  <div class="col-sm-2"></div>
   </div>
   <script type="text/javascript">
    function show1(){
  document.getElementById('pg').style.display ='none';
  document.getElementById('ug').style.display ='block';
}
     function show2(){
  document.getElementById('pg').style.display = 'block';
  document.getElementById('ug').style.display ='none';
}
   </script>
   <div class="row"  id="pg" style="display:none">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_stream1" class="form-label">Select Stream</label>
    <select id="inputCountry" id="txt_stream1" name="txt_stream1" class="form-control">
      <option selected>Select </option>
      <option>MCA</option>
      <option>M.Sc</option>
      <option>M.Tech</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <label for="txt_egraduationpercent" class="form-label">Graduation Percentage</label>
    <input type="inputnumber" class="form-control" onkeypress="javascript:return isFloat(event)" id="txt_egraduationpercent" name="txt_egraduationpercent" placeholder="Enter Graduation Percentage">
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_uniname" class="form-label">University Name</label>
    <select id="inputCountry" id="txt_uniname" name="txt_uniname" class="form-control">
      <option selected>Select University Name</option>
      <option>a</option>
      <option>b</option>
      <option>c</option>
      <option>d</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_eyear" class="form-label">Year</label>
    <input type="number" class="form-control" onkeypress="javascript:return isFloat(event)" placeholder="yyyy" min="2000" max="2025" id="txt_eyear" name="txt_eyear" placeholder="Enter Year" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_12percentage" class="form-label">12th Percentage</label>
    <input type="inputnumber" class="form-control"onkeypress="javascript:return isFloat(event)" id="txt_12percentage" name="txt_12percentage" placeholder="Enter 12th Percentage" >
  </div>
  <div class="col-sm-2"></div>
   </div>

<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_12board" class="form-label">Board</label>
    <select id="inputCountry" id="txt_12board" name="txt_12board" class="form-control">
      <option selected>Select Board</option>
      <option>a</option>
      <option>b</option>
      <option>c</option>
      <option>d</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_e12year" class="form-label">Year</label>
    <input type="number" class="form-control" placeholder="yyyy" min="2000" max="2025" id="txt_e12year" name="txt_e12year" placeholder="Enter Year" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_10percentage" class="form-label">10th Percentage</label>
    <input type="inputnumber" class="form-control" onkeypress="javascript:return isFloat(event)" id="txt_10percentage" name="txt_10percentage" placeholder="Enter 10th Percentage">
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_10board" class="form-label">Board</label>
    <select id="inputCountry" id="txt_10board" name="txt_10board" class="form-control">
      <option selected>Select Board</option>
      <option>a</option>
      <option>b</option>
      <option>c</option>
      <option>d</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_e10year" class="form-label">Year</label>
    <input type="number" class="form-control" placeholder="yyyy" min="2000" max="2025" id="txt_e10year" name="txt_e10year" placeholder="Enter Year" >
    <div class="valid-feedback">
     </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
  </div>
    <div class="row">
    <div class="col-sm-12 text-center">
         <button type="submit" name="btn" value="Submit" class="col btn btn-pink-moon btn-rounded ">Submit</button>
        <button type="submit" name="btn" value="Cancel"  class="col btn btn-pink-moon btn-rounded">Cancel</button>
     </div>
</div>
</section>

   
       
       
  
   
   
   
   
   
   
   
   
   
   </div>
   </div>
       </div>
  
     </form>
</section>

  </body>
</html>