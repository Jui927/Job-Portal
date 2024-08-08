<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
    <title>Add jobs </title>
  </head>
  <body>
       <%@include file="header_admin.jsp"  %>
       <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Update Jobs</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3"action="Add_jobs" method="POST">
         
         

       <div class="container-fluid"> 
           <div class="row">
          
  <div class="col-sm-6 ">
<label for="txt_jobid" class="form-label">Job ID</label>
    <input type="text" class="form-control" id="txt_jobid" name="txt_jobid"  value="<%=request.getParameter("job_id")%>" placeholder="Job ID" >     </div>
    <div class="col-sm-6 ">
         <label for="txt_compbname" class="form-label">Company name</label>
    <input type="text" onkeypress="javascript:return isString(event)" value="<%=request.getParameter("company_name")%>" class="form-control" id="txt_compname" name="txt_compbname" placeholder="Job name" >
    <div class="valid-feedback">
    </div>
    </div>  
</div>
        <div class="row">
  <div class="col-sm-6">
    <label for="txt_ddesignationname" class="form-label">Designation name</label>
    <input type="text" onkeypress="javascript:return isString(event)" value="<%=request.getParameter("designation_name")%>" class="form-control" id="txt_ddesignationname" name="txt_ddesignationname" placeholder="Enter designation name" >
    <div class="valid-feedback">
     </div>
  </div>
     <div class="col-sm-6">
     <label for="txt_jlocation"  class="form-label">Job Location</label>
    <select id="inputState" id="txt_jlocation"name="txt_jlocation" class="form-control">
      <option selected>Select Location</option>
       <option selected=""><%=request.getParameter("job_location")%></option>
       <option>Pune</option>
      <option>Banglore</option>
      <option>Mumbai</option>
      <option>Chennai</option>
    </select>
  </div>
 </div> 
<div class="row">
   <div class="col-sm-6">
     <label for="txt_jcategory"  class="form-label">Select Category</label>
    <select id="inputState" id="txt_jcategory" name="txt_jcategory" class="form-control">
      <option selected>Select Location</option>
       <option selected=""><%=request.getParameter("selectcategory")%></option>
       <option>IT</option>
       <option>Finance</option>
      <option>Banking</option>
      
    </select>
  </div>
  <div class="col-sm-6">
      <label for="txt_jexperienceequired" class="form-label">Experience Required</label>
    <input type="text" class="form-control" id="txt_jexperienceequired" value="<%=request.getParameter("job_experience")%>"  name="txt_jexperienceequired" placeholder="Experience Required" >
    <div class="valid-feedback">
    </div>
  </div>
  </div>
<div class="row">
   <div class="col-sm-6">
    <label for="txt_jsalary" class="form-label">Salary</label>
    <input type="text" onkeypress="javascript:return isFloat(event)" value="<%=request.getParameter("job_salary")%>" class="form-control" id="txt_jsalary" name="txt_jsalary" placeholder="Enter Salary" required>
    <div class="valid-feedback">
   </div>
    </div>
  <div class="col-sm-6">
      <label for="txt_jjobdescription">Job Description</label>
  <textarea class="form-control" placeholder="Description" id="txt_jjobdescription" value="<%=request.getParameter("job_descr")%>" name="txt_jjobdescription"></textarea>
  </div>
   </div>
  </div>
 <div class="row">
  <div class="col-sm-12 text-center">
        <button  type="submit" name="btn" value="Update" class="col btn btn-pink-moon btn-rounded ">Update</button>
        <button  type="submit" name="btn" value="Delete" class="col btn btn-pink-moon btn-rounded ">Delete</button>

     </div>
</div>
     </form>
</section>
 </body>
</html>