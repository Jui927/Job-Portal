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
    <title>Form Design</title>
  </head>
  <body>
       <%@include file="header_admin.jsp"  %>
       <script src="validation.js"></script>
   <div class="container-fluid bg-gray  py-3">
       <header class="text-center">
           <h1 class="display-9">Add Designation</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3"action="Add_designation" method="POST">
         
           <%  Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
         st=cn.createStatement();
         String sql="select desgn_id from tbl_designation";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("desgn_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
        
%> 
        <div class="container-fluid"> 
      <div class="row">
        <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_ddesignationname" class="form-label">Designation name</label>
    <input type="text" onkeypress="javascript:return isString(event)" class="form-control" id="txt_ddesignationname" name="txt_ddesignationname" placeholder="Designation name" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-2"></div>
  </div>
       <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_drequiredexperience" class="form-label"> Designation ID</label>
    <input type="text" class="form-control" id="txt_drequiredexperience" name="txt_dDesignationID" placeholder="Designation ID" >
    <div class="valid-feedback">
       </div>
  </div>
  <div class="col-sm-2"></div>
   </div>      
 <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <label for="txt_drequiredexperience" class="form-label">Required Experience</label>
    <input type="text" class="form-control" id="txt_drequiredexperience" name="txt_drequiredexperience" placeholder="Required Experience" >
    <div class="valid-feedback">
       </div>
  </div>
  <div class="col-sm-2"></div>
   </div>
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <label for="txt_ddesciption">Description</label>
  <textarea class="form-control" onkeypress="javascript:return isString(event)" placeholder="Description" id="txt_ddesciption" name="txt_ddesciption"></textarea>
 </div>
  <div class="col-sm-2"></div>
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