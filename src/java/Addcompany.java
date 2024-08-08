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

/**
 *
 * @author jk 0440
 */
public class Addcompany extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
   String compname=req.getParameter("txt_ccompanyname");
   String companyid=req.getParameter("txt_companyid");
   String contact=req.getParameter("txt_ccontact");
   String email=req.getParameter("txt_cemail");
   String image =req.getParameter("image");
   String compaddress=req.getParameter("txt_ccompanyaddress");
   String branch=req.getParameter("txt_cbranch");
   String mainbranch=req.getParameter("txt_cmainbranch");
   String event=req.getParameter("btn");
   
    out.println(compname);
    out.println(companyid);
    out.println(contact);
    out.println(email);
    out.println(image);
    out.println(compaddress);
    out.println(branch);
    out.println(mainbranch);
    out.println(event);
    
     DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
         
         if(event.equals("Add"))
       {
 String query1="insert into tbl_company(company_name,company_contact,company_email,company_image,company_address,company_branches,company_main_branch)values('"+compname+"','"+contact+"','"+email+"','img/"+image+"','"+compaddress+"','"+branch+"','"+mainbranch+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
         
          if(event.equals("Delete"))
         {
         String query1="delete from  tbl_company where company_id='"+companyid+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
          
        if(event.equals("Update"))
         {
         String query1="update tbl_company set company_name='"+compname+"',company_contact='"+contact+"',company_email='"+email+"',company_image='"+image+"',company_address='"+compaddress+"',company_branches='"+branch+"',company_main_branch='"+mainbranch+"'where company_id='"+companyid+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
         }
    }  
    }


