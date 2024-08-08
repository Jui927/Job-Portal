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
    <title>Designation list</title>
  </head>
  <body>
       <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Add Designation</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3"action="Add_designation" method="POST">
         
      
        <div class="container-fluid"> 
      <div class="row">
        <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="desgn_name" class="form-label">Designation name</label>
    <input type="text" onkeypress="javascript:return isString(event)" class="form-control" value="<%=request.getParameter("desgn_name")%>" id="txt_ddesignationname" name="txt_ddesignationname" placeholder="Designation name" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
  </div>
       <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_drequiredexperience" class="form-label"> Designation ID</label>
    <input type="text" class="form-control" id="txt_drequiredexperience" value="<%=request.getParameter("desgn_id")%>" name="txt_dDesignationID" placeholder="Designation ID" >
    <div class="valid-feedback">
       </div>
  </div>
  <div class="col-sm-2"></div>
   </div>      
 <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_drequiredexperience" class="form-label">Required Experience</label>
    <input type="text" class="form-control" id="txt_drequiredexperience" value="<%=request.getParameter("desgn_experience")%>" name="txt_drequiredexperience" placeholder="Required Experience" >
    <div class="valid-feedback">
       </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <label for="txt_ddesciption">Description</label>
  <textarea class="form-control" onkeypress="javascript:return isString(event)" value="<%=request.getParameter("desgn_descr")%>" placeholder="Description" id="txt_ddesciption" name="txt_ddesciption"></textarea>
 </div>
  <div class="col-sm-2"></div>
   </div>
</div>
 <div class="row">
    <div class="col-sm-12 text-center">
         <button type="submit" name="btn" value="Update" class="col btn btn-pink-moon btn-rounded ">Update</button>
         <button type="submit" name="btn" value="Delete" class="col btn btn-pink-moon btn-rounded ">Delete</button>

     </div>
</div>
     </form>
</section>
  </body>
</html>