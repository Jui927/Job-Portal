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
        <style >
             .A{
        margin-right:100px;
        margin-left:20px; 
        }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
     <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="bootstrap.css">
        <title>Profile</title>
        
    </head>
    <body>
        
         <%@include file="header_user.jsp"  %>
      
       
    <div class="A"   >
        <h3>Profile</h3>
   <table class="table table-bordered">
    
    <thead>
      <tr>
           <th  scope="col"> Sr No </th>
      
       <th  scope="col">Username </th>
       <th  scope="col">Password </th>
        <th  scope="col">Fullname </th>
       <th  scope="col"> Contact </th>        
       <th  scope="col"> Email </th>
       <th  scope="col">DOB </th>
        <th  scope="col">Age</th>
        <th  scope="col">Gender</th>
         <th  scope="col">Address</th>
          <th  scope="col">Country</th>
           <th  scope="col">State</th>
            <th  scope="col">City</th>
        <th  scope="col">Pincode</th>
         <th  scope="col">Image</th>
          <th  scope="col">CV</th>
         <th  scope="col">Update</th>
         <th  scope="col">Delete </th>
           
           
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
           String sql="select * from tbl_student_details where signup_id='"+session.getAttribute("signupid")+"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           
           
           <tbody>
              
            <tr>
                 
                       <form action="update_studetails.jsp" method="post"> 
                
                 <th scope="row"><%=counter++%></th>
                 
       <input type="hidden" name="signup_id" value="<%=rs.getString("signup_id")%>" >             
                 
     
      
         <td><%=rs.getString("username")%></td>
          <input type="hidden" name="username" value="<%=rs.getString("username")%>" >    
          
        <td><%=rs.getString("pass")%></td>
         <input type="hidden" name="pass" value="<%=rs.getString("pass")%>" >   

         <td><%=rs.getString("fullname")%></td> 
         <input type="hidden" name="fullname" value="<%=rs.getString("fullname")%>" >    
         
         <td><%=rs.getString("contact")%></td>
         <input type="hidden" name="contact" value="<%=rs.getString("contact")%>" >    
         
          <td><%=rs.getString("email")%></td>
         <input type="hidden" name="email" value="<%=rs.getString("email")%>" >    
         
          <td><%=rs.getString("dob")%></td>
         <input type="hidden" name="dob" value="<%=rs.getString("dob")%>" >    
         
          <td><%=rs.getString("age")%></td>
         <input type="hidden" name="age" value="<%=rs.getString("age")%>" > 
         
         <td><%=rs.getString("gender")%></td>
         <input type="hidden" name="gender" value="<%=rs.getString("gender")%>" > 
         
         <td><%=rs.getString("address")%></td>
         <input type="hidden" name="address" value="<%=rs.getString("address")%>" > 
         
         <td><%=rs.getString("country")%></td>
         <input type="hidden" name="country" value="<%=rs.getString("country")%>" > 
         
         <td><%=rs.getString("state")%></td>
         <input type="hidden" name="state" value="<%=rs.getString("state")%>" > 
         
         <td><%=rs.getString("city")%></td>
         <input type="hidden" name="city" value="<%=rs.getString("city")%>" > 
         
         <td><%=rs.getString("pincode")%></td>
         <input type="hidden" name="pincode" value="<%=rs.getString("pincode")%>" > 
         
         
         
         <td>  <img src="<%=rs.getString("image")%>" width="100" height="100"</td>
         <input type="hidden" name="image" value="<%=rs.getString("image")%>" >   
         

         <td> <a href="<%=rs.getString("cv")%>">CV</a></td>
         <input type="hidden" name="cv" value="<%=rs.getString("cv")%>" >   
         
          <td>
             <input type="submit" class="btn btn-primary btn-rounded" name="btn" value="update">
          </td>
             <td>
             <input type="submit" class="btn btn-danger btn-rounded" name="btn" value="delete">
         </td>
                       </form>
      </tr>
     
           
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


