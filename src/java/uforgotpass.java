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

/**
 *
 * @author jk 0440
 */
public class uforgotpass extends HttpServlet {
    private String username;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String username=req.getParameter("txt_luname");
        String new_pass=req.getParameter("txt_lpass");
        String verify_pass=req.getParameter("txt_lpass2");
        String event=req.getParameter("btn");
        
        
        
          out.println(username);
        out.println(new_pass);
        out.println(verify_pass);
        out.println(event);
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        Connection cn=null;
        Statement st=null;
        
        if(event.equals("Save"))
     {

    
         try{
          Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
    st=cn.createStatement();
    String sql="select * from tbl_signup where username='"+username.toString()+"'";
             ResultSet rs=st.executeQuery(sql);
             if(rs.next())
             {
                 String query1="update tbl_signup set pass='"+new_pass.toString()+"'where  username='"+username.toString()+"' ";
                  String result=db.Query(query1, "Record Updated");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Change Password successfully');");
      out.println("location='login.jsp';");
      out.println("</script>");
                
             }
             else
             {
                 resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Incorrect Username And Password');");
      out.println("location='login.jsp';");
      out.println("</script>");
             }
    }catch(Exception ex)
    {
   out.println(ex.toString());
    }
    }
     
  
    }

}      
           
    

    
