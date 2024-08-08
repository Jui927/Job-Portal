<%-- 
    Document   : view_report
    Created on : 9 May, 2023, 1:08:19 PM
    Author     : jk 0440
--%>

<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            Connection conn = null;
            String event=request.getParameter("btn");
           String date=request.getParameter("txt_edate");
           String date1=request.getParameter("txt_edate1");
           String id=request.getParameter("txt_id");
            out.println(date);
            //out.println(date1);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2", "root", "root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            
            if(event.equals("View Application report"))
            {
            
            File reportFile = new File(application.getRealPath("report\\application_details(date).jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date1",date);
            parameters.put("date2",date1);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);
            
            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
             if(event.equals("View Feedback report"))
            {
            
            File reportFile = new File(application.getRealPath("report\\feedback_details(date).jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date1",date);
            parameters.put("date2",date1);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);
            
            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            if(event.equals("View Student report"))
            {
            
            File reportFile = new File(application.getRealPath("report\\student_details(id).jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("id",id);
           
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);
            
            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
          
                    if(event.equals("View Job Details report"))
            {
            
            File reportFile = new File(application.getRealPath("report\\job_details.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
         
           
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);
            
            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
           
            
        %>

    </body>
</html>
