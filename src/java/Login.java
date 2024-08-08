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


public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out=resp.getWriter();
        String username=req.getParameter("txt_luname");
        String pass=req.getParameter("txt_lpass");
        String event=req.getParameter("btn");
        
        
        out.println(username);
        out.println(pass);
        out.println(event);
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         Connection cn=null;
        Statement st=null;
        
        HttpSession session=req.getSession();
         
        
        if(event.equals("Login"))
        {
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
            st=cn.createStatement();
            String sql="select * from tbl_signup where username='"+username+"' and pass='"+pass+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
              session.setAttribute("signupid", rs.getString("signup_id"));
              session.setAttribute("username", rs.getString("username"));
              session.setAttribute("fullname", rs.getString("fullname"));
              session.setAttribute("email", rs.getString("email"));
              session.setAttribute("contact", rs.getString("contact"));
              session.setAttribute("address", rs.getString("address"));
               
              resp.sendRedirect("dynamic_jobs.jsp");
            }
            else
            {
              out.println("Login Failed");
            }
        
        }catch(Exception ex)
        {
          out.println(ex.toString());
        } 
            
        
        }
        
        
        
 }
}   
    
