

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class admin_signup extends HttpServlet {
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String fullname=req.getParameter("txt_sfullname");
   String email=req.getParameter("txt_semail");
   String contact=req.getParameter("txt_scontact");
   String admin_name =req.getParameter("txt_sadminname");
   String pass=req.getParameter("txt_password");
   String event=req.getParameter("btn");
   
   out.println(fullname);
   out.println (email);
   out.println(contact);
   out.println(admin_name);
   out.println(pass);
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        HttpSession session=req.getSession();
   
         if(event.equals("Signup"))
       {
          String query1="insert into admin_signup(fullname,contact,email,admin_name,pass)values('"+fullname+"','"+contact+"','"+email+"','"+admin_name+"','"+pass+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Signup successfully');");
      out.println("location='admin_login.jsp';");
      out.println("</script>");
 
 
       }
   
}     
}
