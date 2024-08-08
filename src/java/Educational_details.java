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
public class Educational_details extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String graduation=req.getParameter("graduation");
  
    String selectstream=req.getParameter("txt_stream");
     String selectstream1=req.getParameter("txt_stream1");
   String Gpercentage=req.getParameter("txt_egraduationpercent");
   String uniname=req.getParameter("txt_uniname");
   String year1 =req.getParameter("txt_eyear");
   String percentage=req.getParameter("txt_12percentage");
    String board12=req.getParameter("txt_12board");
    String year12=req.getParameter("txt_e12year");
    String percent=req.getParameter("txt_10percentage");
    String Board10=req.getParameter("txt_10board");
    String year10=req.getParameter("txt_e10year");
     String event=req.getParameter("btn");
   
   out.println(graduation);
   out.println(selectstream);
   out.println(selectstream1);
   out.println (Gpercentage);
   out.println(uniname);
   out.println(year1);
   out.println(percentage);
   out.println (board12);
   out.println (year12);
   out.println (percent);
   out.println (Board10);
   out.println (year10);
   out.println(event);
   
   DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         HttpSession session=req.getSession();
          if(event.equals("Submit"))
       {
           if(graduation.equals("ug"))
           {
          String query1="insert into tbl_student_educational_details(UGPG,stream,Gpercent,uniname,yearr,per12th,board,yearr12,per10th,board10,yearr10,signup_id)values('"+graduation+"','"+selectstream+"','"+Gpercentage+"','"+uniname+"','"+year1+"','"+percentage+"','"+board12+"','"+year12+"','"+percent+"','"+Board10+"','"+year10+"','"+session.getAttribute("signupid")+"')";
  String result=db.Query(query1, "Record Inserted");
       out.println(result);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record submitted successfully');");
      out.println("location='application.jsp';");
      out.println("</script>");
 
       }
           else
           {
           String query1="insert into tbl_student_educational_details(UGPG,stream,Gpercent,uniname,yearr,per12th,board,yearr12,per10th,board10,yearr10)values('"+graduation+"','"+selectstream1+"','"+Gpercentage+"','"+uniname+"','"+year1+"','"+percentage+"','"+board12+"','"+year12+"','"+percent+"','"+Board10+"','"+year10+"')";
  String result=db.Query(query1, "Record Inserted");
       out.println(result);
       
        resp.sendRedirect("application.jsp");
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record submitted successfully');");
      out.println("location='Educational_details.jsp';");
      out.println("</script>");
           }
       }
}
}