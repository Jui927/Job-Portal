
<%-- 
    Document   : List_company
    Created on : 8 Mar, 2023, 10:34:38 AM
    Author     : jk 0440
--%>

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
     <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="bootstrap.css">
        <title>List Applied Jobs</title>
    </head>
  
    <body>
        
         <%@include file="header_user.jsp"  %>
    <div class="container" >
    <h3>List Applied Jobs</h3>
    
   <table class="table table-bordered">
       
    <thead>
      <tr>
          <th  scope="col">SR No </th>
        <th scope="col">Username  </th>
<!--        <th scope="col">Password </th>-->
         <th scope="col">Date </th>
        <th scope="col">Full Name</th>
        <th scope="col">Job Location </th>
        <th scope="col">Designation Name </th>
        <th scope="col">Category </th>
        <th scope="col">Status </th>
      

      </tr>
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
   int counter=1;
    
    
  
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
           st=cn.createStatement();
           String sql="select * from tbl_applicationform where signup_id='"+session.getAttribute("signupid")+"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
            <tr>
        
          <th scope="row"><%=counter++%></th>
          
       
      <input type="hidden" name="aid" value="<%=rs.getString("aid")%>" > 
      
      <td><%=rs.getString("username")%></td>
       <input type="hidden" name="username" value="<%=rs.getString("username")%>">   
       
<!--       <td><%=rs.getString("pass")%></td>
        <input type="hidden" name="pass" value="<%=rs.getString("pass")%>" >-->
        
         <td><%=rs.getString("date")%></td>
        <input type="hidden" name="date" value="<%=rs.getString("date")%>" >
        
        <td><%=rs.getString("fullname")%></td> 
       <input type="hidden" name="fullname" value="<%=rs.getString("fullname")%>" >   
       
        <td><%=rs.getString("jobloacation")%></td>
        <input type="hidden" name="jobloacation" value="<%=rs.getString("jobloacation")%>" >    
        
        <td><%=rs.getString("desgnname")%></td>
         <input type="hidden" name="desgnname" value="<%=rs.getString("desgnname")%>" >    
         
          <td><%=rs.getString("select_category")%></td>
         <input type="hidden" name="select_category" value="<%=rs.getString("select_category")%>" > 
         <td><%=rs.getString("status")%></td>
            
      </tr>
         </form>
     </tbody>
           <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
   
 </table>
    </div>
    </body>
</html>
