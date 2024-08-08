<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
  <title>All details</title>
  </head>
  <body>
        <%@include file="header_admin.jsp"%>
        
        
       
        
        
         <%
    Connection cn=null;
   Statement st=null;
   
   //student
   String fullname="";
   String contact="";
   String email="";
   String dob="";
   String gender="";
   String age="";
   String address="";
  String country="";
   String state="";
   String city="";
   String pincode="";
   String image="";
   String cv="";
    String username="";
   
   //education
     String ugpg="";
     String stream="";
     String gper="";
     String uniname="";
     String year="";
     String per12="";
     String board="";
     String year12="";
     String per10="";
     String board1="";
    String year10="";
    
  
   
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
           st=cn.createStatement();
           String sql="select * from tbl_student_details where signup_id='"+session.getAttribute("signupid") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
               fullname=rs.getString("fullname");
                username=rs.getString("username");
               
               contact=rs.getString("contact");
              country=rs.getString("country");
               email=rs.getString("email");
               dob=rs.getString("dob");
               gender=rs.getString("gender");
               age=rs.getString("age");  
               address=rs.getString("address");
               state=rs.getString("state");
               city=rs.getString("city");
               pincode=rs.getString("pincode");
               image=rs.getString("image");
               cv=rs.getString("cv");
               
                 }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
   
   
   
   
   
   
   //education
    
    try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
           st=cn.createStatement();
           String sql1="select * from tbl_student_educational_details where signup_id='"+session.getAttribute("signupid") +"'";
           ResultSet rs1=st.executeQuery(sql1);
           while(rs1.next())
                             {
                ugpg=rs1.getString("UGPG");
                stream=rs1.getString("stream");
                uniname=rs1.getString("uniname");
                year=rs1.getString("yearr");
                 gper=rs1.getString("Gpercent");
                per12=rs1.getString("per12th");
                board=rs1.getString("board");
                year12=rs1.getString("yearr12");
                per10=rs1.getString("per10th");
                board1=rs1.getString("board10");
                year10=rs1.getString("yearr10");
               
                 }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
           %>






       <div class="container-fluid bg-gray  py-12">
          
            <div class="row" >
                 <div class="col-sm-6">
           
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Student Details</h1>
       </header>
   
   <section class="container my-2 bg-gray  p-2">
<!--     <form class="row g-3 p-3"action="student_details" method="POST">-->
      
      <div class="container-fluid bg-gray py-12"> 
      <div class="row" >
  <div class="col-sm-6">
    
         
    <label for="txt_stusername" class="form-label">Username</label>
    <div class="input-group has-validation">
      <input type="text" class="form-control" id="txt_stusername" name="txt_stusername"   value="<%=username%>"  placeholder="Enter Username" required>
      <div class="invalid-feedback">
      </div>
      </div>
  </div>
     <div class="col-sm-6">
      <label for="txt_stpassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="txt_stpassword" name="txt_stpassword" placeholder="Enter Password">
     <div class="invalid-feedback">
      </div>
     </div>
 </div> 

 
<div class="row">
    <div class="col-sm-6">
    <label for="txt_fullname" class="form-label">Fullname</label>
    <div class="input-group has-validation">
        <input type="text" class="form-control" id="txt_fullname" name="txt_fullname"  value="<%=fullname%>"  placeholder="Enter Fullname" required>
      <div class="invalid-feedback">
      </div>
      </div>
  </div>
  <div class="col-sm-6">
    <label for="txt_stcontact" class="form-label">Contact</label>
    <input type="text" class="form-control" id="txt_stcontact" name="txt_stcontact" value="<%=contact%>" placeholder="Enter Mobile No" required>
    <div class="valid-feedback">
    </div>
  </div>
  
   </div>
<div class="row">
    <div class="col-sm-6">
      <label for="txt_stemail" class="form-label">Email</label>
    <input type="email" class="form-control" id="txt_stemail" name="txt_stemail" value="<%=email%>" placeholder="Enter Email">
  </div>
    
  <div class="col-sm-6">
   <label for="txt_stdob" class="form-label">DOB</label>
    <input type="date" class="form-control" id="txt_stdob" name="txt_stdob" value="<%=dob%>" placeholder="Enter dob">
  </div>
 
   </div>
<div class="row">
     <div class="col-sm-6">
    <label for="txt_gender" class="form-label">Gender</label>
    <input type="gender" id="inputCountry" id="txt_gender" name="txt_gender" value="<%=gender%>" class="form-control">
     
   
  </div>
    <div class="col-sm-6">
      <label for="txt_stage" class="form-label">Age</label>
    <input type="Number" class="form-control" id="txt_stage" name="txt_stage" value="<%=age%>" placeholder="Enter Age">
  </div>
 
  </div>
         
