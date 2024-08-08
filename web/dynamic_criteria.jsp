

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
             
        margin-left: 50px;
        margin-right: 50px;
        background-color:  #fff0f0;
        }
        body{
             background: url(img/desig.jpg) ;
            background-size: cover;
            
             
              
        }
         h1{
            color: black;
            font-weight: bold;
        }
        h4{
             font-weight: bold;
        }
        h3{
            color: blue;
        }
        
     </style>
    <body>
         <%@include file="header_user.jsp"  %>
        <div class="container">
             <div class="row">
                   <div class="col-sm-3">
                        
                    </div>
                  <div class="col-sm-6">
                         <h1>Criteria List </h1>
                    </div>
                  <div class="col-sm-3">
                        
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
            String sql="select * from tbl_criteria where desgn_name='"+session.getAttribute("desgnname")+"'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {

      %>
     <div class="jumbotron">
                <div class="row">
                    <div class="col-sm-2">
                       
                    </div>
                    <div class="col-sm-7">
<!--                        <h4>Criteria ID=<%=rs.getString("criteria_id")%></h4>-->
                        <h4>Designation name=<%=rs.getString("desgn_name")%></h4>
                        <h4>Criteria description =<%=rs.getString("criteria_descr")%></h4>
                       
                        <h3>Criteria list</h3>
                        <h4>1)<%=rs.getString("criteria_1")%></h4>
                        <h4>2)<%=rs.getString("criteria_2")%></h4>
                        <h4>3)<%=rs.getString("criteria_3")%></h4>
                        <div class="icheck-primary">
                <input type="checkbox" id="agreeTerms" name="terms" value="agree"  name="termsagree" required="">
              <label for="agreeTerms">
               I agree to the <a href="img/terms.pdf">terms</a>
              </label>
            </div>
                        <a href="student_details.jsp" name="btn" value="Next" class="btn btn-primary">Next</a>
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
