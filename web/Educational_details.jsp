<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
    <title>Educational Details</title>
  </head>
  <body>
    <%@include file="header_user.jsp"  %>

      <form action="Educational_details" method="POST"> 
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
   <input type="radio" class="form-check-input" required="" id="radio1" name="graduation" value="ug" checked onclick="show1()">Under Graduation
  <label class="form-check-label" for="radio1"></label>
</div>
  <div class="col-sm-2"></div>
   </div>
 <div class="row" id="ug">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_stream" class="form-label">Select Stream</label>
    <select id="inputCountry" id="txt_stream" name="txt_stream" class="form-control" required="">
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
   <input type="radio" class="form-check-input" id="radio1" name="graduation" required="" value="pg" onclick="show2()">Post Graduation
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
    <select id="inputCountry" id="txt_stream1" name="txt_stream1" class="form-control" required="">
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
    <input type="inputnumber" class="form-control" onkeypress="javascript:return isFloat(event)" id="txt_egraduationpercent" name="txt_egraduationpercent" placeholder="Enter Graduation Percentage" required="">
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_uniname" class="form-label">University Name</label>
    <select id="inputCountry" id="txt_uniname" name="txt_uniname" class="form-control" required="">
      <option selected>Select University Name</option>
      <option>Shivaji University</option>
      <option>Pune University</option>
      <option>D.Y.Patil University</option>
      <option>d</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_eyear" class="form-label">Year</label>
    <input type="number" class="form-control" onkeypress="javascript:return isFloat(event)" placeholder="yyyy" min="2000" max="2025" id="txt_eyear" name="txt_eyear" placeholder="Enter Year" required="" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_12percentage" class="form-label">12th Percentage</label>
    <input type="inputnumber" class="form-control"onkeypress="javascript:return isFloat(event)" id="txt_12percentage" name="txt_12percentage" placeholder="Enter 12th Percentage" required="">
  </div>
  <div class="col-sm-2"></div>
   </div>

<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_12board" class="form-label">Board</label>
    <select id="inputCountry" id="txt_12board" name="txt_12board" class="form-control" required="">
      <option selected>Select Board</option>
      <option>State Board</option>
      <option>CBSC Board</option>
      <option>Karnatak Board</option>
      
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_e12year" class="form-label">Year</label>
    <input type="number" class="form-control" placeholder="yyyy" min="2000" max="2025" id="txt_e12year" name="txt_e12year" placeholder="Enter Year" required="">
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_10percentage" class="form-label">10th Percentage</label>
    <input type="inputnumber" class="form-control" onkeypress="javascript:return isFloat(event)" id="txt_10percentage" name="txt_10percentage" placeholder="Enter 10th Percentage" required="">
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_10board" class="form-label">Board</label>
    <select id="inputCountry" id="txt_10board" name="txt_10board" class="form-control" required="">
      <option selected>Select Board</option>
    <option>State Board</option>
      <option>CBSC Board</option>
      <option>Karnataka Board</option>
    </select>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_e10year" class="form-label">Year</label>
    <input type="number" class="form-control" placeholder="yyyy" min="2000" max="2025" id="txt_e10year" name="txt_e10year" placeholder="Enter Year" required="">
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
</form>
   </body>
</html>