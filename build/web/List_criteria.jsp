
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
        <title>List Criteria</title>
    </head>
    <style>
        h3{
             color: black;
            font-weight: bold;
        
        }
    </style>
    <body>
         <%@include file="header_admin.jsp"  %>
    
        
    <div class="container" >
   
    
   <table class="table table-bordered">
        <div class="row">
                <div class="col-sm-2">
                      <h3>Criteria List</h3>
                </div>
                <div class="col-sm-8">
           
            </div>
                <div class="col-sm-2"></div>
               </div>
             <div class="row">
               <div class="col-sm-6">
                    <input type="text"  name="desgn_name"   class="form-control">
               </div>
                  <div class="col-sm-4">
                    <input type="submit" name="btn" value="Search"  name="txt_ccriteria" class="btn btn-primary">
                </div>
            </div>
         </Form>
           
                  </div>
    <thead>
      <tr>
        <th scope="col">Criteria Id </th>
        <th scope="col">Designation name</th>
        <th scope="col">Description</th>
        <th scope="col">Criteria 1</th>
        <th scope="col">Criteria 2</th>
        <th scope="col">Criteria 3</th>
        <th scope="col">Update</th>
        <th scope="col">Delete</th>

      </tr>
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
   int counter=1;
   
   String sql="";
           String name=request.getParameter("desgn_name");
           String event=request.getParameter("btn");
           
           if(event!=null)
           {
           sql="select * from tbl_criteria where desgn_name='"+name+"' ";
           }
           else
           {
           sql="select * from tbl_criteria";
           }
  
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
           st=cn.createStatement();
          // sql="select * from tbl_criteria";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
                <form action="update_criteria.jsp" method="post">  
            <tr>
         
          <th scope="row"><%=counter++%></th>
          
       
      <input type="hidden" name="criteria_id" value="<%=rs.getString("criteria_id")%>" > 
      
      <td><%=rs.getString("desgn_name")%></td>
       <input type="hidden" name="desgn_name" value="<%=rs.getString("desgn_name")%>">   
       
       <td><%=rs.getString("criteria_descr")%></td>
        <input type="hidden" name="criteria_descr" value="<%=rs.getString("criteria_descr")%>" >    
        
        <td><%=rs.getString("criteria_1")%></td> 
       <input type="hidden" name="criteria_1" value="<%=rs.getString("criteria_1")%>" >   
       
        <td><%=rs.getString("criteria_2")%></td>
        <input type="hidden" name="criteria_2" value="<%=rs.getString("criteria_2")%>" >    
        
        <td><%=rs.getString("criteria_3")%></td>
         <input type="hidden" name="criteria_3" value="<%=rs.getString("criteria_3")%>" >    
         
            <td>
              <input type="submit" class="btn btn-primary btn-rounded"name="btn" value="Update">
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
   
    </body>
</html>
