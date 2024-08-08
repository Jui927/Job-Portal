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

/**
 *
 * @author jk 0440
 */
public class Add_designation extends HttpServlet {
    @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String designame=req.getParameter("txt_ddesignationname");
  String desgid=req.getParameter("txt_dDesignationID");
 String experience=req.getParameter("txt_drequiredexperience");
   String description=req.getParameter("txt_ddesciption");
   String event=req.getParameter("btn");
   
   out.println(designame);
    out.println(desgid);
   out.println (experience);
   out.println(description);
   out.println(event);
   
   DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        if(event.equals("Add"))
       {
          String query1="insert into tbl_designation(desgn_name,desgn_experience,desgn_descr)values('"+designame+"','"+experience+"','"+description+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Added successfully');");
      out.println("location='Add_designation.jsp';");
      out.println("</script>");
 
       }
        
        if(event.equals("Delete"))
         {
         String query1="delete from  tbl_designation where desgn_id='"+desgid+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Deleted successfully');");
     // out.println("location='dynamic_jobs.jsp';");
      out.println("</script>");
         }
        
         if(event.equals("Update"))
         {
         String query1="update tbl_designation set desgn_name='"+designame+"', desgn_experience='"+experience+"', desgn_descr='"+description+"'where desgn_id='"+desgid+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Upadated successfully');");
    //  out.println("location='dynamic_jobs.jsp';");
      out.println("</script>");
         }
    }
}
  