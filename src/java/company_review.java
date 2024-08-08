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
public class company_review extends HttpServlet {
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String compname=req.getParameter("txt_crcompanyname");
   String username=req.getParameter("txt_crusername");
   String pass=req.getParameter("txt_crpassword");
   String star =req.getParameter("txt_susername");
   String event=req.getParameter("btn");
   
   out.println(compname);
   out.println (username);
   out.println(pass);
   out.println(star);
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
          if(event.equals("Submit"))
       {
          String query1="insert into tbl_company_review(company_name,username,pass)values('"+compname+"','"+username+"','"+pass+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
 }
}