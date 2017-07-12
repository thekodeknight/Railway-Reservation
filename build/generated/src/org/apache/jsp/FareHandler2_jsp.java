package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.lang.*;
import java.util.*;

public final class FareHandler2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <tr bgcolor=\"#ffffff\">\n");
      out.write("            <td colspan=\"2\" valign=\"top\" bgcolor=\"#ffffcc\">\n");
      out.write("            <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"300\">\n");
      out.write("                    \n");
      out.write("            </table>\t</td>\n");
      out.write("            \n");
      out.write("            <td width=\"51\" valign=\"top\"><img src=\"/Images/mm_spacer.gif\" alt=\"\" width=\"50\" height=\"1\" border=\"0\" /></td>\n");
      out.write("            <td width=\"454\" valign=\"top\"><br />\n");
      out.write("            &nbsp;<br />\n");
      out.write("          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"440\">\n");
      out.write("              <tr>\n");
      out.write("                \n");
      out.write("               <td class=\"bodyText\" >\n");
      out.write("                        \n");
      out.write("                        <p>\n");
      out.write("                            ");

                            String returnvalue=request.getParameter("Trains");
                            String args[]=returnvalue.split(",");
                            String Train=args[0];
                            String Source=args[1];
                            String Dest=args[2];
                            try {Class.forName("oracle.jdbc.driver.OracleDriver"); // Oracle Driver
                            } catch (java.lang.ClassNotFoundException e) {
                            System.out.println("ClassNotFoundException: " + e.getMessage());
                            }   
                            if(request.getParameter("Submit").equals("Get Fare"))
                            {
                            out.println("<tr>" +"<td class=\"pageHeader\">Fare Enquiry</td>" + "</tr><br>");       
                            int count=1,trainno,distance1,distance2;                           
                            Connection con;
                            PreparedStatement ps;
                            ResultSet rs;ResultSet rs2;
                            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
                            String insertStmt= "SELECT distance FROM STOP WHERE stncode= ? AND trainno = ?";
                            ps = con.prepareStatement(insertStmt);
                            ps.setString(1,Source);
                            ps.setString(2,Train);
                            try{
                            rs = ps.executeQuery();
                            if(rs.next())
                            {distance1=rs.getInt(1);     
                            insertStmt="SELECT distance FROM STOP,STATION WHERE trainno = ? AND Station.stncode=Stop.stncode AND Station.stncode= ? ";
                            ps=con.prepareStatement(insertStmt);
                            ps.setString(1,Train); 
                            ps.setString(2,Dest);
                            rs=ps.executeQuery();
                            if(rs.next())
                            {
                            distance2=rs.getInt(1);
                            
                            if(distance2>distance1)
                            { 
                            insertStmt="SELECT * FROM TRAINS,SCHEDULE WHERE TRAINS.trainno=SCHEDULE.trainno AND TRAINS.trainno= ? ";   
                            ps=con.prepareStatement(insertStmt);
                            ps.setString(1,Train);
                            rs=ps.executeQuery();rs.next();
                            
                            
                            out.println("<table border=\"4\" style=\"font-size:11pt\"><tr><th>Train no</th><th>Train name</th><th>Source</th><th>Dest</th><th>SUN</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th></tr>");                   
                            
                            out.println("<tr><td>" + rs.getInt(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>" + "</td>");
                            out.println("<td>" + Source + "</td>" + "</td>");
                            out.println("<td>" + Dest + "</td>" + "</td>");    
                            out.println("<td>" + rs.getString(9) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(10) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(11) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(12) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(13) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(14) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(15) + "</td>" + "</td>\n</tr></table>"); 
                            
      out.write("\n");
      out.write("                            \n");
      out.write("                            <TABLE  BORDER = \"4\" ALIGN=center font size:1>                        \n");
      out.write("                                <TR>\n");
      out.write("                                    <TH ALIGN = Left>Train Type</TH>\n");
      out.write("                                    <TD ALIGN = Left>");
      out.print(rs.getString(3));
      out.write("</TD>\n");
      out.write("                                    <TH ALIGN = Left>Distance (kms)</TH>\n");
      out.write("                                    <TD ALIGN = Left>");
      out.print((distance2-distance1));
      out.write("</TD>\n");
      out.write("                                </TR>\n");
      out.write("                            </TABLE>\n");
      out.write("                            <br><div align=center>All Units are in Rupees (Rs)</div>\n");
      out.write("                            <TABLE  BORDER = \"4\" ALIGN=center font size:1>\n");
      out.write("                                <TR>\n");
      out.write("                                    <TH ALIGN = Center>Class</TH>\n");
      out.write("                                    <TH ALIGN = Center>Base Fare</TH>\n");
      out.write("                                </TR>\n");
      out.write("                                <TR>\n");
      out.write("                                    <TH ALIGN = Left>Sleeper Class</TH>\n");
      out.write("                                    \n");
      out.write("                                    <TD ALIGN = Right>");
      out.print((int)((distance2-distance1)*(0.4)));
      out.write("</TD>\n");
      out.write("                                </TR>\n");
      out.write("                                <TR>\n");
      out.write("                                    <TH ALIGN = Left>Third AC</TH>\n");
      out.write("                                    <TD ALIGN = Right>");
      out.print((int)((distance2-distance1)*(0.9)));
      out.write("</TD>\n");
      out.write("                                </TR>\n");
      out.write("                                <TR>\n");
      out.write("                                    <TH ALIGN = Left>Second AC</TH>\n");
      out.write("                                    <TD ALIGN = Right>");
      out.print((int)((distance2-distance1)*(1.4)));
      out.write("</TD>\n");
      out.write("                                </TR>\n");
      out.write("                                <TR>\n");
      out.write("                                    <TH ALIGN = Left>First AC</TH>\n");
      out.write("                                    \n");
      out.write("                                    <TD ALIGN = Right>");
      out.print((int)((distance2-distance1)*(2.1)));
      out.write("</TD>\n");
      out.write("                                </TR>\n");
      out.write("                            </TABLE>\n");
      out.write("                            \n");
      out.write("                            ");

                            }else
                            {out.println("The Train does not go from "+Source+" to "+Dest);}
                            }else{out.println("The Train does not go from "+Source+" to "+Dest);}
                            }else{out.println("The Train does not go from "+Source+" to "+Dest);}
                            
                            rs.close();
                            ps.close();   
                            con.close();
                            }catch(SQLException e){out.println("<b>No Trains Found !!</b>");}
                            
                            } else if(request.getParameter("Submit").equals("Get Availability"))
                            {
                            out.println("<tr>" +"<td class=\"pageHeader\">Seat Availability</td>" + "</tr><br>"); 
                            java.util.Calendar c = Calendar.getInstance();
                            java.util.Date D = c.getTime();
                            long t= D.getTime();
                            java.sql.Date today = new java.sql.Date(t);
                            java.sql.Date weekafter = new java.sql.Date(t);
                            weekafter.setDate(today.getDate() + 7);
                            Connection con;
                            PreparedStatement ps;
                            ResultSet rs; 
                            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
                            String insertStmt= "SELECT * FROM SEATS WHERE trainno= ?  AND Dat BETWEEN ? AND ?" ;
                            ps = con.prepareStatement(insertStmt);
                            ps.setString(1,Train);
                            ps.setDate(2,today);
                            ps.setDate(3,weekafter);
                            rs = ps.executeQuery();
                            out.println("<table border=\"6\" style=\"font-size:11pt\" width=\"400\"><tr><th>Date</th><th>SL</th><th>1A</th><th>2A</th><th>3A</th></tr>");
                            while (rs.next()) {
                            out.println("<tr>\n<td align = center>" + rs.getDate(2) + "</td>" + "</td>");
                            out.println("<td align = center>" + rs.getInt(3) + "</td>" + "</td>");
                            out.println("<td align = center>" + rs.getInt(4) + "</td>" + "</td>");
                            out.println("<td align = center>" + rs.getInt(5) + "</td>" + "</td>\n</tr>");
                            }
                            out.println("</table>");
                            rs.close();
                            ps.close();   
                            con.close();                               
                            }
                            else 
                            {
                            out.println("<tr>" +"<td class=\"pageHeader\">Train Route </td>" + "</tr><br>"); 
                            Connection con;
                            PreparedStatement ps;
                            ResultSet rs;
                            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
                            String insertStmt= "SELECT * FROM STATION,STOP WHERE STATION.stncode=STOP.stncode AND STOP.trainno = ? ORDER BY distance";
                            ps = con.prepareStatement(insertStmt);
                            ps.setString(1,Train);
                            rs = ps.executeQuery();
                            
                            out.println("<table border=\"6\" style=\"font-size:11pt\"><tr><th>Si no.</th><th>Station Code</th><th>Station name</th><th>Arrival Time</th><th>Dep. Time</th><th>Distance</th></tr>");
                            int count=1;  
                            while (rs.next()) {
                            out.println("<tr>\n<td>" + count + "</td>");count++;
                            out.println("<td>" + rs.getString(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(6) + "</td>" + "</td>");
                            out.println("<td>" + rs.getString(7) + "</td>" + "</td>\n</tr>");
                            }
                            out.println("</table>");
                            rs.close();
                            ps.close();   
                            con.close();                                                                                                                        
                            }                 
                            
      out.write("\n");
      out.write("                        </p>\n");
      out.write("            \n");
      out.write("           <br />\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("            </table>        </td>\n");
      out.write("        <td width=\"4\">&nbsp;</td>\n");
      out.write("\t<td width=\"164\">&nbsp;</td>\n");
      out.write("\t</tr>\n");
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
      out.write("\n");
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
