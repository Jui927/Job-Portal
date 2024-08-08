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
    <title>Form Design</title>
  </head>
  <body>
     
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
            <h1 class="display-9">Add Criteria</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3"action="Addcriteria" method="POST">
         
        <div class="container-fluid"> 
            
      <div class="row">
          
   <div class="col-sm-6">
    <label for="txt_accriteria2" class="form-label">Criteria ID</label>
    <input type="text" class="form-control" id="txt_accriteriaid" name="txt_accriteriaid" value="<%=request.getParameter("criteria_id")%>" placeholder="Criteria ID" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-6">
      <label for="txt_accriteria1" class="form-label">Criteria 1</label>
    <input type="text" class="form-control" id="txt_accriteria1" name="txt_accriteria1"  value="<%=request.getParameter("criteria_1")%>" placeholder="Criteria 1" >
    <div class="valid-feedback">
      </div>
   </div>
      </div>
<div class="row">
   <div class="col-sm-6">
   <label for="txt_acdesignationname" class="form-label">Designation name</label>
    <input type="text"  class="form-control" onkeypress="javascript:return isString(event)" id="txt_acdesignationname" name="txt_acdesignationname"  value="<%=request.getParameter("desgn_name")%>" placeholder="Designation name" >
    <div class="valid-feedback">
       </div>
  </div>
  <div class="col-sm-6">
      <label for="txt_accriteria3" class="form-label">Criteria 2</label>
    <input type="text" class="form-control" id="txt_accriteria2" name="txt_accriteria2" value="<%=request.getParameter("criteria_2")%>" placeholder="Criteria 2" >
    <div class="valid-feedback">
      </div>
  </div>
   </div>
<div class="row">
 
  <div class="col-sm-6">
   <label for="txt_acdescription">Description</label>
  <textarea class="form-control" placeholder="Description" id="txt_acdescription" name="txt_acdescription"  value="<%=request.getParameter("criteria_descr")%>"></textarea>
 </div>
  <div class="col-sm-6">
       <label for="txt_accriteria3" class="form-label">Criteria 3</label>
    <input type="text" class="form-control" id="txt_accriteria3" name="txt_accriteria3"  value="<%=request.getParameter("criteria_3")%>" placeholder="Criteria 3" >
    <div class="valid-feedback">
      </div>
      
  </div>
   </div>
 </div>
 <div class="row">
    <div class="col-sm-12 text-center">
          <button  type="submit" name="btn" value="Update" class="col btn btn-pink-moon btn-rounded ">Update</button>
          <button  type="submit" name="btn" value="Delete" class="col btn btn-pink-moon btn-rounded ">Delete</button>

     </div>
</div>
      </div>
     </form>
</section>
    </body>
</html>


 