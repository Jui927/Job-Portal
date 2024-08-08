<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
    
    <title>forgot Password </title>
  </head>
 
  <body>
     
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Forgot Password</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2 " >
       <form class="row g-3 p-3" action="uforgotpass" method="POST">
      
      <div class="container-fluid"> 
        <div class="row">
        <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_luname" class="form-label">Username</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" id="txt_luname" name="txt_luname"  value="<%=session.getAttribute("username")%>" aria-describedby="inputGroupPrepend" placeholder="Enter Username" >
      <div class="invalid-feedback">
     </div>
    </div>
  </div>
     <div class="col-sm-2"></div>
 </div> 

  <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_lpass" class="form-label"> New Password</label>
    <input type="password" class="form-control" id="txt_lpass" name="txt_lpass" placeholder="Enter Password">
  </div>
  <div class="col-sm-2"></div>
   </div>
   
    <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_lpass" class="form-label">Confirm Password</label>
    <input type="password" class="form-control" id="txt_lpass2" name="txt_lpass2" placeholder="Enter Password">
  </div>
  <div class="col-sm-2"></div>
   </div>       

    </div>
                 
  <div class="row">
    <div class="col-sm-12 text-center">
        <button type="submit" name="btn" value="Save" class="col btn btn-pink-moon btn-rounded ">Save</button>
        <button type="submit" name="btn" value="Cancel" class="col btn btn-pink-moon btn-rounded">Cancel</button>
     </div>
</div>
       
   </section>
   
</html>
