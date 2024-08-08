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
import javax.servlet.http.HttpSession;


public class index extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
    String designame=req.getParameter("txt_ddesignationname");
  
   String joblocation=req.getParameter("txt_jlocation");
  
   String selectcategory=req.getParameter("txt_jcategory");
   
   String event=req.getParameter("btn");
   
   out.println(designame);
  
   out.println(joblocation);
   out.println(selectcategory);
   
   out.println(event);
   HttpSession session=req.getSession();
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
         if(event.equals("Find Jobs"))
       {
          session.setAttribute("desgnname", designame);
           session.setAttribute("joblocation", joblocation);
            session.setAttribute("selectcategory", selectcategory);
              resp.sendRedirect("login.jsp"); 
       
 
       }
         
      
     
}     
}     