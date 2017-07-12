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
	<div align="center"><span class="tagline">| Government Of India |</span></td>
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
		<td class="pageHeader">Registration Form :</td>
		</tr>

		<tr>
		<td class="bodyText"><p>Please fill in the required details and click Submit

</p>
<table width="600px" cellspacing="1" cellpadding="0" border="0" bordercolor="#000" align="center">
  <tr>
    <td class="boldThirteen" align="center" colspan="4"></td>
  </tr>
  <!-- //Renu Check USER AVAILABILITY//STARTS -->
  <tr>
    <td colspan="4" align="left" class="redcol"><div id="result"> &nbsp; </div></td>
  </tr>
  <!-- //Renu Check USER AVAILABILITY//ends -->
  <tr>
      <form action="RegHandler.jsp" method="get">
    <td class="boldEleven" width="32%"> Username <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" class="redcol"><input type="text" name="username" maxlength="10" size="13" value=""/>
      &nbsp; <b>(Max 10 Chars)</b>
    </td>
  </tr>
  <tr>
    <td class="boldEleven" width="32%"> Password <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" width="51%"><input type="password" name="password" maxlength="10" size="13" value="" class="formText135" />    </td>
  </tr>
  <tr>
    <td class="boldEleven" width="32%"> Confirm Password <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" width="51%"><input type="password" name="confirmpassword" maxlength="10" size="13" />    </td>
  </tr>
  <tr>
    <td colspan="2" class="boldEleven" >&nbsp;</td>
  </tr>
  
  <tr>
    <td class="boldEleven" > First name <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" ><input type="text" name="firstname" maxlength="30" size="30" value="" class="formText135" />    </td>
  </tr>
  <tr>
    <td class="boldEleven" > Last name <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" width="51%"><input type="text" name="lastname" maxlength="30" size="30" value="" class="formText135" />    </td>
  </tr>
  
  <tr>
    <td class="boldEleven" > Email ID <font class="redcol" align="absmiddle">*</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td align="left" width="51%"><input type="text" name="email" maxlength="45" size="30" value="" class="formText135" />    </td>
  </tr>
  <tr>
    <td>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
  </tr>
  <tr>
    <td valign="top" class="boldEleven" > Address <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" width="51%"><input type="text" name="resAddress1" maxlength="30" size="35" value="" onchange="return copyrestooff()" class="formText135" />
        <br />
        <input type="text" name="resAddress2" maxlength="30" size="35" value="" onchange="return copyrestooff()" class="formText135" />
        <span class="Redcol"><font color="red">(optional)</font></span> <br />
        <input type="text" name="resAddress3" maxlength="30" size="35" value="" onchange="return copyrestooff()" class="formText135" />
        <span class="Redcol"><font color="red">(optional)</font></span> </td>
  </tr>
  <tr>
    <td class="boldEleven" > City <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" width="51%"><select name="rescity" onchange="return copyrestooff()" class="formText0">
      <option value="" selected="selected">-- Select One --</option>
      <option value="Abohar">Abohar</option>
      <option value="Abu Road">Abu Road</option>
      <option value="Anantnag">Anantnag</option>
      <option value="Agartala">Agartala</option>
      <option value="Agra">Agra</option>
      <option value="Aizawl">Aizawl</option>
      <option value="Ajmer">Ajmer</option>
      <option value="Akola">Akola</option>
      <option value="Allahabad">Allahabad</option>
      <option value="Aligarh">Aligarh</option>
      <option value="Almora">Almora</option>
      <option value="Aluva">Aluva</option>
      <option value="Alapuzha">Alapuzha</option>
      <option value="Ahmedabad">Ahmedabad</option>
      <option value="Amritsar">Amritsar</option>
      <option value="Ambala">Ambala</option>
      <option value="Anand">Anand</option>
      <option value="Asansol">Asansol</option>
      <option value="Aurangabad">Aurangabad</option>
      <option value="Baddi">Baddi</option>
      <option value="Bahadurgarh">Bahadurgarh</option>
      <option value="Ballabgarh">Ballabgarh</option>
      <option value="Bangalore">Bangalore</option>
      <option value="Bareilly">Bareilly</option>
      <option value="Belgaum">Belgaum</option>
      <option value="Bhagalpur">Bhagalpur</option>
      <option value="Bharuch">Bharuch</option>
      <option value="Bhatinda">Bhatinda</option>
      <option value="Bhavnagar">Bhavnagar</option>
      <option value="Bhilai">Bhilai</option>
      <option value="Bhopal">Bhopal</option>
      <option value="Bhubaneshwar">Bhubaneshwar</option>
      <option value="Bhuj">Bhuj</option>
      <option value="Bijbehara">Bijbehara</option>
      <option value="Bijnore">Bijnore</option>
      <option value="Bilaspur">Bilaspur</option>
      <option value="Bikaner">Bikaner</option>
      <option value="Bokaro">Bokaro</option>
      <option value="Budayun">Budayun</option>
      <option value="Chandigarh">Chandigarh</option>
      <option value="Chandausi">Chandausi</option>
      <option value="Chengannur">Chengannur</option>
      <option value="Chennai">Chennai</option>
      <option value="Coimbatore">Coimbatore</option>
      <option value="Cuddapah">Cuddapah</option>
      <option value="Cuttack">Cuttack</option>
      <option value="Dadri">Dadri</option>
      <option value="Daman and Diu">Daman and Diu</option>
      <option value="Darjeeling">Darjeeling</option>
      <option value="Davangere">Davangere</option>
      <option value="Dehradun">Dehradun</option>
      <option value="Dhanbad">Dhanbad</option>
      <option value="Dharwad">Dharwad</option>
      <option value="Dibrugarh">Dibrugarh</option>
      <option value="Dimapur">Dimapur</option>
      <option value="Dindugal">Dindugal</option>
      <option value="Durg">Durg</option>
      <option value="Durgapur">Durgapur</option>
      <option value="Erode">Erode</option>
      <option value="Faridabad">Faridabad</option>
      <option value="Ferozpur">Ferozpur</option>
      <option value="Firozabad">Firozabad</option>
      <option value="Gangtok">Gangtok</option>
      <option value="Ghandinagar">Ghandinagar</option>
      <option value="Ghaziabad">Ghaziabad</option>
      <option value="Gwalior">Gwalior</option>
      <option value="Gorakhpur">Gorakhpur</option>
      <option value="Gulbarga">Gulbarga</option>
      <option value="Guna">Guna</option>
      <option value="Guntur">Guntur</option>
      <option value="Gurgaon">Gurgaon</option>
      <option value="Guwahati">Guwahati</option>
      <option value="Haldwani">Haldwani</option>
      <option value="Haldia">Haldia</option>
      <option value="Hapur">Hapur</option>
      <option value="Haridwar">Haridwar</option>
      <option value="Hathras">Hathras</option>
      <option value="Hazira">Hazira</option>
      <option value="Hissar">Hissar</option>
      <option value="Hooghly">Hooghly</option>
      <option value="Hoshiarpur">Hoshiarpur</option>
      <option value="Howrah">Howrah</option>
      <option value="Hubli">Hubli</option>
      <option value="Hyderabad">Hyderabad</option>
      <option value="Imphal">Imphal</option>
      <option value="Indore">Indore</option>
      <option value="Jabalpur">Jabalpur</option>
      <option value="Jaipur">Jaipur</option>
      <option value="Jalandhar">Jalandhar</option>
      <option value="Jalgaon">Jalgaon</option>
      <option value="Jammu">Jammu</option>
      <option value="Jamnagar">Jamnagar</option>
      <option value="Jamshedpur">Jamshedpur</option>
      <option value="Jhansi">Jhansi</option>
      <option value="Jodhpur">Jodhpur</option>
      <option value="Jorhat">Jorhat</option>
      <option value="Kakinada">Kakinada</option>
      <option value="Kandla">Kandla</option>
      <option value="Kannur">Kannur</option>
      <option value="Kanpur">Kanpur</option>
      <option value="Karnal">Karnal</option>
      <option value="Katni">Katni</option>
      <option value="Kharagpur">Kharagpur</option>
      <option value="Kohima">Kohima</option>
      <option value="Kolhapur">Kolhapur</option>
      <option value="Kolkata">Kolkata</option>
      <option value="Kollam">Kollam</option>
      <option value="Kochi">Kochi</option>
      <option value="Kottayam">Kottayam</option>
      <option value="Kozhikode">Kozhikode</option>
      <option value="Kota">Kota</option>
      <option value="Kodaikanal">Kodaikanal</option>
      <option value="Kovilpatti">Kovilpatti</option>
      <option value="Kurnool">Kurnool</option>
      <option value="Lucknow">Lucknow</option>
      <option value="Ludhiana">Ludhiana</option>
      <option value="Madurai">Madurai</option>
      <option value="Mangalore">Mangalore</option>
      <option value="Manipal">Manipal</option>
      <option value="Mapusa">Mapusa</option>
      <option value="Margao">Margao</option>
      <option value="Mathura">Mathura</option>
      <option value="Meerut">Meerut</option>
      <option value="Mehsana">Mehsana</option>
      <option value="Mettupalyam">Mettupalyam</option>
      <option value="Mirzapur">Mirzapur</option>
      <option value="Moradabad">Moradabad</option>
      <option value="Mumbai">Mumbai</option>
      <option value="Muzaffarnagar">Muzaffarnagar</option>
      <option value="Muzaffarpur">Muzaffarpur</option>
      <option value="Mysore">Mysore</option>
      <option value="Nadiad">Nadiad</option>
      <option value="Nagercoil">Nagercoil</option>
      <option value="Nagpur">Nagpur</option>
      <option value="Nainital">Nainital</option>
      <option value="Nashik">Nashik</option>
      <option value="Navsari">Navsari</option>
      <option value="Nazira">Nazira</option>
      <option value="Nellore">Nellore</option>
      <option value="Noida">Noida</option>
      <option value="New Delhi">New Delhi</option>
      <option value="Nizamabad">Nizamabad</option>
      <option value="Ooty">Ooty</option>
      <option value="Patiala">Patiala</option>
      <option value="Palakkad">Palakkad</option>
      <option value="Panchkula">Panchkula</option>
      <option value="Panipat">Panipat</option>
      <option value="Panjim">Panjim</option>
      <option value="Pathankot">Pathankot</option>
      <option value="Patiala">Patiala</option>
      <option value="Patna">Patna</option>
      <option value="Ponda">Ponda</option>
      <option value="Pondicherry">Pondicherry</option>
      <option value="Port Blair">Port Blair</option>
      <option value="Pune">Pune</option>
      <option value="Puri">Puri</option>
      <option value="Raigarh">Raigarh</option>
      <option value="Raipur">Raipur</option>
      <option value="Rajkot">Rajkot</option>
      <option value="Rajamundry">Rajamundry</option>
      <option value="Rajapalayam">Rajapalayam</option>
      <option value="Ranchi">Ranchi</option>
      <option value="Raniganj">Raniganj</option>
      <option value="Ranipet">Ranipet</option>
      <option value="Ratlam">Ratlam</option>
      <option value="Rewa">Rewa</option>
      <option value="Rishikesh">Rishikesh</option>
      <option value="Roorkee">Roorkee</option>
      <option value="Rourkela">Rourkela</option>
      <option value="Salem">Salem</option>
      <option value="Sangor">Sangor</option>
      <option value="Saranpur">Saranpur</option>
      <option value="Satna">Satna</option>
      <option value="Secunderabad">Secunderabad</option>
      <option value="Shahjahanpur">Shahjahanpur</option>
      <option value="Shillong">Shillong</option>
      <option value="Shimla">Shimla</option>
      <option value="Shimoga">Shimoga</option>
      <option value="Sibsagar">Sibsagar</option>
      <option value="Silchar">Silchar</option>
      <option value="Siliguri">Siliguri</option>
      <option value="Silvasa">Silvasa</option>
      <option value="Sivakasi">Sivakasi</option>
      <option value="Srinagar">Srinagar</option>
      <option value="Surat">Surat</option>
      <option value="Thane">Thane</option>
      <option value="Thanjavur">Thanjavur</option>
      <option value="Thiruvananthapuram">Thiruvananthapuram</option>
      <option value="Trissur">Trissur</option>
      <option value="Tiruchchirapalli">Tiruchchirapalli</option>
      <option value="Tirunelveli">Tirunelveli</option>
      <option value="Tirupati">Tirupati</option>
      <option value="Tiruppur">Tiruppur</option>
      <option value="Tiruvalla">Tiruvalla</option>
      <option value="Tumkur">Tumkur</option>
      <option value="Tuticorin">Tuticorin</option>
      <option value="Udaipur">Udaipur</option>
      <option value="Udupi">Udupi</option>
      <option value="Ujjain">Ujjain</option>
      <option value="Vijayawada">Vijayawada</option>
      <option value="Vishakapatnam">Vishakapatnam</option>
      <option value="Vapi">Vapi</option>
      <option value="Vasco">Vasco</option>
      <option value="Vadodara">Vadodara</option>
      <option value="Varanasi">Varanasi</option>
      <option value="Virudhunagar">Virudhunagar</option>
      <option value="Vrindavan">Vrindavan</option>
      <option value="Warangal">Warangal</option>
      <option value="Yamunanagar">Yamunanagar</option>
    </select>
        <br />
      <font class="boldEleven" >If not in the list, Please specify(in others)</font></br>    </td>
    <td align="left" width="17%" class="boldEleven"><span class="name">(other)</span>
        <input type="text" name="resOtherCity" maxlength="18" size="16" value="" onchange="return copyrestooff()" class="formText135" />    </td>
  </tr>
  <tr>
    <td class="boldEleven" > State <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" width="51%"><select name="resstate" onchange="return copyrestooff()" class="formText0">
      <option value="" selected="selected">-- Select One --</option>
      <option value="Arunachal Pradesh">Arunachal Pradesh</option>
      <option value="Assam">Assam</option>
      <option value="Andhra Pradesh">Andhra Pradesh</option>
      <option value="Andaman &amp; Nicobar">Andaman &amp; Nicobar</option>
      <option value="Bihar">Bihar</option>
      <option value="Chandigarh">Chandigarh</option>
      <option value="Chhatisgarh">Chhatisgarh</option>
      <option value="Delhi">Delhi</option>
      <option value="Daman &amp; Diu">Daman &amp; Diu</option>
      <option value="Nagar Haveli">Nagar Haveli</option>
      <option value="Gujarat">Gujarat</option>
      <option value="Goa">Goa</option>
      <option value="Himachal Pradesh">Himachal Pradesh</option>
      <option value="Haryana">Haryana</option>
      <option value="Jammu &amp; Kashmir">Jammu &amp; Kashmir</option>
      <option value="Jharkhand">Jharkhand</option>
      <option value="Karnataka">Karnataka</option>
      <option value="Kerala">Kerala</option>
      <option value="Lakshadweep">Lakshadweep</option>
      <option value="Manipur">Manipur</option>
      <option value="Mizoram">Mizoram</option>
      <option value="Meghalaya">Meghalaya</option>
      <option value="Madhya Pradesh">Madhya Pradesh</option>
      <option value="Maharashtra">Maharashtra</option>
      <option value="Nagaland">Nagaland</option>
      <option value="Orissa">Orissa</option>
      <option value="Punjab">Punjab</option>
      <option value="Pondicherry">Pondicherry</option>
      <option value="Rajasthan">Rajasthan</option>
      <option value="Sikkim">Sikkim</option>
      <option value="Tripura">Tripura</option>
      <option value="Tamil Nadu">Tamil Nadu</option>
      <option value="Uttaranchal">Uttaranchal</option>
      <option value="Uttar Pradesh">Uttar Pradesh</option>
      <option value="West Bengal">West Bengal</option>
    </select>
        <br />
      <font class="boldEleven" >If not in the list, Please specify(in others) </font></br>    </td>
    <td align="left" width="17%" class="boldEleven"><span class="name">(other)</span>
        <input type="text" name="resOtherState" maxlength="17" size="16" value="" onchange="return copyrestooff()" class="formText135" />    </td>
  </tr>
  <tr>
    <td class="boldEleven" > Pin/Zip <font class="redcol" align="absmiddle">*</font> </td>
    <td align="left" width="51%"><input type="text" name="pincode" maxlength="6" size="7" value="" onchange="return copyrestooff()" class="formText135" />    </td>
  </tr>
  <tr>
    
  </tr>
  <tr>
    <td class="boldEleven" > Phone / Mobile <font class="redcol" align="absmiddle">*</font> </td>
    <!--StrutsTic4_ban/10-mar/2004/Sharath/Mod Begins	-->
    <td align="left" width="51%"><input type="text" name="phone" maxlength="12" size="12" value="" onchange="return copyrestooff()" class="formText135" />    </td>
    <!--StrutsTic4_ban/10-mar/2004/Sharath/Mod Ends	-->
  </tr>
  <tr>
    <td colspan="2" class="boldEleven" ><table cellspacing="0" cellpadding="0" id="rt4" align="left" border="0">
      <tbody>
        <tr>
          <td align="left" class="boldEleven" >&nbsp;</td>
        </tr>
        <tr>
          <td class="boldEleven" align="left"> *<b>Issue of SBI Railway Credit Card depends upon the approval of your application by SBI Cards &amp; Payment Services Pvt Ltd. If you do apply for the SBI Railway Credit Card &amp; your application is approved, you will be charged a additional nominal fee over &amp; above the existing Shubh Yatra Membership Fees (Rs 500, exclusive of applicable taxes).</b>&nbsp;&nbsp; </td>
        </tr>
      </tbody>
    </table></td>
  </tr>
  <input type="hidden" name="mobileBookingOption" value="" />
  <!-- logic by biswadip  -->
  <!-- logic end by biswadip -->
  <!-- //CR098/SUNIL/01-MAR-2004/MOD ENDS -->
  <tr>
    <td height="40" colspan="4" align="right"><table cellspacing="0" cellpadding="0" border="0" align="right">
      <tr>
        <td><table cellspacing="0" cellpadding="0" border="0" 									align="center">
          <tr>
            <td valign="top">&nbsp;</td>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="Submit"/></td>
            <td valign="top">&nbsp;</td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
        <td align="left"><table cellspacing="0" cellpadding="0" border="0" 										align="center">
       </form>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

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