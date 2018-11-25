package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \r\n");
      out.write("<head>\r\n");
      out.write("    <title>Log</title>\r\n");
      out.write("    <link rel='stylesheet' href='bootstrap-3.3.7-dist/css/bootstrap.css'>\r\n");
      out.write("    <link rel='stylesheet' href='bootstrap-3.3.7-dist/fonts/glyphicons-halflings-regular.ttf'>\r\n");
      out.write("    <link rel='stylesheet' href='leiss.css'>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class='container-fluid'>\r\n");
      out.write("    <div class='row'>\r\n");
      out.write("        <!--        SIDE MENU        -->\r\n");
      out.write("        <div class='col-lg-2 sidemenu'>\r\n");
      out.write("            <div class='row'>\r\n");
      out.write("                <div class='col-lg-12' style='text-align: center'><br><img src='images/tinylabel.png' style='height: 30px'></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <hr>\r\n");
      out.write("            \r\n");
      out.write("            <div class='row'>\r\n");
      out.write("                <div class='col-lg-12' style='text-align: center;'><span style='color: #898989'>Lab Technician</span> : <span style='color: whitesmoke'>Tom Holland</span></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <hr>\r\n");
      out.write("            \r\n");
      out.write("            <div class='row'>\r\n");
      out.write("                <div class='col-lg-12' style='padding: 5px;'>\r\n");
      out.write("                    <ul class=\"nav nav-pills nav-stacked sidemenuul\" >\r\n");
      out.write("                        <li role=\"presentation\"><a href=\"dashboard.jsp\">Dashboard</a></li>\r\n");
      out.write("                        <li role=\"presentation\"><a href=\"equipments-all.jsp\">All Equipments</a></li>\r\n");
      out.write("                        <li role=\"presentation\"><a href=\"equipments-normal.jsp\">Normal Equipments</a></li>\r\n");
      out.write("                        <li role=\"presentation\"><a href=\"equipments-borrowed.jsp\">Borrowed Equipments</a></li>\r\n");
      out.write("                        <li role=\"presentation\"><a href=\"equipments-damaged.jsp\">Damaged Equipments</a></li>\r\n");
      out.write("                        <li role=\"presentation\"><a href=\"#.jsp\">Log</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("                \r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class='col-lg-10 dash'>\r\n");
      out.write("            <div class='row'>\r\n");
      out.write("                <div class='col-lg-8' style=\"background-color: #131419; height: 60px;\"></div>\r\n");
      out.write("                <div class='col-lg-3' style=\"background-color: #131419; height: 60px; text-align: right; padding-right: 0px;\">\r\n");
      out.write("                    <form class=\"navbar-form\">\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <input type=\"text\" class=\"form-control\"  id='searchbar' placeholder=\"Search\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-default btn-lg transbtn\" title='Search'><span class=\"glyphicon glyphicon-search\" aria-hidden=\"true\" style='color: whitesmoke;'></span></button>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class='col-lg-1' style=\"background-color: #131419; height: 60px; text-align: left; padding-left: 0px;\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div class='row'>\r\n");
      out.write("                <div class='col-lg-12 equip'>\r\n");
      out.write("                    <div class=\"panel panel-danger\">\r\n");
      out.write("                        <div class=\"panel-heading\">Log</div>\r\n");
      out.write("                        <div class=\"panel-body panelbodyequip\">\r\n");
      out.write("                            <table class='table'>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th>Date</th>\r\n");
      out.write("                                    <th>Serial No.</th>\r\n");
      out.write("                                    <th>Name</th>\r\n");
      out.write("                                    <th>Details</th>\r\n");
      out.write("                                    <th>Lab Tech</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>Nov 26 2018</td>\r\n");
      out.write("                                    <td>87872319</td>\r\n");
      out.write("                                    <td>Pyrex test tube - 300ml</td>\r\n");
      out.write("                                    <td>Damaged</td>\r\n");
      out.write("                                    <td>Tom Holland</td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        \r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<script src=\"bootstrap-3.3.7-dist/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script>\r\n");
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
