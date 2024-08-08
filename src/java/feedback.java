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
public class feedback extends HttpServlet {
    @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String uname=req.getParameter("txt_fusername");
   String pass=req.getParameter("txt_fpassword");
   String email=req.getParameter("txt_femail");
   String contact =req.getParameter("txt_fcontact");
    String date=req.getParameter("txt_stdate");
   String msg=req.getParameter("txt_fmessage");
   String event=req.getParameter("btn");
   
   out.println(uname);
   out.println (pass);
   out.println(email);
   out.println(contact);
    out.println(date);
   out.println(msg);
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         HttpSession session=req.getSession();
        
         if(event.equals("Submit"))
       {
          String query1="insert into tbl_feedback(username,pass,contact,email,date,message)values('"+uname+"','"+pass+"','"+contact+"','"+email+"', '"+date+"', '"+msg+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Submitted successfully');");
      out.println("location='feedback.jsp';");
      out.println("</script>");
 
       }
    }

}