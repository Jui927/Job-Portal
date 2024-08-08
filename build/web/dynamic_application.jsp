

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
        margin-left:200px;
        margin-right: 200px;
      background-color: #555555;
 color: white;
            font-weight: bold;

        }
         body{
            
            background: url(img/ap1.jpg) ;
            background-size: cover;
            
        }
          h1{
            color: black;
            font-weight: bold;
        }
        h4{
             font-weight: bold;
        }
     </style>
    <body>
        
         <%@include file="header_admin.jsp"  %>
         
        <div class="container">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
            <h1>Applied Students </h1>
            </div>
                <div class="col-sm-2"></div>
               </div>
            
            
             <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                    <input type="text"  name="company_name"   class="form-control">
                      </div>
                    <div class="col-sm-4">
                    <input type="submit" name="btn" value="Search" class="btn btn-primary">
              </div>
              
            </div>
             
            <br>
      
        <%
    Connection cn=null;
   Statement st=null;
   int counter=1;
    
    String sql="";
           String name=request.getParameter("username");
          
           String event=request.getParameter("btn");
           
           if(event!=null)
           {
           sql="select * from tbl_applicationform where username='"+name+"' and signup_id='"+session.getAttribute("signupid")+"'";
           }
           else
           {
           sql="select * from tbl_applicationform" ;
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
                    <div class="col-sm-5">
                        <h4>Applied Students <br>
                            <br>
                           
                    </div>
                    <div class="col-sm-7">
                        <form action="application" method="post">
                            <input type="hidden" value="<%=rs.getString("aid")%>" name="aid">
                            <input type="hidden" value="<%=rs.getString("signup_id")%>" name="signup_id">
                        <h4>Username:<%=rs.getString("username")%></h4>
                        
                        <h4> Full Name:<%=rs.getString("fullname")%></h4>
                        <h4>Job Location :<%=rs.getString("jobloacation")%></h4>
                        <h4> Designation Name:<%=rs.getString("desgnname")%></h4>
                       
                        <h4>Select Category:<%=rs.getString("select_category")%></h4>
                       
                        <input type="submit" name="btn" value="Approve" class="btn btn-primary">
                        <input type="submit" name="btn" value="Decline" class="btn btn-danger">
                        <input type="submit" name="btn" value="View All Details" class="btn btn-primary">
                        </form>
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
