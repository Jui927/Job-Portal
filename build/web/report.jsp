<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
    
    <title> Admin Login </title>
  </head>
  <body>
      <%@include file="header_admin.jsp" %>
      <form action="view_report.jsp" method="post">
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Report</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2 " >
    
      
      <div class="container-fluid"> 
        <div class="row">
        <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_eyear" class="form-label">Date </label>
    <input type="date" class="form-control"  id="txt_edate" name="txt_edate" placeholder="Enter date"  >
  </div>
     <div class="col-sm-2"></div>
 </div> 

  <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <label for="txt_eyear1" class="form-label">Date </label>
    <input type="date" class="form-control"  id="txt_edate1" name="txt_edate1" placeholder="Enter date" >
  </div>
  <div class="col-sm-2"></div>
   </div>
           <div class="row">
    <div class="col-sm-12 text-center">
        <button type="submit" name="btn" value="View Application report" class="col btn btn-pink-moon btn-rounded ">View Application report</button>
        <button type="submit" name="btn" value="View Feedback report" class="col btn btn-pink-moon btn-rounded ">View Feedback report</button>
       
        
     </div>
</div>
          <br>
          <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <label for="txt_eyear1" class="form-label">Id </label>
    <input type="text" class="form-control"  id="txt_edate1" name="txt_id" placeholder="Enter ID"  >
  </div>
  <div class="col-sm-2"></div>
   </div>
    </div>
                 
  <div class="row">
    <div class="col-sm-12 text-center">
      
        <button type="submit" name="btn" value="View Student report" class="col btn btn-pink-moon btn-rounded ">View Student report</button>
        <button type="submit" name="btn" value="View Job Details report" class="col btn btn-pink-moon btn-rounded ">View  Job Details report</button>
<!--        <button type="submit" name="btn" value="Cancel" class="col btn btn-pink-moon btn-rounded">Cancel</button>-->
     </div>
</div>
       </form>
   </section>
      
  </body>
</html>