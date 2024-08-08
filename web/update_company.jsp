<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
      <title>Add Company </title>
  </head>
  <body>
       
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
    <header class="text-center">
      <h1 class="display-9">Add Company</h1>
    </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3"action="Addcompany" method="POST">
       <div class="container-fluid"> 
      <div class="row">
  <div class="col-sm-6">
    <label for="txt_ccompanyname" class="form-label">Company name</label>
    <input type="text" onkeypress="javascript:return isString(event)"  value="<%=request.getParameter("company_name")%>" id="txt_ccompanyname" class="form-control"  name="txt_ccompanyname" placeholder="Company name" >
    <div class="valid-feedback">
   </div>
  </div>
     <div class="col-sm-6">
      <label for="txt_cemail" class="form-label">Company ID</label>
    <input type="id" class="form-control" id="txt_companyid" name="txt_companyid" value="<%=request.getParameter("company_id")%>" placeholder="Enter company ID">
  </div>
 </div> 
<div class="row">
  <div class="col-sm-6">
   <label for="txt_ccontact" class="form-label">Contact</label>
    <input type="text" onkeypress="javascript:return isContactno(event)" maxlength="10" value="<%=request.getParameter("company_contact")%>" class="form-control" id="txt_ccontact" name="txt_ccontact" placeholder="Enter Mobile No" required>
    <div class="valid-feedback">
   </div>
 </div>
  <div class="col-sm-6">
      <label for="txt_cemail" class="form-label">Email</label>
    <input type="email" class="form-control" id="txt_cemail" name="txt_cemail" value="<%=request.getParameter("company_email")%>" placeholder="Enter Email">
  </div>
  </div>
   </div>
<div class="row">
    <div class="col-sm-6">
  <label for="fileUpload"class="form-label">Image</label>
    <input type="file" class="form-control" name="image" value="<%=request.getParameter("company_image")%>" aria-label="file example" >
  </div>
    <div class="col-sm-6">
      <label for="txt_cdesciption">Company address</label>
  <textarea class="form-control" placeholder="Enter Company address" value="<%=request.getParameter("company_address")%>" id="txt_ccompanyaddress" name="txt_ccompanyaddress"></textarea>
  </div>
     </div>
  <div class="row">
   <div class="col-sm-6">
    <label for="txt_cbranch" class="form-label" >Branch</label>
    <select  id="inputState" id="txt_cbranch" name="txt_cbranch"class="form-control">
      <option selected>Select Branch</option>
      <option>Pune</option>
      <option>Mumbai</option>
      <option selected=""><%=request.getParameter("company_branches")%></option>
      <option>Banglore</option>
      <option>Chennai</option>
    </select>
  </div>
  <div class="col-sm-6">
      <label for="txt_cmainbranch" class="form-label" >Main Branch</label>
    <select id="inputState" id="txt_cmainbranch" name="txt_cmainbranch" class="form-control">
      <option selected>Select Main Branch</option>
      <option selected=""><%=request.getParameter("company_main_branch")%></option>
      <option>a</option>
      <option>b</option>
      <option>c</option>
    </select>
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