package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.lang.*;

public final class PNRHandler_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<div align=\"center\"><span class=\"tagline\">|Government Of India|</span></td>\n");
      out.write("\t<td width=\"4\" bgcolor=\"#FFFFFF\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\" bgcolor=\"#FFFFFF\"><img src=\"Images/crisLogo[1].gif\" width=\"86\" height=\"64\" longdesc=\"/Images/crisLogo[1].gif\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("        <tr bgcolor=\"#003399\">\n");
      out.write("\t<td width=\"134\" nowrap=\"nowrap\">&nbsp;</td>\n");
      out.write("\t<td height=\"36\" colspan=\"3\" id=\"navigation\" nowrap=\"nowrap\" class=\"navText\"><a href=\"index.jsp\">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("      <a href=\"routefinder.jsp\">TRAIN SCHEDULE</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"PNREnquiry.jsp\">PNR ENQUIRY</a>&nbsp;\n");
      out.write("      &nbsp;&nbsp;&nbsp; <a href=\"FareEnquiry.jsp\">FARES</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("      <a href=\"Login.jsp\">RESERVATION</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"javascript:;\">INFORMATION</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("\t  <td width=\"4\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
      out.write("        <tr bgcolor=\"#ffffff\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("        <tr bgcolor=\"#ffffff\">\n");
      out.write("\t<td colspan=\"2\" valign=\"top\" bgcolor=\"#ffffcc\">\n");
      out.write("\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"230\">\n");
      out.write("\t\t\n");
      out.write("\t</table>\t</td>\n");
      out.write("\t<td width=\"51\" valign=\"top\"><img src=\"/Images/mm_spacer.gif\" alt=\"\" width=\"50\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t<td width=\"454\" valign=\"top\"><br />\n");
      out.write("\t&nbsp;<br />\n");
      out.write("\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"440\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t<td class=\"pageHeader\">IRCTC's e-Ticketing Slip</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("                    <td class=\"bodyText\" style=\"font-size:10pt\"><p>  \n");
      out.write("                    </p>\n");
      out.write("  \n");
      out.write("  ");
  
     String PNR=request.getParameter("PNR");
  try {Class.forName("oracle.jdbc.driver.OracleDriver"); // Oracle Driver
         } catch (java.lang.ClassNotFoundException e) {
            System.out.println("ClassNotFoundException: " + e.getMessage());
}   
    Connection con;
    PreparedStatement ps;
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
     String insertStmt= "SELECT * FROM BOOKING WHERE PNRno = ?";
     ps = con.prepareStatement(insertStmt);
     ps.setString(1,PNR);
     ResultSet rs = ps.executeQuery();
     if(rs.next())
    {int Trainno=Integer.parseInt(rs.getString(2));
     String Trainname=rs.getString(3);
     Date Dat=rs.getDate(4);
     String tclass=rs.getString(5);
     String From = rs.getString(6);
     String To=rs.getString(7);
     int Distance = Integer.parseInt(rs.getString(8));
     int Fare = Integer.parseInt(rs.getString(9));
     String Name= rs.getString(10);
     int Age = Integer.parseInt(rs.getString(11));
     String Sex = rs.getString(12); 
     String Coachno=rs.getString(13);
     int Seatno = Integer.parseInt(rs.getString(14));
     String Status = rs.getString(15);  
     insertStmt= "SELECT DEPTIME FROM STOP WHERE Trainno = ? AND STNCODE = (SELECT STNCODE FROM STATION WHERE STNNAME= ?)";
     ps = con.prepareStatement(insertStmt);
     ps.setInt(1,Trainno);
     ps.setString(2,From);
     rs = ps.executeQuery();rs.next();
     String Deptime = rs.getString(1);
     rs.close();
     ps.close();   
     con.close();
     

      out.write("\n");
      out.write("<br>\n");
      out.write("<table style=\"font-size:10pt\" width=600>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>PNR No     :</b></td>\n");
      out.write("                                    <td>");
      out.print(PNR);
      out.write("</td>\n");
      out.write("                                    <td><b>Train no   :</b></td>\n");
      out.write("                                    <td>");
      out.print(Trainno);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>Train name      :</b></td>\n");
      out.write("                                    <td>");
      out.print(Trainname);
      out.write("</td>\n");
      out.write("                                    <td><b>Date          :</b></td>\n");
      out.write("                                    <td>");
      out.print(Dat);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>From         :</b></td>\n");
      out.write("                                    <td>");
      out.print(From);
      out.write("</div></td>\n");
      out.write("                                    <td><b>To        :</b></td>\n");
      out.write("                                    <td>");
      out.print(To);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>Class     :</b></td>\n");
      out.write("                                    <td>");
      out.print(tclass);
      out.write("</td>\n");
      out.write("                                    <td><b>Distance         :</b></div></td>\n");
      out.write("                                    <td>");
      out.print(Distance);
      out.write("</td>\n");
      out.write("                                    \n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>Fare         :</b></td>\n");
      out.write("                                    <td>");
      out.print(Fare);
      out.write("</td>\n");
      out.write("                                    <td><b>Departure Time:</b></td>\n");
      out.write("                                    <td>");
      out.print(Deptime);
      out.write("</td>\n");
      out.write("                                </tr>                          \n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>Passenger Details:</b></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                 <tr> </tr>\n");
      out.write("                                <tr> \n");
      out.write("                                    <td><b>Name :</b></td>\n");
      out.write("                                    <td>");
      out.print(Name);
      out.write("</td>\n");
      out.write("                                    <td><b>Age  :</b></td>\n");
      out.write("                                    <td>");
      out.print(Age);
      out.write("</td>\n");
      out.write("                                    <td><b>Sex  :</b></td>\n");
      out.write("                                    <td>");
      out.print(Sex);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>  </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>Reservation Details:</b></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr> </tr>\n");
      out.write("                                <tr> \n");
      out.write("                                    <td><b>Coach No :</b></td>\n");
      out.write("                                    <td>");
      out.print(Coachno);
      out.write("</td>\n");
      out.write("                                    <td><b>Seat No  :</b></td>\n");
      out.write("                                    <td>");
      out.print(Seatno);
      out.write("</td>\n");
      out.write("                                    <td><b>Status  :</b></td>\n");
      out.write("                                    <td>");
      out.print(Status);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                 <tr>  </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>Service Charges:</b></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>  </tr>\n");
      out.write("                                <tr><td><b>IRCTC Service Charge :</b> Rs 20.00</td></tr>\n");
      out.write("                            </table> <br>\n");
      out.write("                            <table style=\"font-size:10pt\" width=600>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td class=\"boldEleven\" align=\"left\"><b> * The accomodation booked is not transferable and is valid only against the above noted photo identity card  &nbsp; * E-ticket cancellations are permitted by the site to the user. In case e-ticket is booked through an agent please contact the respective agents for cancellations &nbsp; * Just dial 139 from your landline, mobile and CDMA phones for Railway Enquiries.  * Contact us on - 24X7 Customer Support at 011-23340000, MON - SAT (10AM to 6PM)011-233455500/4787/4773/5800/8539/8543, Fax no. 011-23345900 </b>&nbsp;&nbsp; </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td class=\"boldEleven\" align=\"left\"><b> * On demand from ticket checking staff the passenger must provide the photo identity card along with the  'Electronic Reservation Slip' print out. In case the passenger does not carry the electronic reservation Slip a charge of Rs 50 shall be recovered by the ticket checking staff and an excess fare ticket will be issued in lieu of that </b></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>    \n");
}
      out.write("           \n");
      out.write("<br />\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t</table>\t</td>\n");
      out.write("        <br>\n");
      out.write("         \n");
      out.write("\t<td width=\"4\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
      out.write("        <tr bgcolor=\"#ffffff\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("        <tr>\n");
      out.write("\t<td colspan=\"6\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
      out.write("        <tr bgcolor=\"#003399\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("        <tr>\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"2\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr bgcolor=\"#003399\">\n");
      out.write("\t<td colspan=\"6\"><img src=\"Images/mm_spacer.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></td>\n");
      out.write("\t</tr>\n");
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
