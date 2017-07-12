package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.lang.*;

public final class LoginHandler_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
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
      out.write("\t<div align=\"center\"><span class=\"tagline\">|Government Of India</span></td>\n");
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
      out.write("\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"300\">\n");
      out.write("\t\t\n");
      out.write("\t</table>\t</td>\n");
      out.write("\t<td width=\"51\" valign=\"top\"><img src=\"/Images/mm_spacer.gif\" alt=\"\" width=\"50\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t<td width=\"454\" valign=\"top\"><br />\n");
      out.write("\t&nbsp;<br />\n");
      out.write("\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"440\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t<td class=\"pageHeader\"></td>\n");
      out.write("\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("                    <td class=\"bodyText\" style=\"font-size:10pt\"><p>\n");
      out.write("                            \n");
      out.write("                            ");
 String username=request.getParameter("username");
                               String password=request.getParameter("password");
      out.write("\n");
      out.write("                        </p>\n");
      out.write("   ");
  try {Class.forName("oracle.jdbc.driver.OracleDriver"); // Oracle Driver
         } catch (java.lang.ClassNotFoundException e) {System.out.println("ClassNotFoundException: " + e.getMessage());}   
    Connection con;
    PreparedStatement ps;
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
     String insertStmt= "SELECT * FROM USERS WHERE username = ?";
     ps = con.prepareStatement(insertStmt);
     ps.setString(1,username);
     ResultSet rs = ps.executeQuery();
     if(rs.next())
     {String userpassword=rs.getString(2);
     if(userpassword.equals(password))
     {out.println("<b> Welcome Mr." + rs.getString(3) + " " + rs.getString(4)+ "</b>");
     
      insertStmt= "SELECT stnname FROM STATION";
      ps = con.prepareStatement(insertStmt);
      rs = ps.executeQuery();  
         
      out.write("\n");
      out.write("     <br><br>Plan Your Travel: <br>\n");
      out.write("        <form action=\"PlanTripHandler.jsp\" method=\"get\">\n");
      out.write("                                                \n");
      out.write("            Source:  <select name=\"stn1\">\n");
      out.write("              ");
                    
                    while ( rs.next() ) {
                
      out.write(" <option>  ");
 out.println(rs.getString(1));
      out.write("  </option>\n");
      out.write("                       ");
 }rs=ps.executeQuery();
      out.write("\n");
      out.write("                     </select>\n");
      out.write("                     Destination: <select name=\"stn2\">   \n");
      out.write("                         ");
                    
                         while ( rs.next() ) {
                         
      out.write(" <option>  ");
 out.println(rs.getString(1));
      out.write("  </option> ");
 }
                     
      out.write(" </select>\n");
      out.write("  Date:   \n");
      out.write("\n");
      out.write("<select name=\"day\">\n");
      out.write("\n");
      out.write("<option value=\"0\">Day</option>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<option value=\"1\">01</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"2\">02</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"3\">03</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"4\">04</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"5\">05</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"6\">06</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"7\">07</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"8\">08</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"9\">09</option>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<option value=\"10\">10</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"11\">11</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"12\">12</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"13\">13</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"14\">14</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"15\">15</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"16\">16</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"17\">17</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"18\">18</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"19\">19</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"20\">20</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"21\">21</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"22\">22</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"23\">23</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"24\">24</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"25\">25</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"26\">26</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"27\">27</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"28\">28</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"29\">29</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"30\">30</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t<option value=\"31\">31</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("</select>\n");
      out.write("\n");
      out.write(" <select name=\"month\">\n");
      out.write("\n");
      out.write("<option value=\"0\">Month</option>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<option value=\"01\">Jan</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"02\">Feb</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"03\">Mar</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"04\">Apr</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"05\">May</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"06\">Jun</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"07\">Jul</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"08\">Aug</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"09\">Sep</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"10\">Oct</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"11\">Nov</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<option value=\"12\">Dec</option>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("\n");
      out.write("<select name=\"year\">\n");
      out.write("\n");
      out.write("<option value=\"0\">Year</option>\n");
      out.write("\n");
      out.write("<option value=\"2008\">2008</option>\n");
      out.write("\n");
      out.write("</select>\n");
      out.write(" <input type=\"submit\" value=\"Find Trains\">\n");
      out.write("                        </form>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("     \n");
      out.write("     ");

     
     }
      else
      out.println("Wrong Password !!");    
      }
      else
     {
      out.println("You've Entered a Wrong user id !!");
     
      out.write(" <br><br>If you have not registered please sign in here <a href=\"userform.jsp\">REGISTER</a><br><br>\n");
      out.write("    ");
 }
     rs.close();
     ps.close();   
     con.close();

      out.write("\n");
      out.write("  \n");
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
      out.write("     ");
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
