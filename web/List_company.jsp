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
        <title>Add company</title>
    </head>
    <body>
         <%@include file="header_admin.jsp"  %>
        <form action="List_company.jsp" method="post">
        <div>
       
        </div>
    <div class="container"  >
        <h3>Company List</h3>
   <table class="table table-bordered">
         <div class="row">
             <div class="row">
                <div class="col-sm-12">
                    <input type="text"  name="company_name"   class="form-control">
                    <input type="submit" name="btn" value="Search" class="btn btn-primary">
                </div>
            </div>
            </form>
                  </div>
    <thead>
      <tr>
       <th  scope="col">Company Id </th>
       <th  scope="col">Company name </th>
       <th  scope="col">Company address </th>
       <th  scope="col">Company contact </th>        
       <th  scope="col">Company email </th>
       <th  scope="col">Company image </th>
        <th  scope="col">Company branches </th>
        <th  scope="col">Company main branch </th>
         <th  scope="col">Update</th>
         <th  scope="col">Delete </th>
           
           
      </tr>
    </thead>
    
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
           
           
           <tbody>
              <form action="update_company.jsp" method="post"> 
            <tr>
                 
                     
                
                 <th scope="row"><%=counter++%></th>
                 
      <input type="hidden" name="company_id" value="<%=rs.getString("company_id")%>" >  
      
         <td><%=rs.getString("company_name")%></td>
          <input type="hidden" name="company_name" value="<%=rs.getString("company_name")%>" >    
          
        <td><%=rs.getString("company_address")%></td>
         <input type="hidden" name="company_address" value="<%=rs.getString("company_address")%>" >   

         <td><%=rs.getString("company_contact")%></td> 
         <input type="hidden" name="company_contact" value="<%=rs.getString("company_contact")%>" >    
         
         <td><%=rs.getString("company_email")%></td>
         <input type="hidden" name="company_email" value="<%=rs.getString("company_email")%>" >    
         
         <td>  <img src="<%=rs.getString("company_image")%>" width="100" height="100"</td>
         <input type="hidden" name="company_image" value="<%=rs.getString("company_image")%>" >   
         
         <td><%=rs.getString("company_branches")%></td>
         <input type="hidden" name="company_branches" value="<%=rs.getString("company_branches")%>" >   
         
         <td><%=rs.getString("company_main_branch")%></td>
         <input type="hidden" name="company_main_branch" value="<%=rs.getString("company_main_branch")%>" >    
         
          <td>
             <input type="submit" class="btn btn-primary btn-rounded" name="btn" value="Update">
          </td>
             <td>
             <input type="submit" class="btn btn-danger btn-rounded" name="btn" value="Delete">
         </td>
     
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
        </form>
    </body>
</html>
