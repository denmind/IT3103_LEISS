package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\r\n");
      out.write("<!--\r\n");
      out.write("\tSingleton = Lab\r\n");
      out.write("\tStrategy = Item states (NORMAL,BORRWOED, DAMAGED)\r\n");
      out.write("\tFactory = Item creations\r\n");
      out.write("-->\r\n");
      out.write("<head>\r\n");
      out.write("    <title>LEISS</title>\r\n");
      out.write("    <link rel='stylesheet' href='bootstrap-3.3.7-dist/css/bootstrap.css'>\r\n");
      out.write("    <link rel='stylesheet' href='leiss.css'>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class='container-fluid'>\r\n");
      out.write("    <div class='row'>\r\n");
      out.write("        <div class='col-lg-6 indexleft'>\r\n");
      out.write("            <div class='row indexleftcenter'>\r\n");
      out.write("                <img src=\"images/label.png\" style='height: 200px'>\r\n");
      out.write("<!--                <h4>LEISS</h4><h8>Laboratory Equipment Inventory System</h8>-->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class='col-lg-6 indexright'>\r\n");
      out.write("            <div class='row'>\r\n");
      out.write("                <form role=\"form\" action=\"login.jsp\" method=\"POST\" class=\"login-form\" autocomplete=\"off\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label class=\"sr-only\" for=\"form-username\">ID No.</label>\r\n");
      out.write("                        <input type=\"text\" name=\"email\" placeholder=\"ID No.\" class=\"form-username form-control\" id=\"id\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label class=\"sr-only\" for=\"form-password\">Password</label>\r\n");
      out.write("                        <input type=\"password\" name=\"password\" placeholder=\"Password\" class=\"form-password form-control\" id=\"pw\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <center><button type=\"submit\" class=\"btn\" style='color: white; background-color: #18181b;'>Log In</button></center>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<script src=\"bootstrap-3.3.7-dist/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>");
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
