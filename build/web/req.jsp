<%-- 
    Document   : req
    Created on : 21 May, 2023, 1:02:13 PM
    Author     : jk 0440
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       int  no,fact=1;
       no=Integer.parseInt(request.getParameter("t1"));
       while(no>=1)
       {
           fact=fact*no;
           no--;
           
       }
       out.println(fact);
       

%>
    </body>
</html>
