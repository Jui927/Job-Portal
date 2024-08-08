package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class List_005fcompany_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header_admin.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("     <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("     <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <title>Add company</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("          <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\" rel=\"stylesheet\"/>  \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("           \n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"#\">Navbar</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Home</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"Signup.jsp\">Signup</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"Add_company.jsp\">Add Company</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"Add_jobs.jsp\">Add Jobs</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"Add_designation.jsp\">Add Designation</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"Add_criteria.jsp\">Add Criteria</a>\n");
      out.write("       </ul>\n");
      out.write("      </ul>\n");
      out.write("      <form class=\"d-flex\">\n");
      out.write("       \n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    <div class=\"container\"  >\n");
      out.write("        <h3>Company List</h3>\n");
      out.write("   <table class=\"table table-bordered\">\n");
      out.write("         <div class=\"row\">\n");
      out.write("             <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <input type=\"text\"  name=\"company_name\"   class=\"from-control\">\n");
      out.write("                    <input type=\"submit\" name=\"btn\" value=\"Search\" class=\"btn btn-primary\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            </form>\n");
      out.write("                  </div>\n");
      out.write("    <thead>\n");
      out.write("      <tr>\n");
      out.write("       <th  scope=\"col\">Company Id </th>\n");
      out.write("       <th  scope=\"col\">Company name </th>\n");
      out.write("       <th  scope=\"col\">Company address </th>\n");
      out.write("       <th  scope=\"col\">Company contact </th>        \n");
      out.write("       <th  scope=\"col\">Company email </th>\n");
      out.write("       <th  scope=\"col\">Company image </th>\n");
      out.write("        <th  scope=\"col\">Company branches </th>\n");
      out.write("        <th  scope=\"col\">Company main branch </th>\n");
      out.write("         <th  scope=\"col\">Update</th>\n");
      out.write("         <th  scope=\"col\">Delete </th>\n");
      out.write("           \n");
      out.write("           \n");
      out.write("      </tr>\n");
      out.write("    </thead>\n");
      out.write("    \n");
      out.write("        ");

    Connection cn=null;
   Statement st=null;
   int counter=1;
    
    String sql="";
           String name=request.getParameter("company_name");
           String event=request.getParameter("btn");
           
           if(event!=null)
           {
           sql="select * from tbl_company where company_name='"+name+"'";
           }
           else
           {
           sql="select * from tbl_company" ;
           }
  
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment2","root","root");
           st=cn.createStatement();
           
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           
      out.write("\n");
      out.write("           \n");
      out.write("           \n");
      out.write("           <tbody>\n");
      out.write("              \n");
      out.write("            <tr>\n");
      out.write("                 <form action=\"update_company.jsp\" method=\"post\"> \n");
      out.write("                     \n");
      out.write("                \n");
      out.write("                 <th scope=\"row\">");
      out.print(counter++);
      out.write("</th>\n");
      out.write("                 \n");
      out.write("      <input type=\"hidden\" name=\"company_id\" value=\"");
      out.print(rs.getString("company_id"));
      out.write("\" >  \n");
      out.write("      \n");
      out.write("         <td>");
      out.print(rs.getString("company_name"));
      out.write("</td>\n");
      out.write("          <input type=\"hidden\" name=\"company_name\" value=\"");
      out.print(rs.getString("company_name"));
      out.write("\" >    \n");
      out.write("          \n");
      out.write("        <td>");
      out.print(rs.getString("company_address"));
      out.write("</td>\n");
      out.write("         <input type=\"hidden\" name=\"company_address\" value=\"");
      out.print(rs.getString("company_address"));
      out.write("\" >   \n");
      out.write("         \n");
      out.write("         <td>");
      out.print(rs.getString("company_contact"));
      out.write("</td> \n");
      out.write("         <input type=\"hidden\" name=\"company_contact\" value=\"");
      out.print(rs.getString("company_contact"));
      out.write("\" >    \n");
      out.write("         \n");
      out.write("         <td>");
      out.print(rs.getString("company_email"));
      out.write("</td>\n");
      out.write("         <input type=\"hidden\" name=\"company_email\" value=\"");
      out.print(rs.getString("company_email"));
      out.write("\" >    \n");
      out.write("         \n");
      out.write("         <td>");
      out.print(rs.getString("company_image"));
      out.write("</td>\n");
      out.write("         <input type=\"hidden\" name=\"company_image\" value=\"");
      out.print(rs.getString("company_image"));
      out.write("\" >   \n");
      out.write("         \n");
      out.write("         <td>");
      out.print(rs.getString("company_branches"));
      out.write("</td>\n");
      out.write("         <input type=\"hidden\" name=\"company_branches\" value=\"");
      out.print(rs.getString("company_branches"));
      out.write("\" >   \n");
      out.write("         \n");
      out.write("         <td>");
      out.print(rs.getString("company_main_branch"));
      out.write("</td>\n");
      out.write("         <input type=\"hidden\" name=\"company_main_branch\" value=\"");
      out.print(rs.getString("company_main_branch"));
      out.write("\" >    \n");
      out.write("         \n");
      out.write("          <td>\n");
      out.write("             <input type=\"submit\" class=\"btn btn-primary btn-rounded\" name=\"btn\" value=\"Update\">\n");
      out.write("          </td>\n");
      out.write("             <td>\n");
      out.write("             <input type=\"submit\" class=\"btn btn-danger btn-rounded\" name=\"btn\" value=\"Delete\">\n");
      out.write("         </td>\n");
      out.write("     \n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("     </tbody>\n");
      out.write("           ");

           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     


      out.write("\n");
      out.write("                 \n");
      out.write(" </table>\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
