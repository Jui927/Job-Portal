/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class dynamic_category extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out=resp.getWriter();
         String selectcategory=req.getParameter("scategory");
       
        String event=req.getParameter("btn");
        
        
        out.println(selectcategory);
      
        out.println(event);
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         Connection cn=null;
        Statement st=null;
        
        HttpSession session=req.getSession();
         
        
       if(event.equals("View More"))
       {
           session.setAttribute("selectcategory", selectcategory);
          resp.sendRedirect("dynamic_criteria.jsp");
          
       
 
       }
        
        
        
 }
}   
    
