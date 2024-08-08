<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
    
    <title>Login </title>
  </head>
   <style>.jumbotron
        {
       
      background-image:url(../img/login.jpg);
 

        }
/*           body{
            
            background: url(img/login.jpg) ;
            background-size: cover;
        }*/
 
       body{
            background: url(img/log1.jpg);
            background-size: cover;
           
        }
        h1{
            color: white;
            font-weight: bold;
        }
  
        
      </style>
  <body>
     
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9"> User Login</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2 " >
       <form class="row g-3 p-3" action="Login" method="POST">
      
      <div class="container-fluid"> 
        <div class="row">
        <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_luname" class="form-label">Username</label>
    <div class="input-group has-validation">
        <input type="text" class="form-control" pattern="[a-zA-Z]+" title="only alphabets" onkeypress="javascript:return isString(event)" id="txt_luname" name="txt_luname" aria-describedby="inputGroupPrepend" placeholder="Enter Username" >
      <div class="invalid-feedback">
     </div>
    </div>
  </div>
     <div class="col-sm-2"></div>
 </div> 

  <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_lpass" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_lpass" name="txt_lpass" placeholder="Enter Password">
    <a href="uforgotpass.jsp" style="margin-left:250px">forgot password?</a>
    </div>
      <a href="Signup.jsp" style="margin-left:360px">Create new account</a>

  <div class="col-sm-2"> </div>
   </div>

    </div>
                 
  <div class="row">
    <div class="col-sm-12 text-center">
        <button type="submit" name="btn" value="Login" class="col btn btn-pink-moon btn-rounded ">Login</button>
        <button type="submit" name="btn" value="Cancel" class="col btn btn-pink-moon btn-rounded">Cancel</button>
     </div>
</div>
       </form>
   </section>
      
  </body>
</html>