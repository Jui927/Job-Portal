

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.css">
    </head>
     <style>.jumbotron
        {
       
        margin-left:20px;
        margin-right: 450px;
      background-color:#FBA8A4;

        }
         body{
            
           background: url(img/job11.jpg) ;
            background-size: cover;
            
              
        }
          h1{
            color: white;
            font-weight: bold;
        }
        h4{
             font-weight: bold;
        }
        
     </style>
    <body>
         <%@include file="header_user.jsp"  %>
        <div class="container">
           
                  
           <div class="row">
                    <div class="col-sm-4">
                         <h1>Job List </h1>
                    </div>
                  <div class="col-sm-4">
                        
                        
                             
                    </div>
                  <div class="col-sm-4">
                      
                    </div>
              </div>
      
      <%   
          
          Connection cn=null;
          Statement st=null;
           int counter=1;
           
           
           String sql="";
           
           if(session.getAttribute("joblocation")!=null)
                             {
                sql="select * from tbl_job where desgn_name='"+session.getAttribute("desgnname")+"' and job_location='"+session.getAttribute("joblocation")+"' and select_category='"+session.getAttribute("selectcategory")+"'";
           
           }
           else
            {
            sql="select * from tbl_job";
           }
           
           
      try
      {
      Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
            st=cn.createStatement();
            
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {

      %>
       
     <div class="jumbotron">
        
                <div class="row">
                    <div class="col-sm-2">
                       
                    </div>
                    <div class="col-sm-7">
                        
<!--                        <h4>Job ID=<%=rs.getString("job_id")%></h4>-->
                        <h4>Job Name=<%=rs.getString("desgn_name")%></h4>
                        <h4>Job location=<%=rs.getString("job_location")%></h4>
                         <h4>Select Category=<%=rs.getString("select_category")%></h4>
                        <h4>Job Description=<%=rs.getString("job_descr")%></h4>
                         <h4>Salary=<%=rs.getString("job_salary")%></h4>
                          <h4>Experience Required=<%=rs.getString("job_experience")%></h4>
<!--                      <input type="submit" name="btn" value="Apply" class="btn btn-primary">-->
                          <a href="student_details.jsp" class="btn btn-primary"> Apply</a>
                    </div>
                </div>
     </div>
            
    <%
        }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
    %>
            
                  </div>
       
    </body>
</html>
