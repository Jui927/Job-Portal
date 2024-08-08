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
      <input type="text" class="form-control" id="txt_stusername" name="txt_stusername"  value="<%=request.getParameter("username")%>" placeholder="Enter Username" required>
      <div class="invalid-feedback">
      </div>
      </div>
  </div>
     <div class="col-sm-6">
      <label for="txt_stpassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_stpassword" name="txt_stpassword" value="<%=request.getParameter("pass")%>" placeholder="Enter Password">
     <div class="invalid-feedback">
      </div>
     </div>
 </div> 

 
<div class="row">
    <div class="col-sm-6">
    <label for="txt_fullname" class="form-label">Fullname</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" id="txt_fullname" name="txt_fullname" value="<%=request.getParameter("username")%>"  placeholder="Enter Fullname" required>
      <div class="invalid-feedback">
      </div>
      </div>
  </div>
  <div class="col-sm-6">
    <label for="txt_stcontact" class="form-label">Contact</label>
    <input type="text" class="form-control" id="txt_stcontact" name="txt_stcontact" value="<%=request.getParameter("contact")%>" placeholder="Enter Mobile No" required>
    <div class="valid-feedback">
    </div>
  </div>
  
   </div>
<div class="row">
    <div class="col-sm-6">
      <label for="txt_stemail" class="form-label">Email</label>
    <input type="email" class="form-control" id="txt_stemail" name="txt_stemail" value="<%=request.getParameter("email")%>" placeholder="Enter Email">
  </div>
    
  <div class="col-sm-6">
   <label for="txt_stdob" class="form-label">DOB</label>
    <input type="date" class="form-control" id="txt_stdob" name="txt_stdob" value="<%=request.getParameter("dob")%>" placeholder="Enter dob">
  </div>
 
   </div>
<div class="row">
     <div class="col-sm-6">
    <label for="txt_gender" class="form-label">Gender</label>
    <select id="inputCountry" id="txt_gender" name="txt_gender"  class="form-control">
      <option selected>Select Gender</option>
        <option selected=""><%=request.getParameter("gender")%></option>
      <option>Male</option>
      <option>Female</option>
    </select>
  </div>
    <div class="col-sm-6">
      <label for="txt_stage" class="form-label">Age</label>
    <input type="Number" class="form-control" id="txt_stage" name="txt_stage" value="<%=request.getParameter("age")%>" placeholder="Enter Age">
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
  <textarea class="form-control" placeholder="Enter Address"  id="txt_staddress" name="txt_staddress"><%=request.getParameter("address")%></textarea>
  </div>
     <div class="col-sm-6">
     <label for="txt_country" class="form-label">Country</label>
    <select id="inputCountry"  id="txt_country" name="txt_country" class="form-control">
      <option selected>Select Country</option>
      <option>India</option>
       <option selected=""><%=request.getParameter("country")%></option>
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
       <option selected=""><%=request.getParameter("state")%></option>
      <option>Maharashtra</option>
      <option>Gujrat</option>
      <option>Karnataka</option>
      <option>Goa</option>
    </select>
  </div>
  <div class="col-sm-6">
      <label for="txt_stcity" class="form-label">City</label>
    <input type="text" class="form-control" id="txt_stcity" name="txt_stcity" value="<%=request.getParameter("city")%>" placeholder="Enter City">
  </div>
   </div>
 <div class="row">
  <div class="col-sm-6">
    <label for="txt_stpincode" class="form-label">Pin Code</label>
    <input type="text" class="form-control" id="txt_stpincode" name="txt_stpincode" value="<%=request.getParameter("pincode")%>" placeholder="Enter Pin Code">
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
    <input type="file" id="txt_image" name="txt_image" class="form-control" accept="image/x-png,image/jpeg" value="<%=request.getParameter("image")%>" aria-label="file example" >
  </div>
     <div class="col-sm-5">
         <label for="fileUpload"class="form-label">Upload CV</label>
    <input type="file" id="txt_cv" name="txt_cv" class="form-control" value="<%=request.getParameter("cv")%>" aria-label="file example" >
     </div>
  </div> 
 </div>
 </div>


  <div class="row">
    <div class="col-sm-12 text-center">
    <button type="submit" name="btn" value="update" class="col btn btn-pink-moon btn-rounded ">Update</button>
    <button type="submit" name="btn" value="delete" class="col btn btn-pink-moon btn-rounded">Delete</button>
    </div>
  </div>
      </div>
     </section>
  </div>
  
     </form>


  </body>
</html>
