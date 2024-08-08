

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
        margin-left: 150px;
        margin-right: 150px;
        background-color:  #bbdefb;
        }
        
     </style>
    <body>
        
         <%@include file="header_user.jsp"  %>
          <form action="dynamic_company.jsp" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
            <h1>Company List </h1>
            </div>
                <div class="col-sm-4"></div>
              
             <div class="row">
                 <div class="col-sm-2"></div>
                <div class="col-sm-6">
                    <input type="text"  name="company_name"   class="form-control">
                    <input type="submit" name="btn" value="Search" class="btn btn-primary">
                </div>
                 <div class="col-sm-4"></div>
            </div>
              </div>
            <br>
      
        <%
    Connection cn=null;
   Statement st=null;
   int counter=1;
    
    String sql="";
           String name=request.getParameter("company_name");
           String event=request.getParameter("btn");
           
           if(event!=null)
           {
           sql="select * from tbl_company where company_name='"+name+"'";
           }
           else
           {
           sql="select * from tbl_company" ;
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
                        <h4>Company image <br>
                            <br>
                            <img src="<%=rs.getString("company_image")%>" width="250" height="200"</h4>
                    </div>
                    <div class="col-sm-7">
                        <h4>Company ID:<%=rs.getString("company_id")%></h4>
                        <h4>Company name:<%=rs.getString("company_name")%></h4>
                        <h4>Company address:<%=rs.getString("company_address")%></h4>
                        <h4>Company contact:<%=rs.getString("company_contact")%></h4>
                        <h4>Company email:<%=rs.getString("company_email")%></h4>
                       
                        <h4>Company branches=<%=rs.getString("company_branches")%></h4>
                        <h4>Company main branch=<%=rs.getString("company_main_branch")%></h4>
<!--                        <input type="submit" name="btn" value="Apply" class="btn btn-primary">-->
                        <a href="application.jsp" class="btn btn-primary"> Apply</a>
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
          </form>
    </body>
</html>
