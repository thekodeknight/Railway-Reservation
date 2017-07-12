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
	<td width="454" valign="top"><br />&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="0" width="440">
		<tr>
		<td class="pageHeader">Train List</td>
		</tr>

		<tr>
                    <td class="bodyText" style="font-size:10pt"><p>   You Queried for Trains between
                            <%@ page language="java" import="java.sql.*, java.io.*, java.lang.*" %>
                            <% String Source=request.getParameter("stn1");
                               String Dest=request.getParameter("stn2");%>
                                <%=Source%> and <%=Dest%> </p>
                                           
                             <% try {Class.forName("oracle.jdbc.driver.OracleDriver"); // Oracle Driver
         } catch (java.lang.ClassNotFoundException e) {
            System.out.println("ClassNotFoundException: " + e.getMessage());
}   
    int count=1,trainno,distance1,distance2,flag=0;                           
    Connection con;
    PreparedStatement ps;
    ResultSet rs;ResultSet rs2;
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","govind","270289gk");
    String insertStmt= "SELECT trainno,distance FROM STATION,STOP WHERE STATION.stncode= ? AND STATION.stncode=STOP.stncode";
     ps = con.prepareStatement(insertStmt);
     ps.setString(1,Source);
     try{
     rs = ps.executeQuery();
     if(rs.next())
     {     
   do
    {trainno=rs.getInt(1);
     distance1=rs.getInt(2);
     insertStmt="SELECT distance FROM STOP,STATION WHERE trainno = ? AND Station.stncode=Stop.stncode AND Station.stncode= ? ";
     ps=con.prepareStatement(insertStmt);
     ps.setInt(1,trainno); 
     ps.setString(2,Dest);
     rs2=ps.executeQuery();
     if(rs2.next())
     {
     distance2=rs2.getInt(1);
                        %>
                             <form action="TraininfoHandler.jsp" method="get"><%
                        if(distance2>distance1)
                        { 
                        if(flag==0)
                        out.println("<table border=\"6\" style=\"font-size:11pt\"><tr><th>&nbsp;&nbsp;&nbsp;&nbsp;</th><th>Si no.</th><th>Train no</th><th>Train name</th><th>Type</th><th>SUN</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th></tr>");
                        insertStmt="SELECT * FROM TRAINS,SCHEDULE WHERE TRAINS.trainno=SCHEDULE.trainno AND TRAINS.trainno= ? ";   
                        ps=con.prepareStatement(insertStmt);
                        ps.setInt(1,trainno);
                        rs2=ps.executeQuery();rs2.next();
                        out.println("<tr><td>");
                        %><input type="radio" name="Trains" value="<%=rs2.getInt(1)+","+Source+","+Dest%>"/><%out.println("</td>");
                          out.println("<td>" + count + "</td>");count++;
                            out.println("<td>" + rs2.getInt(1) + "</td>");
                            out.println("<td>" + rs2.getString(2) + "</td>" + "</td>");
                            out.println("<td>" + rs2.getString(3) + "</td>" + "</td>");
                            if((rs2.getString(9)).equals("Y")){out.println("<td style=\"color:green\">" + rs2.getString(9) + "</td>" + "</td>");}else{out.println("<td style=\"color:red\">" + rs2.getString(9) + "</td>" + "</td>");}
                            if((rs2.getString(10)).equals("Y")){out.println("<td style=\"color:green\">" + rs2.getString(10) + "</td>" + "</td>");}else{out.println("<td style=\"color:red\">" + rs2.getString(10) + "</td>" + "</td>");}
                            if((rs2.getString(11)).equals("Y")){out.println("<td style=\"color:green\">" + rs2.getString(11) + "</td>" + "</td>");}else{out.println("<td style=\"color:red\">" + rs2.getString(11) + "</td>" + "</td>");}
                            if((rs2.getString(12)).equals("Y")){out.println("<td style=\"color:green\">" + rs2.getString(12) + "</td>" + "</td>");}else{out.println("<td style=\"color:red\">" + rs2.getString(12) + "</td>" + "</td>");}
                            if((rs2.getString(13)).equals("Y")){out.println("<td style=\"color:green\">" + rs2.getString(13) + "</td>" + "</td>");}else{out.println("<td style=\"color:red\">" + rs2.getString(13) + "</td>" + "</td>");}
                            if((rs2.getString(14)).equals("Y")){out.println("<td style=\"color:green\">" + rs2.getString(14) + "</td>" + "</td>");}else{out.println("<td style=\"color:red\">" + rs2.getString(14) + "</td>" + "</td>");}
                            if((rs2.getString(15)).equals("Y")){out.println("<td style=\"color:green\">" + rs2.getString(15) + "</td>" + "</td>\n</tr>");}else{out.println("<td style=\"color:red\">" + rs2.getString(15) + "</td>" + "</td>\n</tr>");}
                           
                            flag=1; }}
                            }while(rs.next());
                            out.println("</table>");
                            }
                            else
                            {out.println("There are no trains.");}
                            rs.close();
                            ps.close();   
                            con.close();
                            }catch(SQLException e){out.println("<b>No Trains Found !!</b>");} 
                            %><br>
    <input type="submit" value="Get Fare" name="Submit" />
    <input type="submit" value="Get Availability" name="Submit"/>
    <input type="submit" value="Get Route" name="Submit"/>
    </form>
          <br /></td>
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
     

