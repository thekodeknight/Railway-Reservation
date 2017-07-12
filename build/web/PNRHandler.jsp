<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Indian Railways</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
</head>
<body bgcolor="#0066cc">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	<td width="134" nowrap="nowrap" bgcolor="#FFFFFF" ><img src="Images/railways.jpg" width="101" height="80" longdesc="/Images/railways.jpg" /></td>
	<td height="60" colspan="3" nowrap="nowrap" bgcolor="#FFFFFF" class="logo"><p align="center"><strong>INDIAN RAILWAYS PASSENGER RESERVATION ENQUIRY</strong></p>
	<div align="center"><span class="tagline">|Government Of India|</span></td>
	<td width="4" bgcolor="#FFFFFF">&nbsp;</td>
	<td width="164" bgcolor="#FFFFFF"><img src="Images/crisLogo[1].gif" width="86" height="64" longdesc="/Images/crisLogo[1].gif" /></td>
	</tr>
        <tr bgcolor="#003399">
	<td width="134" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" nowrap="nowrap" class="navText"><a href="index.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="routefinder.jsp">TRAIN SCHEDULE</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="PNREnquiry.jsp">PNR ENQUIRY</a>&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="FareEnquiry.jsp">FARES</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="Login.jsp">RESERVATION</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://indianrailwaysreservation.in">INFORMATION</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	  <td width="4">&nbsp;</td>
	<td width="164">&nbsp;</td>
	</tr>
        <tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>
        <tr bgcolor="#ffffff">
	<td colspan="2" valign="top" bgcolor="#ffffcc">
	<table border="0" cellspacing="0" cellpadding="0" width="230">
		
	</table>	</td>
	<td width="51" valign="top"><img src="/Images/mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="454" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="0" width="440">
		<tr>
		<td class="pageHeader">IRCTC's e-Ticketing Slip</td>
		</tr>

		<tr>
                    <td class="bodyText" style="font-size:10pt"><p>  
                    </p>
  <%@ page language="java" import="java.sql.*, java.io.*, java.lang.*" %>
  <%  
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
     
%>
<br>
<table style="font-size:10pt" width=600>
                                <tr>
                                    <td><b>PNR No     :</b></td>
                                    <td><%=PNR%></td>
                                    <td><b>Train no   :</b></td>
                                    <td><%=Trainno%></td>
                                </tr>
                                <tr>
                                    <td><b>Train name      :</b></td>
                                    <td><%=Trainname%></td>
                                    <td><b>Date          :</b></td>
                                    <td><%=Dat%></td>
                                </tr>
                                <tr>
                                    <td><b>From         :</b></td>
                                    <td><%=From%></div></td>
                                    <td><b>To        :</b></td>
                                    <td><%=To%></td>
                                </tr>
                                <tr>
                                    <td><b>Class     :</b></td>
                                    <td><%=tclass%></td>
                                    <td><b>Distance         :</b></div></td>
                                    <td><%=Distance%></td>
                                    
                                </tr>
                                <tr>
                                    <td><b>Fare         :</b></td>
                                    <td><%=Fare%></td>
                                    <td><b>Departure Time:</b></td>
                                    <td><%=Deptime%></td>
                                </tr>                          
                                <tr>
                                    <td><b>Passenger Details:</b></td>
                                    </tr>
                                 <tr> </tr>
                                <tr> 
                                    <td><b>Name :</b></td>
                                    <td><%=Name%></td>
                                    <td><b>Age  :</b></td>
                                    <td><%=Age%></td>
                                    <td><b>Sex  :</b></td>
                                    <td><%=Sex%></td>
                                </tr>
                                <tr>  </tr>
                                <tr>
                                    <td><b>Reservation Details:</b></td>
                                </tr>
                                <tr> </tr>
                                <tr> 
                                    <td><b>Coach No :</b></td>
                                    <td><%=Coachno%></td>
                                    <td><b>Seat No  :</b></td>
                                    <td><%=Seatno%></td>
                                    <td><b>Status  :</b></td>
                                    <td><%=Status%></td>
                                </tr>
                                 <tr>  </tr>
                                <tr>
                                    <td><b>Service Charges:</b></td>
                                </tr>
                                <tr>  </tr>
                                <tr><td><b>IRCTC Service Charge :</b> Rs 20.00</td></tr>
                            </table> <br>
                            <table style="font-size:10pt" width=600>
                                
                                <tr bgcolor="#ffffff">
                                <td colspan="6"><img src="Images/railtour.jpg"/></td>
                                </tr>
                               
                                    <td class="boldEleven" align="left"><b> * The accomodation booked is not transferable and is valid only against the above noted photo identity card.</b> </td>
                                </tr>
                                <tr>
                                    <td class="boldEleven" align="left"><b> * On demand from ticket checking staff the passenger must provide the photo identity card along with the  'Electronic Reservation Slip' print out. In case the passenger does not carry the electronic reservation Slip a charge of Rs 50 shall be recovered by the ticket checking staff and an excess fare ticket will be issued in lieu of that </b></td>
                                </tr>
                                <tr>
                                    <td class="boldEleven" align="left"><b> * E-ticket cancellations are permitted by the site to the user. In case e-ticket is booked through an agent please contact the respective agents for cancellations. To cancel the ticket click here <a href="cancel.jsp">CANCEL</a>.</b></td>
                                </tr>
                                 <tr>
                                    <td class="boldEleven" align="left"><b> * Just dial 139 from your landline, mobile and CDMA phones for Railway Enquiries. </b></td>
                                </tr>
                                
                            </table>    
<%}else{out.println("PNR no Entered is not correct!! Please enter again.");}%>           
<br />		</td>
		</tr>
	</table>	</td>
        <br>
         
	<td width="4">&nbsp;</td>
	<td width="164">&nbsp;</td>
	</tr>
        <tr bgcolor="#ffffff">
	<td colspan="6"><img src="Images/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>
        <tr>
	<td colspan="6">&nbsp;</td>
	</tr>
        <tr bgcolor="#003399">
	<td colspan="6"><img src="Images/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>
        <tr>
	<td colspan="6"><img src="Images/mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
	</tr>
	<tr bgcolor="#003399">
	<td colspan="6"><img src="Images/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>
	<tr>
	<td width="134">&nbsp;</td>
	<td width="188">&nbsp;</td>
	<td width="51">&nbsp;</td>
	<td width="454">&nbsp;</td>
	<td width="4">&nbsp;</td>
	<td width="164">&nbsp;</td>
	</tr>
</table>
</body>
</html>
     