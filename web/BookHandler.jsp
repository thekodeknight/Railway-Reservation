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
	<table border="0" cellspacing="0" cellpadding="0" width="700">
		<tr>
		<td class="pageHeader">Reservation</td>
		</tr>

		<tr>
                    <td  style="font-size:10pt" width=700>  
                            <%@ page language="java" import="java.sql.*, java.io.*, java.lang.*" %>
                            <%
                               String returnvalue=request.getParameter("Trains");
                               String args[]=returnvalue.split(",");
                               int Train=Integer.parseInt(args[0]);
                               String Trainname=args[1];
                               String Source=args[2];
                               String Dest=args[3];
                               Date Dat=Date.valueOf(args[4]); 
                               int Distance=Integer.parseInt(args[5]);                             
                               String tclass=args[6];
                               int Fare;
                            if(tclass.equals("SL")){Fare=(int)(0.4 * Distance);}
                            else if(tclass.equals("1A")){Fare=(int)(2.1 * Distance);}
                            else if(tclass.equals("2A")){Fare=(int)(1.4 * Distance);}
                            else if(tclass.equals("3A")){Fare=(int)(0.9 * Distance);}
                            else{Fare=(int)(2.2 * Distance);} 
                            %>
                            <br>
                            <table style="font-size:10pt" width=600>
                                <tr>
                                    <td><b>Train no     :</b></td>
                                    <td><%=Train%></td>
                                    <td><b>Train name   :</b></td>
                                    <td><%=Trainname%></td>
                                </tr>
                                <tr>
                                    <td><b>From         :</b></td>
                                    <td><%=Source%></td>
                                    <td><b>To           :</b></td>
                                    <td><%=Dest%></td>
                                </tr>
                                <tr>
                                    <td><b>Date         :</b></td>
                                    <td><%=Dat%></div></td>
                                    <td><b>Class        :</b></td>
                                    <td><%=tclass%></td>
                                </tr>
                                <tr>
                                    <td><b>Distance     :</b></td>
                                    <td><%=Distance%></div></td>
                                    <td><b>Fare         :</b></td>
                                    <td><%=Fare%></td>
                                </tr>
                            </table> 
                             <% try {Class.forName("oracle.jdbc.driver.OracleDriver"); // Oracle Driver
                            } catch (java.lang.ClassNotFoundException e) {
                            System.out.println("ClassNotFoundException: " + e.getMessage());
                            }                           
                            Connection con;
                            PreparedStatement ps;
                            ResultSet rs;
                            int seats=0;
                            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
                            String insertStmt;
                            if(tclass.equals("SL")){insertStmt="SELECT \"SL\" FROM SEATS WHERE trainno= ? AND dat = ?";}
                            else if(tclass.equals("1A")){insertStmt="SELECT \"1A\" FROM SEATS WHERE trainno= ? AND dat = ?";}
                            else if(tclass.equals("2A")){insertStmt="SELECT \"2A\" FROM SEATS WHERE trainno= ? AND dat = ?";}
                            else if(tclass.equals("3A")){insertStmt="SELECT \"3A\" FROM SEATS WHERE trainno= ? AND dat = ?";}
                            else{insertStmt="SELECT \"1C\" FROM SEATS WHERE trainno= ? AND dat = ?";}                          
                            ps = con.prepareStatement(insertStmt);
                            ps.setInt(1,Train);
                            ps.setDate(2,Dat);
                            rs = ps.executeQuery();
                            if(rs.next())
                            {
                                seats=rs.getInt(1);           
                            }                         
                        rs.close();
                        ps.close();   
                        con.close();
                      %>
                            <br>   
                            <b> Enter Passenger details : </b>
                            <form action="BookHandler2.jsp">
                                Name : <input type="text" name="pname" value="" size="30" />
                                Age  : <input type="text" name="age" value="" size="1" />
                                Sex  : <select name="sex">
                                    <option value="M">Male</option>
                                    <option value="F">Female</option>
                                </select>                     
                                <input type=hidden name="info" value="<%=Train + "," + Trainname + "," + Dat + "," + tclass + "," + Source + "," + Dest + "," + Distance + "," + Fare + "," + seats %>"/>
                    
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
<input type="submit" value="Book Ticket" >
</form>
</body>
</html>
     