<div class="container-fluid bg-gray  py-3">
   <header class="text-center">
   <h1 class="display-9">Address Details</h1>
  </header>
   </div>
   
     <div class="container-fluid"> 
      <div class="row">
   <div class="col-sm-6">
    <label for="txt_staddress">Address</label>
  <input type="address" class="form-control" placeholder="Enter Address"  id="txt_staddress" value="<%=address%>" name="txt_staddress">
  </div>
     <div class="col-sm-6">
     <label for="txt_country" class="form-label">Country</label>
     <input type="country" id="inputCountry"  id="txt_country" name="txt_country" value="<%=country%>" class="form-control">
     
     </div>
 </div> 
 <div class="row">
  <div class="col-sm-6">
  <label for="txt_state" class="form-label">State</label>
  <input type="" id="inputState" id="txt_state" name="txt_state" value="<%=state%>" class="form-control">
     
  </div>
  <div class="col-sm-6">
      <label for="txt_stcity" class="form-label">City</label>
    <input type="text" class="form-control" id="txt_stcity" name="txt_stcity" value="<%=city%>" placeholder="Enter City">
  </div>
   </div>
 <div class="row">
  <div class="col-sm-6">
    <label for="txt_stpincode" class="form-label">PinCode</label>
    <input type="text" class="form-control" id="txt_stpincode" name="txt_stpincode" value="<%=pincode%>"  placeholder="Enter Pin Code">
  </div>
     
    
     
     
 </div>
         
 <div class="container-fluid bg-gray  py-3">
    <header class="text-center">
     <h1 class="display-9">Document Details</h1>
    </header>
   </div>
   
   <div class="container-fluid"> 
    <div class="row">
   <div class="col-sm-5">
   <label for="txt_image"class="form-label">Image</label>
<!--     <img src="" value=<%=image%> width="100" height="100"-->
   <br>
   <a href=" <%=image%>"  >View Image</a>
          </h4>
  </div>
     <div class="col-sm-5">
     <label for="txt_cv" class="form-label"> CV</label>
<!--     <input type="cv" id="txt_cv" name="txt_cv" class="form-control" value="<%=cv%>" aria-label="file example" >-->
     <br>
     <a href="<%=cv%>">View CV</a>
     </div>
  </div> 
 </div>
 </div>


<!--  <div class="row">
    <div class="col-sm-12 text-center">
    <button type="submit" name="btn" value="save" class="col btn btn-pink-moon btn-rounded ">Save</button>
    <button type="submit" name="btn" value="clear" class="col btn btn-pink-moon btn-rounded">Clear</button>
    </div>
  </div>-->
      </div>
  </div>
    </div>
  
  
   <div class="col-sm-6">
      

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
    <label for="graduation" class="form-label">Select Graduation</label>
    <br>
    <input type="text" class="form-control" id="graduation" name="graduation" value="<%=ugpg%>" value="graduation" >
  
</div>
  <div class="col-sm-2"></div>
   </div>
 <div class="row" id="ug">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_stream" class="form-label">Select Stream</label>
    <input type="text" id="txt_stream" id="txt_stream" name="txt_stream" value="<%=stream%>" class="form-control">
      
  </div>
  <div class="col-sm-2"></div>
   </div>

  
   
<!--   <div class="row"  id="pg" style="display:none">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_stream1" class="form-label">Select Stream</label>
    <input type="text" id="txt_stream1" id="txt_stream1" name="txt_stream1" value="<%=stream%>" class="form-control">
     
  </div>
  <div class="col-sm-2"></div>
   </div>-->
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <label for="txt_egraduationpercent" class="form-label">Graduation Percentage</label>
    <input type="inputnumber" class="form-control" onkeypress="javascript:return isFloat(event)" id="txt_egraduationpercent" value="<%=gper%>" name="txt_egraduationpercent" placeholder="Enter Graduation Percentage">
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_uniname" class="form-label">University Name</label>
    <input type="text" id="txt_uniname" id="txt_uniname" name="txt_uniname" value="<%=uniname%>" class="form-control">
     
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_eyear" class="form-label">Year</label>
    <input type="number" class="form-control" onkeypress="javascript:return isFloat(event)" placeholder="yyyy" min="2000" max="2025" id="txt_eyear" value="<%=year%>" name="txt_eyear" placeholder="Enter Year" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_12percentage" class="form-label">12th Percentage</label>
    <input type="inputnumber" class="form-control"onkeypress="javascript:return isFloat(event)" id="txt_12percentage"  value="<%=per12%>"name="txt_12percentage" placeholder="Enter 12th Percentage" >
  </div>
  <div class="col-sm-2"></div>
   </div>

<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_12board" class="form-label">Board</label>
    <input id="txt_12board" id="txt_12board" name="txt_12board" class="form-control" value="<%=board%>">
     
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_e12year" class="form-label">Year</label>
    <input type="number" class="form-control" placeholder="yyyy" min="2000" max="2025" value="<%=year12%>" id="txt_e12year" name="txt_e12year" placeholder="Enter Year" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_10percentage" class="form-label">10th Percentage</label>
    <input type="inputnumber" class="form-control" onkeypress="javascript:return isFloat(event)" id="txt_10percentage" value="<%=per10%>" name="txt_10percentage" placeholder="Enter 10th Percentage">
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_10board" class="form-label">Board</label>
    <input id="txt_10board" id="txt_10board" name="txt_10board"  value="<%=board1%>"class="form-control">
      
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <label for="txt_e10year" class="form-label">Year</label>
    <input type="number" class="form-control" placeholder="yyyy" min="2000" max="2025" id="txt_e10year" value="<%=year10%>" name="txt_e10year" placeholder="Enter Year" >
    <div class="valid-feedback">
     </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
  </div>
<!--    <div class="row">
    <div class="col-sm-12 text-center">
         <button type="submit" name="btn" value="Submit" class="col btn btn-pink-moon btn-rounded ">Submit</button>
        <button type="submit" name="btn" value="Cancel"  class="col btn btn-pink-moon btn-rounded">Cancel</button>
     </div>
</div>-->
</section>

   
   </div>
   </div>
       </div>
  
     </form>


  </body>
</html>