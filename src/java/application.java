

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class application extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String username=req.getParameter("txt_ausername");
   String pass=req.getParameter("txt_spass");
     String date=req.getParameter("txt_edate");
    String fullname=req.getParameter("txt_sfullname");
   String joblocation=req.getParameter("txt_location");
   
   String dname=req.getParameter("txt_dname");
    String selectcategory=req.getParameter("txt_jcategory");
    
    
    String aid=req.getParameter("aid");
   String event=req.getParameter("btn");
   
   out.println(username);
   out.println(pass);
   out.println(date);
   out.println(fullname);
   out.println (joblocation);
    
   out.println(dname);
  out.println (selectcategory);
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         HttpSession session=req.getSession();
         if(event.equals("Apply"))
       {
          String query1="insert into tbl_applicationform(username,pass,date,fullname,jobloacation,desgnname,select_category,signup_id,status)values('"+username+"','"+pass+"','"+date+"','"+fullname+"','"+joblocation+"','"+dname+"','"+selectcategory+"','"+session.getAttribute("signupid") +"','Pending')";
       String result=db.Query(query1,"applied");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Applied successfully');");
      out.println("location='dynamic_jobs.jsp';");
      out.println("</script>");
 
       }
         
         
         
         
         if(event.equals("Approve"))
         {
         
         String update=db.Query("update tbl_applicationform set status='Approve' where aid='"+aid+"'", "Updated");
         out.println(update);
         resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Approved successfully');");
      out.println("location='dynamic_application.jsp';");
      out.println("</script>");
         }
         
          if(event.equals("Decline"))
         {
         
         String update=db.Query("update tbl_applicationform set status='Decline' where aid='"+aid+"'", "Updated");
         out.println(update);
          resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Declined successfully');");
      out.println("location='dynamic_application.jsp';");
      out.println("</script>");
         }
          
          
          
          if(event.equals("View All Details"))
         {
         
         session.setAttribute("signupid", req.getParameter("signup_id"));
         resp.sendRedirect("all_details.jsp");
         }
         
}

}