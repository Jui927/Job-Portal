<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
    <title>Feedback form </title>
  </head>
  <style>
       body{
            
           background: url(img/8.jpg) ;
            background-size: cover;
  </style>
  <body>
      <%@include file="header_user.jsp"  %>
     
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Feedback</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3" action="feedback" method="POST">
       <div class="container-fluid"> 
      <div class="row">
        <div class="col-sm-6">
    <label for="txt_fusername" class="form-label">Username</label>
    <div class="input-group has-validation">
        <input type="text" class="form-control" onkeypress="javascript:return isString(event)" id="txt_fusername" value="<%=session.getAttribute("username")%>" name="txt_fusername" aria-describedby="inputGroupPrepend" placeholder="Enter Username" required="" >
      <div class="invalid-feedback"> 
      </div>
  </div> 
 </div> 
 <div class="col-sm-6">
     <label for="txt_fpassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_fpassword" name="txt_fpassword" placeholder="Enter Password" required="">
 </div>
</div>
<div class="row">
   <div class="col-sm-6">
    <label for="txt_femail" class="form-label">Email</label>
    <input type="email" class="form-control" id="txt_femail" name="txt_femail" value="<%=session.getAttribute("email")%>" placeholder="Enter Email">
  </div>
  <div class="col-sm-6">
      <label for="txt_fcontact" class="form-label">Contact</label>
    <input type="text" class="form-control"  onkeypress="javascript:return isContactno(event)" maxlength="10" id="txt_fcontact" value="<%=session.getAttribute("contact")%>" name="txt_fcontact" placeholder="Enter Mobile No" required>
    <div class="valid-feedback">
    </div>
  </div>
   </div>
<div class="row">
    <div class="col-sm-6">
        <label for="txt_stdate" class="form-label">Today's Date</label>
    <input type="date" class="form-control" id="txt_stdate" name="txt_stdate" placeholder="Enter Date">
    </div>
   <div class="col-sm-6">
     <label for="txt_fmessage">Message</label>
  <textarea class="form-control" placeholder="Enter Message" id="txt_fmessage" name="txt_fmessage"></textarea>
 </div>
  <div class="col-sm-"></div>
   </div>
</div>
  <div class="row">
    <div class="col-sm-12 text-center">
         <button type="submit" name="btn" value="Submit" class="col btn btn-pink-moon btn-rounded ">Submit</button>
        <button type="submit" name="btn" value="Cancel" class="col btn btn-pink-moon btn-rounded">Cancel</button>
     </div>
</div>
    </form>
</section>

  </body>
</html>