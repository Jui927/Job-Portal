<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">

    <title>Form Design</title>
  </head>
  <body>
      <form action="company_review" method="POST"> 
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Company Review</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3">
      
      <div class="container-fluid"> 
        <div class="row">
   <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_crcompanyname" class="form-label">Company name</label>
    <input type="text" class="form-control" id="txt_crcompanyname" name="txt_crcompanyname" placeholder="Company Name" >
    <div class="valid-feedback">
     
    </div>
  </div>
  <div class="col-sm-2"></div>
   </div>

  <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_crusername" class="form-label">Username</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" id="txt_crusername" name="txt_crusername" aria-describedby="inputGroupPrepend" placeholder="Enter Username" >
      <div class="invalid-feedback">
        
      </div>
  </div>
  
   </div>
   <div class="col-sm-2"></div>
 </div>

   <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_crpassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_crpassword" name="txt_crpassword">
  </div>
  <div class="col-sm-2"></div>
   </div>
 

  
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="starreview" class="form-label">Give Your Review</label>
    
    <br>
   <span  onmouseover="starmark(this)" onclick="starmark(this)" id="1one" style="font-size:30px;cursor:pointer;"  class="fa fa-star"></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="2one"  style="font-size:30px;cursor:pointer;" class="fa fa-star "></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="3one"  style="font-size:30px;cursor:pointer;" class="fa fa-star "></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="4one"  style="font-size:30px;cursor:pointer;" class="fa fa-star"></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="5one"  style="font-size:30px;cursor:pointer;" class="fa fa-star"></span>

  </div>
  <div class="col-sm-2"></div>
   </div>


   <script>
var count;

function starmark(item)
{
count=item.id[0];
sessionStorage.starRating = count;
var subid= item.id.substring(1);
for(var i=0;i<5;i++)
{
if(i<count)
{
document.getElementById((i+1)+subid).style.color="orange";
}
else
{
document.getElementById((i+1)+subid).style.color="black";
}


}

}

function result()
{
//Rating : Count
//Review : Comment(id)
alert("Rating : "+count+"\nReview : "+document.getElementById("comment").value);
}

</script>
</div>
       <div class="row">
    <div class="col-sm-12 text-center">
      <button  type="submit" name="btn" value="Submit" class="col btn btn-pink-moon btn-rounded ">Submit</button>
        <button type="submit" name="btn" value="Cancel" class="col btn btn-pink-moon btn-rounded">Cancel</button>
     </div>
</div>

 </section>
      </form>     
  </body>
</html>