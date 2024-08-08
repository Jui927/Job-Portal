

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>  --%>
        <title>admin header</title>
    </head>
    <style>
.navbar {
    height: 50px;
    display: flex;
    justify-content: center;
}

.navbar-nav {
    display: flex;
    align-items: center;
}

.navbar-nav .nav-link {
    font-size: 15px;
    margin: 0 10px;
}
</style>
    <body>
       


        
       <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
           
  <div class="container-fluid" style="font-size:15px ">
     
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li> 
        &emsp; 
       
         <li class="nav-item">
          <a class="nav-link active" href="Add_jobs.jsp">Add Jobs</a>
        </li>
         &emsp; 
         <li class="nav-item">
          <a class="nav-link active" href="Add_designation.jsp">Add Designation</a>
        </li>
         &emsp; 
         <li class="nav-item">
          <a class="nav-link active" href="Add_criteria.jsp">Add Criteria</a>
          <li class="nav-item">
               &emsp;    
           <li class="nav-item">
          <a class="nav-link active" href="List_jobs.jsp">Job List</a>
        </li>
      
                &emsp; 
           <li class="nav-item">
          <a class="nav-link active" href="List_criteria.jsp">Criteria List</a>
        </li>
            &emsp;     
           <li class="nav-item">
          <a class="nav-link active" href="List_designation.jsp">Designation List</a>
        </li>
       &emsp; 
       <li class="nav-item">
          <a class="nav-link active" href="afeedback.jsp">View Feedback</a>
        </li>
         &emsp; 
       <li class="nav-item">
          <a class="nav-link active" href="dynamic_application.jsp">Applied Students</a>
        </li>
        &emsp;
        <li class="nav-item">
            <a class="nav-link active" href="report.jsp">Reports</a>
        </li>
      &emsp;
              &emsp;
       <li class="nav-item">
           <a class="nav-link active" href="index.jsp">Logout</a>
        </li>
        </ul>  
    
      </div>
     
     
      
       
    
    </div>
  </div>
</nav>
    </body>
</html>
