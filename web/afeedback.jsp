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
        margin-right:300px;
        margin-left:200px; 
        }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
     <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="bootstrap.css">
        <title>Users feedback</title>
        
    </head>
    <body>
        
         <%@include file="header_admin.jsp"  %>
      
       
    <div class="A"   >
        <h3>Users feedback</h3>
   <table class="table table-bordered">
    
    <thead>
      <tr>
       <th  scope="col">Sr NO </th>
      <th  scope="col">Username </th>
       <th  scope="col">Date </th>
<!--       <th  scope="col">Password </th>
        <th  scope="col"> Email </th>
        <th  scope="col"> Contact </th> -->
         <th  scope="col"> Message </th>        
      
         
           
           
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
            String sql="select * from tbl_feedback";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                
            %>
           
           
           <tbody>
              
            <tr>
                 
                       
                
                 <th scope="row"><%=counter++%></th>
                 
                   
                 
     
      
         <td><%=rs.getString("username")%></td>
          <input type="hidden" name="username" value="<%=rs.getString("username")%>" >  
          
           <td><%=rs.getString("date")%></td>
         <input type="hidden" name="date" value="<%=rs.getString("date")%>" > 
          
<!--        <td><%=rs.getString("pass")%></td>
         <input type="hidden" name="pass" value="<%=rs.getString("pass")%>" >   

        <td><%=rs.getString("email")%></td>
         <input type="hidden" name="email" value="<%=rs.getString("email")%>" >   
         
           <td><%=rs.getString("contact")%></td>
         <input type="hidden" name="contact" value="<%=rs.getString("contact")%>" >    
         -->
         
         <td><%=rs.getString("message")%></td>
         <input type="hidden" name="message" value="<%=rs.getString("message")%>" > 
         
         
         
      
     
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


