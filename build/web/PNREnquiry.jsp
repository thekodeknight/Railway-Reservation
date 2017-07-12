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
		<td class="pageHeader">Passenger Current Status</td>
		</tr>

		<tr>
		<td class="bodyText"><p>Please enter 10 digit PNR Number, printed on the top left corner of your ticket.

</p>
<%@ page language="java" import="java.sql.*, java.io.*, java.lang.*" %>

<form action="PNRHandler.jsp" method="get">
   
<input type="text" name="PNR" value="" size="20" />               
<br>
<input type="submit" name="Get Status" value="Get Status">
</form>


		 <br />		</td>
		</tr>
	</table>	</td>
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
     
