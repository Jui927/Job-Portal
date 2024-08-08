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

/**
 *
 * @author jk 0440
 */

public class signup extends HttpServlet {
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String fullname=req.getParameter("txt_sfullname");
   String email=req.getParameter("txt_semail");
   String contact=req.getParameter("txt_scontact");
   String username =req.getParameter("txt_susername");
   String pass=req.getParameter("txt_spassword");
   
   String event=req.getParameter("btn");
   
   out.println(fullname);
   out.println (email);
   out.println(contact);
   out.println(username);
   out.println(pass);
  
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        HttpSession session=req.getSession();
   
         if(event.equals("Signup"))
       {
          String query1="insert into tbl_signup(fullname,contact,email,username,pass)values('"+fullname+"','"+contact+"','"+email+"','"+username+"','"+pass+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Signup successfully');");
      out.println("location='login.jsp';");
      out.println("</script>");
 
       }
   
}     
}
