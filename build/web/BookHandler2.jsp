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
		<td class="pageHeader"></td>
		</tr>

		<tr>
                    <td class="bodyText" style="font-size:10pt"><p>  You have successfully booked your ticket !!
                            <%@ page language="java" import="java.sql.*, java.io.*, java.lang.*,java.util.*,java.math.*" %>
                            <% String bookinfo=request.getParameter("info");
                               String args[]=bookinfo.split(",");
                               int Trainno = Integer.parseInt(args[0]);
                               String Trainname= args[1];
                               java.sql.Date Dat = java.sql.Date.valueOf(args[2]);
                               String tclass = args[3];
                               String From=args[4];
                               String To=args[5];
                               int Distance =Integer.parseInt(args[6]);
                               int Fare = Integer.parseInt(args[7]);
                               int seats = Integer.parseInt(args[8]);
                               String pname=request.getParameter("pname"); 
                               int age =Integer.parseInt(request.getParameter("age"));
                               String sex=request.getParameter("sex");
                               int coach=0,seatno=0;
                               String coachno = new String();
                               double range = 10000000000.0;
                               Random ran = new Random();
                               int PNRno=0;String PNR;
                               int flag=0,flag2=0; 
                               
       try {Class.forName("oracle.jdbc.driver.OracleDriver"); // Oracle Driver
         } catch (java.lang.ClassNotFoundException e) {System.out.println("ClassNotFoundException: " + e.getMessage());}   
    Connection con;
    PreparedStatement ps;PreparedStatement ps2;
    ResultSet  rs,rs2;
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
    String insertStmt2="SELECT PNRno,COACH,SEATNO FROM BOOKING WHERE STATUS = ? AND CLASS = ? AND COACH NOT LIKE ?";
     ps2=con.prepareStatement(insertStmt2);
     ps2.setString(1,"CANCEL");
     ps2.setString(2,tclass);
     ps2.setString(3,"WL%");
     rs2=ps2.executeQuery();
    if(rs2.next())
   { PNR = rs2.getString(1);
     coachno=rs2.getString(2);
     seatno=rs2.getInt(3);
     insertStmt2 = "DELETE FROM BOOKING WHERE PNRno = ?";
     ps2=con.prepareStatement(insertStmt2);
     ps2.setString(1,PNR);
     rs2 = ps2.executeQuery();
   if(rs2.next()){flag2=1;}
    } 
    String insertStmt= "INSERT INTO BOOKING VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
   do{ 
     ps = con.prepareStatement(insertStmt);
     PNRno = (int)((ran.nextDouble())*range);
     ps.setString(1,String.valueOf(PNRno)); 
     ps.setInt(2,Trainno);
     ps.setString(3,Trainname);
     ps.setDate(4,Dat);
     ps.setString(5,tclass);
     ps.setString(6,From);
     ps.setString(7,To); 
     ps.setInt(8,Distance);
     ps.setInt(9,Fare); 
     ps.setString(10,pname);
     ps.setInt(11,age);
     ps.setString(12,sex);
     if(seats > 0 && flag2==0)
    {
     coach = (seats-1)/60 + 1;    
     seatno = ((seats-1) % 60) + 1;
     ps.setInt(16,0);
    if(tclass.equals("SL"))
    {coachno = String.valueOf("S" + coach);}
    else if(tclass.equals("2A"))
    {coachno = String.valueOf("A" + coach);}
    else if(tclass.equals("3A"))
    {coachno = String.valueOf("B" + coach);}
    else
    {coachno=String.valueOf("AC" + coach);}    
     ps.setString(13,coachno);
     ps.setInt(14,seatno);
     ps.setString(15,"CONFIRM");
    }     
     else 
     if(flag2 == 0)
    {
      ps.setInt(16,(Math.abs(seats)+1));
      ps.setString(13,"WL" + String.valueOf((Math.abs(seats)+1)));
      ps.setInt(14,0);
      ps.setString(15,"WAITING");
         }  
     else
    {
     ps.setString(13,coachno);
     ps.setInt(14,seatno);
     ps.setString(15,"CONFIRM");
     ps.setInt(16,0);
    }     
    try{
     flag=0;
     rs = ps.executeQuery();     
        }catch(SQLException e){ flag=1;}
    }while(flag==1);    
        if(tclass.equals("SL")){insertStmt = "UPDATE SEATS SET \"SL\" = ? WHERE dat = ? AND trainno = ?";}
                            else if(tclass.equals("1A")){insertStmt = "UPDATE SEATS SET \"1A\" = ? WHERE dat = ? AND trainno = ?";}
                            else if(tclass.equals("2A")){insertStmt = "UPDATE SEATS SET \"2A\" = ? WHERE dat = ? AND trainno = ?";}
                            else if(tclass.equals("3A")){insertStmt = "UPDATE SEATS SET \"3A\" = ? WHERE dat = ? AND trainno = ?";}
                            else{insertStmt = "UPDATE SEATS SET \"1C\" = ? WHERE dat = ? AND trainno = ?";}
      seats--;
      ps = con.prepareStatement(insertStmt);
      ps.setInt(1,seats);
      ps.setDate(2,Dat);
      ps.setInt(3,Trainno);
      rs=ps.executeQuery();
      rs.close();
      ps.close();   
      con.close();                         
                              %>
   <form action="PNRHandler.jsp" method="get">
   
<input type="hidden" name="PNR" value="<%=PNRno%>" size="20" />               
<br>
<input type="submit" name="Get Status" value="Get e-ticket">
</form>                           
                      </p>

                        
                     <br />		</td>
                <tr>
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