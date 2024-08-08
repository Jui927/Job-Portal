/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Add_jobs extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
  // String jobname=req.getParameter("txt_jjobname");
   String designame=req.getParameter("txt_ddesignationname");
   String compname=req.getParameter("txt_compbname");
   String jobid=req.getParameter("txt_jobid");
   String joblocation=req.getParameter("txt_jlocation");
    String category=req.getParameter("txt_jcategory");
   String experience =req.getParameter("txt_jexperienceequired");
   String salary=req.getParameter("txt_jsalary");
    String jobdesc=req.getParameter("txt_jjobdescription");
   String event=req.getParameter("btn");
   
  // out.println(jobname);
    out.println(designame);
   out.println(compname);
   out.println (jobid);
   out.println(joblocation);
    out.println(category);
   out.println(experience);
   out.println(salary);
   out.println(jobdesc);
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
         if(event.equals("Add"))
       {
          String query1="insert into tbl_job(desgn_name,company_name,job_location,select_category,job_descr,job_salary,job_experience)values('"+designame+"','"+compname+"','"+joblocation+"', '"+category+"', '"+jobdesc+"','"+salary+"','"+experience+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
         
         if(event.equals("Delete"))
         {
         String query1="delete from  tbl_job where job_id='"+jobid+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
         
          if(event.equals("Update"))
         {
         String query1="update tbl_job set desgn_name='"+designame+"',company_name='"+compname+"' ,job_id='"+jobid+"', job_location='"+joblocation+"',  select_category='"+category+"', job_descr='"+jobdesc+"',job_salary='"+salary+"',job_experience='"+experience+"' where job_id='"+jobid+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
         }
     
}     
}     