<!doctype html>
<html lang="en">
  <head>
      <script type="text/javascript">
          window.onload=function(){
              var today = new Date().toISOString().split('T')[0];
              document.getElementsByName("txt_edate")[0].setAttribute('min', today);
               document.getElementsByName("txt_edate")[0].setAttribute('max', today);
          }
          
      </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
    <title>Application Form</title>
  </head>
  <body>
    <%@include file="header_user.jsp"  %>

      <form action="application" method="POST"> 
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Application Form</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2 ">
     <form class="row g-3 p-3">
       <div class="container-fluid"> 
        <div class="row">
        <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_ausername" class="form-label">Username</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" onkeypress="javascript:return isString(event)" class="form-control" id="txt_ausername" name="txt_ausername" aria-describedby="inputGroupPrepend" placeholder="Enter Username" >
      <div class="invalid-feedback">
           <div class="col-sm-2"></div>
           
      </div>
  </div>
 </div> 
</div>
           
     
           
<!--    <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_susername" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_spassword" name="txt_spass" placeholder="Enter Password" required="">
  </div>
  <div class="col-sm-2"></div>
   </div> -->
    <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_eyear" class="form-label">Date of apply</label>
    <input type="date" class="form-control"  id="txt_edate" name="txt_edate" placeholder="Enter date" required="" >
    <div class="valid-feedback">
      </div>
    
  
    
    
  </div>
  <div class="col-sm-2"></div>
   </div>       
            
    <div class="row">
   <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_sfullname" class="form-label">Full name</label>
    <input type="text" class="form-control" onkeypress="javascript:return isString(event)" id="txt_sfullname" name="txt_sfullname" placeholder="Full name" required="">
    <div class="valid-feedback">
      </div>
    </div>
    <div class="col-sm-2"></div>
 </div>   
       
           
           
           
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
     <label for="inputState" class="form-label">Job Location</label>
    <select id="inputState"  name="txt_location"class="form-control">
      <option selected>Select Location</option>
     <option>Pune</option>
      <option>Banglore</option>
      <option>Mumbai</option>
      <option>Chennai</option>
      <option>Delhi</option>
      <option>Kolhapur</option>
      <option>Kolkatta</option>
      <option>Aurangabad</option>
      <option>Panvel</option>
      <option>Karad</option>
      <option>Sangli</option>
      <option>Satara</option>
      <option>Thane</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>

<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="inputState" class="form-label">Designation Name</label>
    <select id="inputState" name="txt_dname" class="form-control">
      <option selected>Select Designation</option>
      <option>Data scientist</option>
      <option>Tester</option>
      <option>Backend developer</option>
       <option>IOS developer</option>
      <option>developer</option>
      <option>Data analyst</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
           <div class="row">
  <div class="col-sm-2"></div>
            <div class="col-sm-8">
     <label for="txt_jcategory"  class="form-label">Select Category</label>
    <select id="inputState" id="txt_jcategory"name="txt_jcategory" class="form-control">
      <option selected>Select Category</option>
      <option>IT</option>
      <option>Finance</option>
      <option>Banking</option>
      
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
    </div>
 <div class="row">
    <div class="col-sm-12 text-center">
       <button type="submit" name="btn" value="Apply" class="col btn btn-pink-moon btn-rounded ">Apply</button>
        <button type="submit" name="btn" value="Exit"class="col btn btn-pink-moon btn-rounded">Exit</button>
     </div>
</div>
 </section>
 </form>
  </body>
</html>