

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
         display: inline-block;
        background-color:  #2A2A72;
        color: white;
            font-weight: bold;
        }
        body{
            background: url(img/loc.jpg);
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
                         <h1>Job Location </h1>
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
      try
      {
      Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
            st=cn.createStatement();
            
//             String sql="";
//           
//           if(session.getAttribute("desgnname")!=null)
//                             {
//                sql="select * from tbl_job where job_location='"+session.getAttribute("desgnname")+"'";
//              
//           
//           }
//           else
//            {
//            sql="select * from tbl_job";
//           }
           
            String sql="select * from tbl_job where desgn_name='"+session.getAttribute("desgnname")+"'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {

      %>
       <form action="dynamic_location" method="POST">
     <div class="jumbotron">
                <div class="row">
                    <div class="col-sm-2">
                       
                    </div>
                    <div class="col-sm-7">
                        <img src="img/location1.jpeg" height="100" width="100">
                        <h4>Job location=<%=rs.getString("job_location")%></h4>
                         <input type="hidden" name="job_location" value="<%=rs.getString("job_location")%>">
                        
                     <input type="submit" name="btn" value="View More" class="btn btn-primary">
                        
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
