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
            <h1 class="display-9">Add Criteria</h1>
       </header>
   </div>
   <section class="container my-2 bg-gray  p-2" >
     <form class="row g-3 p-3"action="Addcriteria" method="POST">
              <%  Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
         st=cn.createStatement();
         String sql="select criteria_id from tbl_criteria";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("criteria_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
        
%> 
        <div class="container-fluid"> 
            
      <div class="row">
   <div class="col-sm-6">
    <label for="txt_accriteria2" class="form-label">Criteria ID</label>
    <input type="text" class="form-control" id="txt_accriteriaid" name="txt_accriteriaid" placeholder="Criteria ID" >
    <div class="valid-feedback">
      </div>
  </div>
  <div class="col-sm-6">
      <label for="txt_accriteria1" class="form-label">Criteria 1</label>
    <input type="text" class="form-control" id="txt_accriteria1" name="txt_accriteria1" placeholder="Criteria 1" >
    <div class="valid-feedback">
      </div>
   </div>
      </div>
<div class="row">
   <div class="col-sm-6">
   <label for="txt_acdesignationname" class="form-label">Designation name</label>
    <input type="text"  class="form-control" onkeypress="javascript:return isString(event)" id="txt_acdesignationname" name="txt_acdesignationname" placeholder="Designation name" >
    <div class="valid-feedback">
       </div>
  </div>
  <div class="col-sm-6">
      <label for="txt_accriteria3" class="form-label">Criteria 2</label>
    <input type="text" class="form-control" id="txt_accriteria2" name="txt_accriteria2" placeholder="Criteria 2" >
    <div class="valid-feedback">
      </div>
  </div>
   </div>
<div class="row">
 
  <div class="col-sm-6">
   <label for="txt_acdescription">Description</label>
  <textarea class="form-control" placeholder="Description" id="txt_acdescription" name="txt_acdescription"></textarea>
 </div>
  <div class="col-sm-6">
       <label for="txt_accriteria3" class="form-label">Criteria 3</label>
    <input type="text" class="form-control" id="txt_accriteria3" name="txt_accriteria3" placeholder="Criteria 3" >
    <div class="valid-feedback">
      </div>
      
  </div>
   </div>
 </div>
 <div class="row">
    <div class="col-sm-12 text-center">
          <button  type="submit" name="btn" value="Add"class=" col btn btn-pink-moon btn-rounded ">Add</button>
     </div>
</div>
      </div>
     </form>
</section>
    </body>
</html>


 