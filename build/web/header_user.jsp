

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <%-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--%>
     <%-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>  --%>
        <title>JSP Page</title>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark"   >
           
  <div class="container-fluid" style="font-size:15px; ">
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent" >
      <ul class="navbar-nav me-auto mb-0 mb-lg-0" >
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        &emsp;
        
        <li class="nav-item">
          <a class="nav-link active" href="dynamic_designation.jsp">Designation list</a>
        </li>
       &emsp; 

<!--        <li class="nav-item">
          <a class="nav-link" href="student_details.jsp">Student details</a>
        </li>
       &emsp; &emsp;
        <li class="nav-item">
          <a class="nav-link" href="Educational_details.jsp"> Educational details</a>
        </li>
       &emsp; &emsp;-->
         <li class="nav-item">
          <a class="nav-link active" href="feedback.jsp" >Feedback</a>
        </li>
       &emsp; 
<!--         <li class="nav-item">
          <a class="nav-link" href="Company_review.jsp">Company review</a>
         </li>
          &emsp; &emsp;-->
         <li class="nav-item">
          <a class="nav-link active" href="list_student.jsp">Profile</a>
        </li>
         &emsp; 
        <li class="nav-item">
          <a class="nav-link active" href="list_feedback.jsp" >View Feedback</a>
        </li>
       &emsp;
       <li class="nav-item">
          <a class="nav-link active" href="list_application.jsp" >Applied jobs</a>
        </li>
         &emsp; &emsp;
          &emsp;
           &emsp;
            &emsp;
             &emsp;
              &emsp;
              &emsp;
               &emsp;
                &emsp;
                 &emsp;
             &emsp;
              &emsp;
              
            
             &emsp;
              &emsp;
              &emsp;
               &emsp;
                &emsp;
         <li class="nav-item">
           <a class="nav-link active" href="index.jsp" >Logout</a>
        </li>
        
         
      
        
        
       </ul>
      </ul>
      <form class="d-flex">
       
      </form>
    </div>
  </div>
</nav>
    </body>
</html>
