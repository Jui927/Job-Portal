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
    <title>Admin signup</title>
    <script>
         $(function () {
        $("#btn").click(function () {
            var password = $("#txt_password").val();
            var confirmPassword = $("#txt_spassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match");
                return false;
            }
            return true;
        });
    });
    </script>
  </head>
  <body>
   
        <%  Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
         st=cn.createStatement();
         String sql="select admin_id from admin_signup";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("admin_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
        
%> 
        
      <script src="validation.js"></script>
   <div class="container-fluid bg-gray py-3">
       <header class="text-center">
           <h1 class="display-9">Admin Signup</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3" action="admin_signup" method="POST">
         <div class="container-fluid"> 
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
    <label for="txt_semail" class="form-label">Email</label>
    <input type="email" class="form-control" id="txt_semail" name="txt_semail" placeholder="Enter Email" required="">
    <div class="valid-feedback">
       </div>
    </div>
     <div class="col-sm-2"></div>
 </div>
<div class="row">
    <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_scontact" class="form-label">Contact</label>
    <input type="text" onkeypress="javascript:return isContactno(event)" maxlength="10" class="form-control"  id="txt_scontact" name="txt_scontact" placeholder="Enter Mobile No" >
    <div class="valid-feedback">
    </div>
    <div class="valid-feedback">
     </div>
    </div>
         <div class="col-sm-2"></div>
         </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_susername" class="form-label">Admin name</label>
    <div class="input-group has-validation">
      <input type="text" onkeypress="javascript:return isString(event)" class="form-control" id="txt_sadminname" name="txt_sadminname" aria-describedby="inputGroupPrepend" placeholder="Enter name" required="">
      <div class="invalid-feedback">
      </div>
  </div>
 
   </div>
    </div>
  <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_password" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_password" name="txt_password" placeholder="Enter Password" required="">
  </div>
  <div class="col-sm-2"></div>
   </div>
      <div class="row">
  <div class="col-sm-2"></div>
<!--  <div class="col-sm-8">
    <label for="txt_spassword" class="form-label"> Confirm Password</label>
    <input type="password" class="form-control" id="txt_spassword" name="txt_spassword" placeholder="Enter Password" required="">
  </div>-->
  <div class="col-sm-2"></div>
   </div>        
    </div>
  <div class="row">
    <div class="col-sm-12 text-center">
        <button type="submit" name="btn" id="btn" value="Signup" class="col btn btn-pink-moon btn-rounded ">Signup</button>
        <button type="submit" name="btn" id="btn" value="Cancel"class="col btn btn-pink-moon btn-rounded">Cancel</button>
     </div>
</div>
         <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
   
</script>
</form>
</section>

</body>
</html>