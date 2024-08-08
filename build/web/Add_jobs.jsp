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
    <title>Add jobs </title>
  </head>
  <body>
       <%@include file="header_admin.jsp"  %>
       <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Add Jobs</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3"action="Add_jobs" method="POST">
         
           <%  Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
         st=cn.createStatement();
         String sql="select job_id from tbl_job";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("job_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
        
%> 
       <div class="container-fluid"> 
          
        
   <div class="row">
             
  <div class="col-sm-6 ">
<label for="txt_jjobname" class="form-label">Job ID</label>
    <input type="text" class="form-control" id="txt_jobid" name="txt_jobid" placeholder="Job ID" >     </div>
    

     <div class="col-sm-6">
          <label for="txt_jjobname" class="form-label">Company name</label>
    <input type="text" onkeypress="javascript:return isString(event)" class="form-control" id="txt_compname" name="txt_compbname" placeholder="Job name" >
    <div class="valid-feedback">
    </div>
  </div>
 </div> 
           
     
           <div class="row">
  <div class="col-sm-6">
   <label for="txt_ddesignationname" class="form-label">Designation name</label>
    
    <select id="inputState" id="txt_jlocation"name="txt_ddesignationname" class="form-control">
      <option selected>Select Location</option>
       <%   
          
          
           int counter=1;
      try
      {
      Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
            st=cn.createStatement();
            String sql="select * from tbl_designation ";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {

      %>
      <option><%=rs.getString("desgn_name")%></option>
      
      <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
    </select>
    <div class="valid-feedback">
     </div>
  </div>
               <div class="col-sm-6">
                   <label for="txt_jlocation"  class="form-label">Job Location</label>
    <select id="inputState" id="txt_jlocation"name="txt_jlocation" class="form-control">
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
    
 </div> 
           
<div class="row">
   <div class="col-sm-6">
     <label for="txt_jcategory"  class="form-label">Select Category</label>
    <select id="inputState" id="txt_jcategory"name="txt_jcategory" class="form-control">
      <option selected>Select Category</option>
      <option>IT</option>
      <option>Finance</option>
      <option>Banking</option>
      
    </select>
  </div>
  <div class="col-sm-6">
      <label for="txt_jexperienceequired" class="form-label">Experience Required</label>
    <input type="text" class="form-control" id="txt_jexperienceequired" name="txt_jexperienceequired" placeholder="Experience Required" >
    <div class="valid-feedback">
    </div>
  </div>
  </div>
<div class="row">
   <div class="col-sm-6">
    <label for="txt_jsalary" class="form-label">Salary</label>
    <input type="text" onkeypress="javascript:return isFloat(event)" class="form-control" id="txt_jsalary" name="txt_jsalary" placeholder="Enter Salary" required>
    <div class="valid-feedback">
   </div>
    </div>
  <div class="col-sm-6">
      <label for="txt_jjobdescription">Job Description</label>
  <textarea class="form-control" placeholder="Description" id="txt_jjobdescription" name="txt_jjobdescription"></textarea>
  </div>
   </div>
  </div>
 <div class="row">
  <div class="col-sm-12 text-center">
  <button type="submit" name="btn" value="Add" class="col btn btn-pink-moon btn-rounded ">Add</button>
     </div>
</div>
     </form>
</section>
 </body>
</html>