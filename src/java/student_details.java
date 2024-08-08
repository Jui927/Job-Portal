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
public class student_details extends HttpServlet {
    
      @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
     PrintWriter out=resp.getWriter();
   String uname=req.getParameter("txt_stusername");
   String pass=req.getParameter("txt_stpassword");
   String fullname=req.getParameter("txt_fullname");
   String contact=req.getParameter("txt_stcontact");
   String email =req.getParameter("txt_stemail");
   String Dob=req.getParameter("txt_stdob");
   String age=req.getParameter("txt_stage");
   String gender=req.getParameter("txt_gender");
   String address=req.getParameter("txt_staddress");
   String country=req.getParameter("txt_country");
   String state=req.getParameter("txt_state");
   String city=req.getParameter("txt_stcity");
   String pincode=req.getParameter("txt_stpincode");
   String image=req.getParameter("txt_image");
   String cv=req.getParameter("txt_cv");
   String event=req.getParameter("btn");
   
   out.println(uname);
   out.println (pass);
   out.println (fullname);
   out.println(contact);
   out.println(email);
   out.println(Dob);
   out.println(age);
   out.println(gender);
   out.println(address);
   out.println(country);
   out.println(state);
   out.println(city);
   out.println(pincode);
   out.println(image);
   out.println(cv);
   out.println(event);
   
    DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         HttpSession session=req.getSession();
         if(event.equals("save"))
       {
 String query1="insert into tbl_student_details(username,pass,fullname,contact,email,dob,age,gender,address,country,state,city ,pincode,image,cv,signup_id)values('"+uname+"','"+pass+"','"+fullname+"', '"+contact+"','"+email+"','"+Dob+"','"+age+"','"+gender+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"','img/"+image+"','img/"+cv+"','"+session.getAttribute("signupid")+"')";
 String result=db.Query(query1, "Record Inserted");
       out.println(result);
       
      
     
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record submitted successfully');");
      out.println("location='Educational_details.jsp';");
      out.println("</script>");
     
       } 
         if(event.equals("delete"))
         {
         String query1="delete from  tbl_student_details where email='"+email+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
         
          if(event.equals("update"))
         {
         String query1="update tbl_student_details set username='"+uname+"',pass='"+pass+"' ,fullname='"+fullname+"', contact='"+contact+"', email='"+email+"',dob='"+Dob+"',age='"+age+"',gender='"+gender+"',address='"+address+"',country='"+country+"',gender='"+gender+"',state='"+state+"',city='"+city+"',pincode='"+pincode+"',image='img/"+image+"',cv='img/"+cv+"' where signup_id='"+session.getAttribute("signupid")+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
         }
        
       
        
 
       }
         
    }
