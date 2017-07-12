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
	<table border="0" cellspacing="0" cellpadding="0" width="300">
		
	</table>	</td>
	<td width="51" valign="top"><img src="/Images/mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="454" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="0" width="440">
		<tr>
		<td class="pageHeader">Fare Enquiry</td>
		</tr>

		<tr>
                    <td class="bodyText" style="font-size:10pt"><p>   You Queried for the following Train 
                            <%@ page language="java" import="java.sql.*, java.io.*, java.lang.*" %>
                            <% String Source=request.getParameter("stn1");
                               String Dest=request.getParameter("stn2");
                               String Train=request.getParameter("Trainlist");
                            %>
                        </p>
                        
                            <% try {Class.forName("oracle.jdbc.driver.OracleDriver"); // Oracle Driver
                            } catch (java.lang.ClassNotFoundException e) {
                            System.out.println("ClassNotFoundException: " + e.getMessage());
                            }   
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
                            
                            %> 
                            <table border="4" style="font-size:11pt" ><tr><th>Train no</th><th>Train name</th><th>Source</th><th>Dest</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th><th>SUN</th>                    
                            <%
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
                            out.println("<td>" + rs.getString(15) + "</td>" + "</td>\n</tr>"); 
                            %>
                        </table><br>
                        <TABLE  BORDER = "4" ALIGN=center font size:1>                        
                            <TR>
                                <TH ALIGN = Left>Train Type</TH>
                                <TD ALIGN = Left><%=rs.getString(3)%></TD>
                                <TH ALIGN = Left>Distance (kms)</TH>
                                <TD ALIGN = Left><%=(distance2-distance1)%></TD>
                            </TR>
                        </TABLE>
<BR>
<div align=center>All Units are in Rupees (Rs)</div>
<TABLE  BORDER = "4" ALIGN=center font size:1>
<TR>
<TH ALIGN = Center>Class</TH>
<TH ALIGN = Center>Base Fare</TH>
</TR>
<TR>
<TH ALIGN = Left>Sleeper Class</TH>

<TD ALIGN = Right><%=(int)((distance2-distance1)*(0.4))%></TD>
</TR>
<TR>
<TH ALIGN = Left>Third AC</TH>
<TD ALIGN = Right><%=(int)((distance2-distance1)*(0.9))%></TD>
</TR>
<TR>
<TH ALIGN = Left>Second AC</TH>
<TD ALIGN = Right><%=(int)((distance2-distance1)*(1.4))%></TD>
</TR>
<TR>
<TH ALIGN = Left>First AC</TH>

<TD ALIGN = Right><%=(int)((distance2-distance1)*(2.1))%></TD>
</TR>
</TABLE>

<%
                        }else
                            {out.println("The Train does not go from "+Source+" to "+Dest);}
                        }else{out.println("The Train does not go from "+Source+" to "+Dest);}
                        }else{out.println("The Train does not go from "+Source+" to "+Dest);}
                           
                        rs.close();
                        ps.close();   
                        con.close();
                        }catch(SQLException e){out.println("<b>No Trains Found !!</b>");} 
                        %>
                        
                     		</td>
                <tr>
	</td>
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
     

