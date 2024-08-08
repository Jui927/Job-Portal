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
public class Addcriteria extends HttpServlet {
     @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String designame=req.getParameter("txt_acdesignationname");
   String criteriaid=req.getParameter("txt_accriteriaid");
   String criteria1=req.getParameter("txt_accriteria1");
   String criteria2=req.getParameter("txt_accriteria2");
   String criteria3 =req.getParameter("txt_accriteria3");
   String description=req.getParameter("txt_acdescription");
   String event=req.getParameter("btn");
   
   out.println(designame);
    out.println(criteriaid);
   out.println (criteria1);
   out.println(criteria2);
   out.println(criteria3);
   out.println(description);
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         if(event.equals("Add"))
       {
          String query1="insert into tbl_criteria(desgn_name,criteria_1,criteria_2,criteria_3,criteria_descr)values('"+designame+"','"+criteria1+"','"+criteria2+"','"+criteria3+"','"+description+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
         
         if(event.equals("Delete"))
         {
         String query1="delete from  tbl_criteria where criteria_id='"+criteriaid+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
         
           if(event.equals("Update"))
         {
         String query1="update tbl_criteria set criteria_id='"+criteriaid+"',desgn_name='"+designame+"', criteria_descr='"+description+"', criteria_1='"+criteria1+"', criteria_2='"+criteria2+"', criteria_3='"+criteria3+"' where criteria_id='"+criteriaid+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
         }
     }
     
}