package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.lang.*;

public final class sd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write("        \n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<!-- DW6 -->\n");
      out.write("<head>\n");
      out.write("<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->\n");
      out.write("<title>Indian Railways</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"mm_restaurant1.css\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body bgcolor=\"#0066cc\">\n");
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("\t<tr bgcolor=\"#99ccff\">\n");
      out.write("\t<td width=\"134\" nowrap=\"nowrap\" bgcolor=\"#FFFFFF\" ><img src=\"Images/railways.jpg\" width=\"101\" height=\"80\" longdesc=\"/Images/railways.jpg\" /></td>\n");
      out.write("\t<td height=\"60\" colspan=\"3\" nowrap=\"nowrap\" bgcolor=\"#FFFFFF\" class=\"logo\"><p align=\"center\"><strong>INDIAN RAILWAYS PASSENGER RESERVATION ENQUIRY</strong></p>\n");
      out.write("\t<div align=\"center\"><span class=\"tagline\">| Government Of India |</span></td>\n");
      out.write("\t<td width=\"4\" bgcolor=\"#FFFFFF\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\" bgcolor=\"#FFFFFF\"><img src=\"Images/crisLogo[1].gif\" width=\"86\" height=\"64\" longdesc=\"/Images/crisLogo[1].gif\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\t<tr bgcolor=\"#003399\">\n");
      out.write("\t<td width=\"134\" nowrap=\"nowrap\">&nbsp;</td>\n");
      out.write("\t<td height=\"36\" colspan=\"3\" id=\"navigation\" nowrap=\"nowrap\" class=\"navText\"><a href=\"index.jsp\">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("      <a href=\"routefinder.jsp\">TRAIN SCHEDULE</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"PNREnquiry.jsp\">PNR ENQUIRY</a>&nbsp;\n");
      out.write("      &nbsp;&nbsp;&nbsp; <a href=\"FareEnquiry.jsp\">FARES</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("      <a href=\"Login.jsp\">RESERVATION</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"javascript:;\">INFORMATION</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("\t  <td width=\"4\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\t<tr bgcolor=\"#ffffff\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\t<tr bgcolor=\"#ffffff\">\n");
      out.write("\t<td colspan=\"2\" valign=\"top\" bgcolor=\"#ffffcc\">\n");
      out.write("\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"230\">\n");
      out.write("\t\t\n");
      out.write("\t</table>\t</td>\n");
      out.write("\t<td width=\"51\" valign=\"top\"><img src=\"/Images/mm_spacer.gif\" alt=\"\" width=\"50\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t<td width=\"454\" valign=\"top\"><br />\n");
      out.write("\t&nbsp;<br />\n");
      out.write("\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"440\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t<td class=\"pageHeader\">Please Log In :</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t<td class=\"bodyText\">\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("<form action=\"LoginHandler.jsp\" method=\"post\">\n");
      out.write("   \n");
      out.write("Username :<input type=\"text\" name=\"username\" value=\"\" size=\"13\" /><br>\n");
      out.write("Password :<input type=\"password\" name=\"password\" maxlength=\"10\" size=\"13\" value=\"\"/>\n");
      out.write("<br>\n");
      out.write("<input type=\"submit\" name=\"Login\" value=\"Login\">\n");
      out.write("</form>\n");
      out.write("If you have not registered please sign in here <a href=\"userform.jsp\">REGISTER</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t <br />\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t</table>\t</td>\n");
      out.write("\t<td width=\"4\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\t<tr bgcolor=\"#ffffff\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\t<tr>\n");
      out.write("\t<td colspan=\"6\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<tr bgcolor=\"#003399\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\t<tr>\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"2\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\t<tr bgcolor=\"#003399\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<tr>\n");
      out.write("\t<td width=\"134\">&nbsp;</td>\n");
      out.write("\t<td width=\"188\">&nbsp;</td>\n");
      out.write("\t<td width=\"51\">&nbsp;</td>\n");
      out.write("\t<td width=\"454\">&nbsp;</td>\n");
      out.write("\t<td width=\"4\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("     \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
